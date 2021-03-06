/*
版本信息:1.0
创建者	:XYU
功能描述:有效、新开、参与、持有一码通数据报表
加载类型:全量加载
源		 表：
	NSODATA.CSDC_INTG_UAP_SEC_ACCT -- CSDC_J0002_整合_统一账户平台证券账户表
	NSODATA.CSDC_INTG_SEC_ACCT -- CSDC_J0001_整合_证券账户表
	NSODATA.CSDC_H_SEC_TRAN -- CSDC_J1015_沪_证券过户表
	NSODATA.CSDC_S_SEC_TRAN -- CSDC_J2018_深_证券过户表
	NSODATA.CSDC_H_CRDT_ACCT_HLD -- CSDC_J1029_沪_信用账户持有表
	NSODATA.CSDC_INTG_SEC_QUOT -- CSDC_J0014_整合_证券行情表
	NSODATA.CSDC_H_NEGT_CLSF -- CSDC_J1040_沪_流通分类表
	NSODATA.CSDC_H_SHDR_HLD -- CSDC_J1027_沪_股东持有表
	NSODATA.CSDC_INTG_SEC_INFO -- CSDC_J0013_整合_证券信息表
	NSODATA.CSDC_H_CRDT_ACCT_RLTN -- CSDC_J1000_沪_信用账户关系表
	NSODATA.CSDC_S_STK_WRHS_BK_REQ_AGO_HIS -- CSDC_J2052_信息_深_股份库备份历史(权益分派前)

目	标	表:	nsSMSMart.SMS_QRY_2_VLD_OPEN_TRAD_HOLD_OAP_RPT	-- 有效、新开、参与、持有一码通数据报表
频		 度:D:日
创建日期:	2018-01-24
修改历史:
修改人	修改日期	修改内容
*/

DELETE FROM ${NSSMSMART}.SMS_QRY_2_VLD_OPEN_TRAD_HOLD_OAP_RPT WHERE STAT_DATE = '${TXDATE}';

.IF ERRORCODE <> 0 THEN .QUIT 12;

