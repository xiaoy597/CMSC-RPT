/*
版本信息:1.0
创建者	:XYU
功能描述:分辖区证券公司数据报表
加载类型:全量加载
源		 表：
	NSODATA.ISD_PRFT_SPVS_RPT -- ISD_J8004_交易_B2-1利润监管报表文件
	NSODATA.ISD_ASET_LBLT_SPVS_RPT -- ISD_J8001_交易_B1-1资产负债监管报表文件
	NSODATA.ISD_SC_RISK_MONIT_SPVS_RPT -- ISD_J8016_证券公司风险控制指标监管报表
	NSODATA.ISD_LCR_CALC -- ISD_J8014_交易_证券公司流动性覆盖率计算表
	NSODATA.ISD_NSFR_CALC -- ISD_J8015_证券公司净稳定资金率计算表
	NSPUBMART.MID_SC_SYNT_INFO_M -- 证券公司综合信息月表

目	标	表:	nsSMSMart.SMS_QRY_2_PPDM_SC_RPT	-- 分辖区证券公司数据报表
频		 度:D:日
创建日期:	2018-01-24
修改历史:
修改人	修改日期	修改内容
*/

DELETE FROM ${NSSMSMART}.SMS_QRY_2_PPDM_SC_RPT WHERE STAT_DATE = '${TXDATE}';

.IF ERRORCODE <> 0 THEN .QUIT 12;


