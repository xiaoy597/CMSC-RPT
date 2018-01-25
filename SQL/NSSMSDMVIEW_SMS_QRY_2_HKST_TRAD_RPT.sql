REPLACE VIEW ${NSSMSDMVIEW}.SMS_QRY_2_HKST_TRAD_RPT (
STAT_DATE            -- 统计日期
,SEC_EXCH_NAME       -- 港股通类别
,INVST_CLSF          -- 投资者分类
,BUY_AMT             -- 买入金额
,SAL_AMT             -- 卖出金额
,TRAD_NET_AMT        -- 买卖净额
)
AS SELECT
STAT_DATE ( TITLE '统计日期' )
,CASE WHEN SEC_EXCH_CDE = '0' THEN '沪' ELSE '深' END ( TITLE '港股通类别' ) AS SEC_EXCH_NAME 
,CASE 
 	 WHEN INVST_CLSF IN ('235') THEN '专业机构' -- '证券投资基金'
 	 WHEN INVST_CLSF IN ('231') THEN '专业机构' -- '证券公司自营'
 	 WHEN INVST_CLSF IN ('239') THEN '专业机构' -- 'QFII'
 	 WHEN INVST_CLSF IN ('233') THEN '专业机构' -- '信托公司'
 	 WHEN INVST_CLSF IN ('110') THEN '自然人'   -- '自然人'									
 	 WHEN INVST_CLSF IN ('236') THEN '专业机构' -- '社保基金'									
 	 WHEN INVST_CLSF IN ('234') THEN '专业机构' -- '保险公司'
 	 WHEN INVST_CLSF IN ('232') THEN '专业机构' -- '证券公司集合理财'									
 	 WHEN INVST_CLSF IN ('238') THEN '专业机构' -- '企业年金'									
     WHEN INVST_CLSF IN ('23A') THEN '专业机构' -- '基金专户理财'
 	 WHEN INVST_CLSF IN ('23C') THEN '专业机构' -- 'RQFII'
 	 ELSE '一般机构'
END  ( TITLE '投资者分类' ) AS INVST_CLSF
,SUM(BUY_AMT) ( TITLE '买入金额' ) AS BUY_AMT
,SUM(SAL_AMT) ( TITLE '卖出金额' ) AS SAL_AMT
,SUM(TRAD_NET_AMT) ( TITLE '买卖净额' ) AS TRAD_NET_AMT
FROM ${NSSMSMART}.SMS_QRY_2_HKST_TRAD_RPT
GROUP BY 1,2,3
;