INSERT INTO ${NSSMSMART}.SMS_QRY_2_VLD_OPEN_TRAD_HOLD_OAP_RPT
SELECT
STAT_DATE
,SUM(VLD_OAP_CNT) AS VLD_OAP_CNT
,SUM(OPEN_OAP_CNT) AS OPEN_OAP_CNT
,SUM(TRAD_OAP_CNT) AS TRAD_OAP_CNT
,SUM(HOLD_OAP_CNT) AS HOLD_OAP_CNT
FROM
(
-- 有效一码通
SELECT
cast('${TXDATE}' as date format 'YYYYMMDD') as STAT_DATE
,cast(count(distinct a2.OAP_ACCT_NBR) as decimal(24,0)) as VLD_OAP_CNT
,cast(0 as decimal(24,0)) as OPEN_OAP_CNT
,cast(0 as decimal(24,0)) as TRAD_OAP_CNT
,cast(0 as decimal(24,0)) as HOLD_OAP_CNT
FROM
	(
		SELECT 
			sec_acct                     
		FROM 
			${NSOVIEW}.CSDC_INTG_SEC_ACCT
		WHERE
			s_date<=cast('${TXDATE}' as date format 'YYYYMMDD') AND e_date>cast('${TXDATE}' as date format 'YYYYMMDD')
			AND SEC_ACCT_SORT IN ('1')
			AND (sec_acct_sts='1' OR sec_acct_sts='4') 
			--AND mkt_type='0'
	) a1
	INNER JOIN
	(
		SELECT 
			OAP_ACCT_NBR,
			SEC_ACCT_CDE
		FROM 
			${NSOVIEW}.CSDC_INTG_UAP_SEC_ACCT
		WHERE 
			s_date<=cast('${TXDATE}' as date format 'YYYYMMDD') AND e_date>cast('${TXDATE}' as date format 'YYYYMMDD')
	)a2
	ON a1.sec_acct=a2.SEC_ACCT_CDE

UNION ALL

-- 新开一码通
SELECT 
cast('${TXDATE}' as date format 'YYYYMMDD') as STAT_DATE
,cast(0 as decimal(24,0)) as VLD_OAP_CNT
,cast(COUNT(DISTINCT OAP_ACCT_NBR) as decimal(24,0)) as OPEN_OAP_CNT
,cast(0 as decimal(24,0)) as TRAD_OAP_CNT
,cast(0 as decimal(24,0)) as HOLD_OAP_CNT
FROM 
(
		SELECT 
			OAP_ACCT_NBR,
			MIN(a.OPN_ACCT_DATE) AS open_date,
			MAX(a.CLS_ACCT_DATE) AS cnl_date
		FROM 
			${NSOVIEW}.CSDC_INTG_UAP_SEC_ACCT a
		WHERE 
			a.s_date <= cast('${TXDATE}' as date format 'YYYYMMDD') 
			AND a.e_date > cast('${TXDATE}' as date format 'YYYYMMDD')
			AND a.SEC_ACCT_SORT IN ('11', '21')
		GROUP BY 1
)t
WHERE 
	open_date = cast('${TXDATE}' as date format 'YYYYMMDD')

UNION ALL

-- 参与交易一码通
SELECT 
cast('${TXDATE}' as date format 'YYYYMMDD') as STAT_DATE
,cast(0 as decimal(24,0)) as VLD_OAP_CNT
,cast(0 as decimal(24,0)) as OPEN_OAP_CNT
,cast(COUNT(DISTINCT OAP_ACCT_NBR) as decimal(24,0)) as TRAD_OAP_CNT
,cast(0 as decimal(24,0)) as HOLD_OAP_CNT
FROM
	(
	SELECT 											
		a1.trad_date,
		'0' AS MKT_SORT,
		a1.SHDR_ACCT		
	FROM 
		${NSOVIEW}.CSDC_H_SEC_TRAN a1										 
		,${NSOVIEW}.CSDC_INTG_SEC_INFO c1											
	WHERE 
		c1.s_date <= cast('${TXDATE}' as date format 'YYYYMMDD') AND c1.e_date > cast('${TXDATE}' as date format 'YYYYMMDD')	        										
		AND SUBSTR(CAST(1000000+a1.SEC_CDE AS CHAR(7)),2) = c1.sec_cde											
		AND a1.cap_type = 'PT' AND a1.negt_type = '0'												
		AND a1.EQUT_TYPE NOT IN ('DF', 'DX', 'HL')												
		AND a1.SHDR_ACCT NOT IN ('B880859746','B880810718','B880969127','B880969135')											
		AND a1.TRANS_TYPE IN ('00A','001') 									
		AND a1.negt_type = '0'									
		AND a1.TRANS_VOL <> 0									
		AND a1.trad_date = cast('${TXDATE}' as date format 'YYYYMMDD')										
		AND c1.SEC_CTG = '11' AND c1.MKT_SORT='0'
	UNION ALL	
	SELECT 											
		a1.trad_date,
		'1' AS MKT_SORT	,
		a1.SHDR_ACCT	                  							
	FROM 
		${NSOVIEW}.CSDC_S_SEC_TRAN a1										
		,${NSOVIEW}.CSDC_INTG_SEC_INFO c1											
	WHERE 
		c1.s_date <= cast('${TXDATE}' as date format 'YYYYMMDD') AND c1.e_date > cast('${TXDATE}' as date format 'YYYYMMDD')										
		AND SUBSTR(CAST(1000000+a1.SEC_CDE AS CHAR(7)),2) = c1.sec_cde												
		AND c1.SEC_CTG = '11'										
		AND c1.MKT_SORT = '1'										
		AND a1.SHDR_ACCT <> '0088888889'										
		AND a1.trad_vol <> 0										
		AND a1.trad_date = cast('${TXDATE}' as date format 'YYYYMMDD')	
	) a		
	INNER JOIN ${NSOVIEW}.CSDC_INTG_UAP_SEC_ACCT b
	ON 
		a.SHDR_ACCT	= b.SEC_ACCT_CDE
		AND a.MKT_SORT = b.TRAD_PLAC
		AND b.s_date <= cast('${TXDATE}' as date format 'YYYYMMDD') 
		AND b.e_date > cast('${TXDATE}' as date format 'YYYYMMDD')		

UNION ALL
-- 持有一码通
SELECT
cast('${TXDATE}' as date format 'YYYYMMDD') as STAT_DATE
,cast(0 as decimal(24,0)) as VLD_OAP_CNT
,cast(0 as decimal(24,0)) as OPEN_OAP_CNT
,cast(0 as decimal(24,0)) as TRAD_OAP_CNT
,cast(COUNT(DISTINCT OAP_ACCT_NBR) as decimal(24,0)) as HOLD_OAP_CNT 
FROM
(
	SELECT 
	'0' AS mkt_sort
	,a1.SHDR_ACCT 
	FROM ${NSOVIEW}.CSDC_H_CRDT_ACCT_HLD a1 
	,${NSOVIEW}.CSDC_INTG_SEC_QUOT b1 
	,${NSOVIEW}.CSDC_INTG_SEC_INFO c1 
	,${NSOVIEW}.CSDC_H_NEGT_CLSF d1 
	WHERE 
	a1.s_date <= b1.TRAD_DATE 
	AND a1.e_date > b1.TRAD_DATE 
	AND d1.s_date <= b1.TRAD_DATE 
	AND d1.e_date > b1.TRAD_DATE 
	AND C1.s_date <= b1.TRAD_DATE 
	AND C1.e_date > b1.TRAD_DATE 
	AND SUBSTR(CAST(1000000+a1.SEC_CDE AS CHAR(7)),2) = b1.SEC_CDE 
	AND SUBSTR(CAST(1000000+a1.SEC_CDE AS CHAR(7)),2) = c1.SEC_CDE 
	AND B1.MKT_SORT=C1.MKT_SORT 
	AND B1.MKT_SORT='0' 
	AND a1.cap_type = d1.cap_type 
	AND a1.negt_type = d1.negt_type 
	AND a1.EQUT_TYPE = d1.EQUT_TYPE 
	AND a1.SHDR_ACCT NOT IN ('B880859746','B880810718','B880969127','B880969135') 
	AND a1.HOLD_VOL <> 0 
	AND b1.TRAD_DATE = cast('${TXDATE}' as date format 'YYYYMMDD') 
	AND c1.SEC_CTG = '11' 
	AND C1.LIST_DATE<=cast('${TXDATE}' as date format 'YYYYMMDD') 
	--AND C1.LIST_DATE<>'00010101' 
	AND d1.trad_mkt = '0' 
	--AND d1.negt_indc IN ('01','02','03') 
	AND d1.negt_indc = '01'
	GROUP BY 1,2

UNION ALL 

	SELECT '0' AS mkt_sort 
	,a1.SHDR_ACCT 
	FROM 
	${NSOVIEW}.CSDC_H_SHDR_HLD a1 
	,${NSOVIEW}.CSDC_INTG_SEC_QUOT b1 
	,${NSOVIEW}.CSDC_INTG_SEC_INFO c1 
	,${NSOVIEW}.CSDC_H_NEGT_CLSF d1 
	-- ,jczx.hy_info_20140116 e1 
	WHERE 
	a1.s_date <= b1.TRAD_DATE AND a1.e_date > b1.TRAD_DATE 
	AND d1.s_date <= b1.TRAD_DATE AND d1.e_date > b1.TRAD_DATE 
	AND C1.s_date <= b1.TRAD_DATE 
	AND C1.e_date > b1.TRAD_DATE 
	AND SUBSTR(CAST(1000000+a1.SEC_CDE AS CHAR(7)),2) = b1.SEC_CDE 
	AND SUBSTR(CAST(1000000+a1.SEC_CDE AS CHAR(7)),2) = c1.SEC_CDE 
	AND B1.MKT_SORT=C1.MKT_SORT 
	AND C1.LIST_DATE<=cast('${TXDATE}' as date format 'YYYYMMDD') 
	--AND C1.LIST_DATE<>'00010101' 
	AND B1.MKT_SORT='0' 
	AND a1.cap_type = d1.cap_type 
	--AND a1.SEC_CDE = e1.sec_cde 
	AND a1.negt_type = d1.negt_type 
	AND a1.EQUT_TYPE = d1.EQUT_TYPE 
	AND a1.SHDR_ACCT NOT IN ('B880859746','B880810718','B880969127','B880969135') 
	AND a1.HOLD_VOL <> 0 
	AND b1.TRAD_DATE = cast('${TXDATE}' as date format 'YYYYMMDD')
	AND c1.SEC_CTG = '11' 
	AND d1.trad_mkt = '0' 
	--AND d1.negt_indc IN ('01','02','03') 
	AND d1.negt_indc = '01'
	AND a1.SHDR_ACCT NOT IN (SELECT DISTINCT GUART_ACCT FROM ${NSOVIEW}.CSDC_H_CRDT_ACCT_RLTN 
							WHERE s_date<=cast('${TXDATE}' as date format 'YYYYMMDD') 
							AND e_date>cast('${TXDATE}' as date format 'YYYYMMDD') 
							AND CRDT_ACCT IS NOT NULL) 
	GROUP BY 1,2

UNION ALL 

	SELECT '1' AS mkt_sort 
	,CAST(a1.SHDR_ACCT AS CHAR(10)) AS shdr_acct
	FROM 
	${NSOVIEW}.CSDC_S_STK_WRHS_BK_REQ_AGO_HIS a1 
	,${NSOVIEW}.CSDC_INTG_SEC_QUOT b1 
	,${NSOVIEW}.CSDC_INTG_SEC_INFO c1 
	,${NSOVIEW}.CSDC_S_NEGT_CLSF d1 
	--,jczx.hy_info_20140116 e1 
	WHERE 
	a1.s_date <= b1.TRAD_DATE AND a1.e_date > b1.TRAD_DATE 
	AND d1.s_date <= b1.TRAD_DATE AND d1.e_date > b1.TRAD_DATE 
	AND C1.s_date <= b1.TRAD_DATE 
	AND C1.e_date > b1.TRAD_DATE 
	AND a1.SEC_CDE = b1.SEC_CDE 
	AND a1.SEC_CDE = c1.SEC_CDE 
	AND B1.MKT_SORT=C1.MKT_SORT 
	AND B1.MKT_SORT='1' 
	--AND a1.SEC_CDE = e1.sec_cde 
	AND a1.STK_CHRC = d1.STK_CHRC 
	AND a1.SHDR_ACCT <> '0088888889' 
	AND a1.HOLD_VOL <> 0 
	AND b1.TRAD_DATE = cast('${TXDATE}' as date format 'YYYYMMDD')
	AND c1.SEC_CTG = '11' 
	AND C1.LIST_DATE<=cast('${TXDATE}' as date format 'YYYYMMDD') 
	AND C1.LIST_DATE<>cast('00010101' as date format 'YYYYMMDD') 
	--AND c1.trad_mkt = '0' 
	--AND d1.negt_indc IN ('01','02','03') 
	AND d1.negt_indc = '01'
	GROUP BY 1,2
) a
INNER JOIN ${NSOVIEW}.CSDC_INTG_UAP_SEC_ACCT b
ON 
	a.SHDR_ACCT	= b.SEC_ACCT_CDE
	AND a.mkt_sort = b.TRAD_PLAC
	AND sec_acct_sts IN ('00', '01')
	AND CUST_SORT IN ('0', '1', '2')
	AND b.s_date <= cast('${TXDATE}' as date format 'YYYYMMDD') 
	AND b.e_date > cast('${TXDATE}' as date format 'YYYYMMDD')
) TBL
GROUP BY 1
;
	
.IF ERRORCODE <> 0 THEN .QUIT 12;

.QUIT