INSERT INTO ${NSSMSMART}.SMS_QRY_2_PPDM_SC_RPT
SELECT
'${TXDATE}' AS STAT_DATE                                            -- 统计月份
,A1.PPDM_NAME AS PPDM_NAME                                          -- 证券公司辖区名称
,A1.IF_JV                                                              -- 是否合资
,A1.IF_HAVE_CUST_AM_QLF                                                -- 是否具有资产管理业务资格
,COUNT(A1.SC_CDE) AS COMP_CNT                                      -- 公司家数
,SUM(A1.BRH_CNT) AS BRH_CNT                                           -- 营业部家数
,SUM(B1.GAIN_COMP_CNT) AS GAIN_COMP_CNT                                  -- 盈利公司家数
,SUM(B1.LOSS_COMP_CNT) AS LOSS_COMP_CNT                                  -- 亏损公司家数
,SUM(D1.RISK_OVER_THRE_COMP_CNT) AS RISK_OVER_THRE_COMP_CNT       -- “风险覆盖率”超过预警标准公司家数
,SUM(D1.RISK_OVER_REGU_COMP_CNT) AS RISK_OVER_REGU_COMP_CNT       -- “风险覆盖率”超过监管标准公司家数
,SUM(D1.LEVE_OVER_THRE_COMP_CNT) AS LEVE_OVER_THRE_COMP_CNT        -- “资本杠杆率”超过预警标准公司家数
,SUM(D1.LEVL_OVER_REGU_COMP_CNT) AS LEVL_OVER_REGU_COMP_CNT        -- “资本杠杆率”超过监管标准公司家数
,SUM(E1.LIQU_OVER_THRE_COMP_CNT) AS LIQU_OVER_THRE_COMP_CNT               -- “流动性覆盖率”超过预警标准公司家数
,SUM(E1.LIQU_OVER_REGU_COMP_CNT) AS LIQU_OVER_REGU_COMP_CNT               -- “流动性覆盖率”超过监管标准公司家数
,SUM(F1.STAB_OVER_THRE_COMP_CNT) AS STAB_OVER_THRE_COMP_CNT          -- “净稳定资金率”超过预警标准公司家数
,SUM(F1.STAB_OVER_REGU_COMP_CNT) AS STAB_OVER_REGU_COMP_CNT          -- “净稳定资金率”超过监管标准公司家数
,SUM(C1.END_TOT_ASET) AS END_TOT_ASET                                     -- 期末总资产
,SUM(G1.END_NET_ASET) AS END_NET_ASET                                  -- 期末净资产
,SUM(B1.PRFT_TOT_AMT) AS PRFT_TOT_AMT                                  -- 利润总额_当月
,SUM(B1.NET_PRFT) AS NET_PRFT                                           -- 净利润_当月
,SUM(B1.BIZ_ENING) AS BIZ_ENING	                                           -- 营业收入_当月
,SUM(G1.NET_CAPTL_TOT_AMT) AS NET_CAPTL_TOT_AMT	                             -- 净资本总额
,SUM(G1.RISK_CAPTL_RSRV_AMT) AS RISK_CAPTL_RSRV_AMT	                           -- 风险资本准备总额
,SUM(B1.INTR_NET_ENING) AS INTR_NET_ENING	                                   -- 利息净收入_当月
,SUM(B1.INVSMT_INCM) AS INVSMT_INCM	                                       -- 投资收益_当月
,SUM(B1.AGENT_NET_ENING) AS AGENT_NET_ENING	                           -- 证券经纪业务净收入_当月
,SUM(B1.INVSMT_BANK_NET_ENING) AS INVSMT_BANK_NET_ENING	                   -- 投资银行业务净收入_当月
,SUM(B1.INVSMT_CNSLT_NET_ENING) AS INVSMT_CNSLT_NET_ENING	                  -- 投资咨询业务净收入_当月
,SUM(B1.ASET_MNGMNT_NET_ENING) AS ASET_MNGMNT_NET_ENING	                      -- 资产管理业务净收入_当月
FROM
(
	SELECT 
	A.SC_CDE
	,A.PPDM_NAME 
	,A.IF_JV
	,A.IF_HAVE_CUST_AM_QLF
	,SUM(CASE WHEN B.BRCH_NAME LIKE '%营业部%' THEN 1 ELSE 0 END) AS BRH_CNT
	FROM
	${NSOVIEW}.ISD_SC_BSC_INFO A
	,${NSOVIEW}.ISD_SC_NET_BSC_INFO B
	WHERE
		A.SC_CDE = B.BLNGS_SC_CDE
	AND A.S_DATE <= cast('${TXDATE}' as date format 'YYYYMMDD') AND A.E_DATE > cast('${TXDATE}' as date format 'YYYYMMDD')
	AND A.BIZ_M = cast('${TXDATE}' as date format 'YYYYMMDD')
	AND B.S_DATE <= cast('${TXDATE}' as date format 'YYYYMMDD') AND B.E_DATE > cast('${TXDATE}' as date format 'YYYYMMDD')
	GROUP BY 1,2,3,4
) A1,
(	SELECT 
	SC_CDE
	,SUM(CASE WHEN IDX_NBR = 59 AND CUR_Y_ACM_AMT >= 0 THEN 1 ELSE 0 END) AS GAIN_COMP_CNT
	,SUM(CASE WHEN IDX_NBR = 59 AND CUR_Y_ACM_AMT < 0 THEN 1 ELSE 0 END) AS LOSS_COMP_CNT
	,SUM(CASE WHEN IDX_NBR = 3 THEN CUR_Y_ACM_AMT ELSE 0 END) AS AGENT_NET_ENING
	,SUM(CASE WHEN IDX_NBR = 7 THEN CUR_Y_ACM_AMT ELSE 0 END) AS INVSMT_BANK_NET_ENING
	,SUM(CASE WHEN IDX_NBR = 12 THEN CUR_Y_ACM_AMT ELSE 0 END) AS INVSMT_CNSLT_NET_ENING
	,SUM(CASE WHEN IDX_NBR = 13 THEN CUR_Y_ACM_AMT ELSE 0 END) AS ASET_MNGMNT_NET_ENING
	,SUM(CASE WHEN IDX_NBR = 18 THEN CUR_Y_ACM_AMT ELSE 0 END) AS INTR_NET_ENING
	,SUM(CASE WHEN IDX_NBR = 33 THEN CUR_Y_ACM_AMT ELSE 0 END) AS INVSMT_INCM
	,SUM(CASE WHEN IDX_NBR = 57 THEN CUR_Y_ACM_AMT ELSE 0 END) AS PRFT_TOT_AMT
	,SUM(CASE WHEN IDX_NBR = 59 THEN CUR_Y_ACM_AMT ELSE 0 END) AS NET_PRFT
	,SUM(CASE WHEN IDX_NBR = 1 THEN CUR_Y_ACM_AMT ELSE 0 END) AS BIZ_ENING
	FROM ${NSOVIEW}.ISD_PRFT_SPVS_RPT
	WHERE BIZ_MTHL = cast('${TXDATE}' as date format 'YYYYMMDD')
	GROUP BY 1
) B1,
(
	SELECT
	SC_CDE
	,SUM(END_BAL) AS END_TOT_ASET
	FROM ${NSOVIEW}.ISD_ASET_LBLT_SPVS_RPT
	WHERE
	BIZ_MTHL = cast('${TXDATE}' as date format 'YYYYMMDD')
	AND IDX_NBR = '39'
	GROUP BY 1
) C1,
(
	SELECT
	SC_CDE
	,SUM(CASE WHEN IDX_NAME = '风险覆盖率 注1' AND END_VAL BETWEEN 1.00 AND 1.20 THEN 1 ELSE 0 END) AS RISK_OVER_THRE_COMP_CNT
	,SUM(CASE WHEN IDX_NAME = '风险覆盖率 注1' AND END_VAL BETWEEN 0.00 AND 1.00 THEN 1 ELSE 0 END) AS RISK_OVER_REGU_COMP_CNT
	,SUM(CASE WHEN IDX_NAME = '净资产/负债' AND END_VAL BETWEEN 0.08 AND 0.108 THEN 1 ELSE 0 END) AS LEVE_OVER_THRE_COMP_CNT
	,SUM(CASE WHEN IDX_NAME = '净资产/负债' AND END_VAL < 0.08 THEN 1 ELSE 0 END) AS LEVL_OVER_REGU_COMP_CNT
	FROM ${NSOVIEW}.ISD_SC_RISK_MONIT_SPVS_RPT
	WHERE BIZ_MTHL = cast('${TXDATE}' as date format 'YYYYMMDD')
	GROUP BY 1
) D1,
(
	SELECT 
	SC_CDE
	,SUM(CASE WHEN IDX_NAME = '流动性覆盖率（LCR） 注15' AND CNVT_AFT_AMT BETWEEN 1.0 AND 1.2 THEN 1 ELSE 0 END) AS LIQU_OVER_THRE_COMP_CNT
	,SUM(CASE WHEN IDX_NAME = '流动性覆盖率（LCR） 注15' AND CNVT_AFT_AMT BETWEEN 0.0 AND 1.0 THEN 1 ELSE 0 END) AS LIQU_OVER_REGU_COMP_CNT
	FROM ${NSOVIEW}.ISD_LCR_CALC
	WHERE BIZ_MTHL = cast('${TXDATE}' as date format 'YYYYMMDD')
	GROUP BY 1
) E1,
(
	SELECT 
	SC_CDE
	,SUM(CASE WHEN IDX_NAME = '净稳定资金率（NSFR）注14' AND CNVT_AFT_AMT BETWEEN 1.0 AND 1.2 THEN 1 ELSE 0 END) AS STAB_OVER_THRE_COMP_CNT
	,SUM(CASE WHEN IDX_NAME = '净稳定资金率（NSFR）注14' AND CNVT_AFT_AMT BETWEEN 0.0 AND 1.0 THEN 1 ELSE 0 END) AS STAB_OVER_REGU_COMP_CNT
	FROM ${NSOVIEW}.ISD_NSFR_CALC
	WHERE BIZ_MTHL = cast('${TXDATE}' as date format 'YYYYMMDD')
	GROUP BY 1
) F1,
(
	SELECT
	SC_CDE
	,SUM(NAST) AS END_NET_ASET                          -- 期末净资产
	,SUM(NET_CAP) AS NET_CAPTL_TOT_AMT	                -- 净资本总额
	,SUM(RISK_CAP_PREP_TOT_AMT) AS RISK_CAPTL_RSRV_AMT	-- 风险资本准备总额
	FROM ${NSPUBVIEW}.MID_SC_SYNT_INFO_M
	WHERE
	STAT_DATE = cast('${TXDATE}' as date format 'YYYYMMDD')
	GROUP BY 1
) G1
WHERE 
A1.SC_CDE = B1.SC_CDE
AND A1.SC_CDE = C1.SC_CDE
AND A1.SC_CDE = D1.SC_CDE
AND A1.SC_CDE = E1.SC_CDE
AND A1.SC_CDE = F1.SC_CDE
AND A1.SC_CDE = G1.SC_CDE
GROUP BY 1,2,3,4
;

.IF ERRORCODE <> 0 THEN .QUIT 12;

.QUIT
