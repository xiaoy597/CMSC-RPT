BTEQ 15.00.00.00 Wed Jan 17 10:15:02 2018 PID: 28751
 
+---------+---------+---------+---------+---------+---------+---------+----
.set width 256
+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
.logon 10.97.10.200/xiaoy,

 *** Logon successfully completed.
 *** Teradata Database Release is 15.00.06.01                   
 *** Teradata Database Version is 15.00.06.01                     
 *** Transaction Semantics are BTET.
 *** Session Character Set Name is 'ASCII'.
 
 *** Total elapsed time was 1 second.
 
+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-


SHOW VIEW nsPUBView.CDE_FUTRS_INVST_SORT_CODE_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_FUTRS_INVST_SORT_CODE_TB (
	AAGT_CLSF,
	AAGT_CLSF_DESC
)
 AS LOCKING nsPUBMart.CDE_FUTRS_INVST_SORT_CODE_TB FOR ACCESS 
 SELECT 
	AAGT_CLSF ( TITLE '一级分类'),
	AAGT_CLSF_DESC ( TITLE '一级分类描述')
 from  nsPUBMart.CDE_FUTRS_INVST_SORT_CODE_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_FUTRS_MKT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_FUTRS_MKT_IDX (
	IDX_NBR,
	IDX_CDE,
	IDX_NAME,
	IDX_CLSF,
	DATA_SRC_TYPE,
	RMAK
)
 AS LOCKING nsPUBMart.CDE_FUTRS_MKT_IDX FOR ACCESS 
 SELECT 
	IDX_NBR ( TITLE '序号 '),
	IDX_CDE ( TITLE '指数代码'),
	IDX_NAME ( TITLE '指数名称'),
	IDX_CLSF ( TITLE '指数分类'),
	DATA_SRC_TYPE ( TITLE '数据源类型'),
	RMAK ( TITLE '备注')
 from  nsPUBMart.CDE_FUTRS_MKT_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_IC;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_IC (
	IDSTR_CDE,
	IDSTR_NAME
)
 AS LOCKING nsPUBMart.CDE_IC FOR ACCESS 
 SELECT 
	IDSTR_CDE ( TITLE '行业代码'),
	IDSTR_NAME ( TITLE '行业名称')
 from  nsPUBMart.CDE_IC;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_IC_CORR;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_IC_CORR (
	STAT_DATE,
	STK_CDE,
	CLSF_CDE,
	IC_NAME,
	DATA_TIME
)
 AS LOCKING nsPUBMart.CDE_IC_CORR FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	STK_CDE ( TITLE '股票代码'),
	CLSF_CDE ( TITLE '分类代码'),
	IC_NAME ( TITLE '行业分类名称'),
	DATA_TIME ( TITLE '数据时间')
 from  nsPUBMart.CDE_IC_CORR ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_IC_SWHY;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_IC_SWHY (
	IDSTR_CDE,
	IDSTR_NAME
)
 AS LOCKING nsPUBMart.CDE_IC_SWHY FOR ACCESS 
 SELECT 
	IDSTR_CDE ( TITLE '行业代码'),
	IDSTR_NAME ( TITLE '行业名称')
 from  nsPUBMart.CDE_IC_SWHY ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_IDX (
	IDX_CDE,
	IDX_NAME,
	BLNGS_AREA,
	DOM_FORN_INDC,
	DATA_SRC_TYPE,
	IF_CALC_PE,
	WDI_IDX_CDE
)
 AS LOCKING nsPUBMart.CDE_IDX FOR ACCESS 
 SELECT 
	IDX_CDE ( TITLE '指数代码'),
	IDX_NAME ( TITLE '指数名称'),
	BLNGS_AREA ( TITLE '所属区域'),
	DOM_FORN_INDC ( TITLE '境内境外标志'),
	DATA_SRC_TYPE ( TITLE '数据源类型'),
	IF_CALC_PE ( TITLE '是否计算市盈率'),
	WDI_IDX_CDE ( TITLE '万得指数代码')
 from  nsPUBMart.CDE_IDX ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_NAME_CORR;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW  NSPUBVIEW.CDE_NAME_CORR(
	SC_CDE ,
	SC_NAME
	       )
AS LOCKING NSPUBMART.CDE_NAME_CORR FOR ACCESS
SELECT 
	SC_CDE (TITLE '证券公司代码'),
  SC_NAME (TITLE '证券公司名称')
FROM NSPUBMART.CDE_NAME_CORR;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_PPDM_CDE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_PPDM_CDE (
	PPDM_CDE,
	PPDM_NAME
)
 AS LOCKING nsPUBMart.CDE_PPDM_CDE FOR ACCESS 
 SELECT 
	PPDM_CDE ( TITLE '辖区代码'),
	PPDM_NAME ( TITLE '辖区名称')
 from  nsPUBMart.CDE_PPDM_CDE ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_PPDM_CORR_RLTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_PPDM_CORR_RLTN (
	PPDM_CDE_INTF,
	PPDM_CDE_SYS_INR,
	BLNGS_INTF
)
 AS LOCKING nsPUBMart.CDE_PPDM_CORR_RLTN FOR ACCESS 
 SELECT 
	PPDM_CDE_INTF ( TITLE '辖区代码_接口'),
	PPDM_CDE_SYS_INR ( TITLE '辖区代码_系统内'),
	BLNGS_INTF ( TITLE '所属接口')
 from  nsPUBMart.CDE_PPDM_CORR_RLTN ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_SC_CDE_CORR_RLTN_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_SC_CDE_CORR_RLTN_TB (
	IVST_GUART_SC_CDE,
	IVST_GUART_SC_NAME,
	CORR_RLTN_TYPE,
	CORR_SEC_ORG_CDE,
	CORR_SEC_ORG_NAME
)
 AS LOCKING nsPUBMart.CDE_SC_CDE_CORR_RLTN_TB FOR ACCESS 
 SELECT 
	IVST_GUART_SC_CDE ( TITLE '投保证券公司代码'),
	IVST_GUART_SC_NAME ( TITLE '投保证券公司名称'),
	CORR_RLTN_TYPE ( TITLE '对应关系类型'),
	CORR_SEC_ORG_CDE ( TITLE '对应证券机构代码'),
	CORR_SEC_ORG_NAME ( TITLE '对应证券机构名称')
 from  nsPUBMart.CDE_SC_CDE_CORR_RLTN_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_SEC_CTG;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--中间表码值视图(5张)
REPLACE VIEW nsPUBView.CDE_SEC_CTG (
	SEC_CTG_CDE,
	SEC_CTG_DESC
)
 AS LOCKING nsPUBMart.CDE_SEC_CTG FOR ACCESS 
 SELECT 
	SEC_CTG_CDE ( TITLE '证券类别代码'),
	SEC_CTG_DESC ( TITLE '证券类别描述')
 from  nsPUBMart.CDE_SEC_CTG;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_SPE_CDE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_SPE_CDE (
	DIMN,
	DIMN_NAME,
	CDE,
	CODE_VAL
)
 AS LOCKING nsPUBMart.CDE_SPE_CDE FOR ACCESS 
 SELECT 
	DIMN ( TITLE '维度'),
	DIMN_NAME ( TITLE '维度名'),
	CDE ( TITLE '代码'),
	CODE_VAL ( TITLE '码值')
 from  nsPUBMart.CDE_SPE_CDE ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_STAT_ANGLE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CDE_STAT_ANGLE (
	STAT_ANGLE_CLASS_CDE,
	STAT_ANGLE_CLASS_NAME,
	STAT_ANGLE_CDE,
	STAT_ANGLE_NAME
)
 AS LOCKING nsPUBMart.CDE_STAT_ANGLE FOR ACCESS 
 SELECT 
	STAT_ANGLE_CLASS_CDE ( TITLE '统计角度大类编码'),
	STAT_ANGLE_CLASS_NAME ( TITLE '统计角度大类名称'),
	STAT_ANGLE_CDE ( TITLE '统计角度编码'),
	STAT_ANGLE_NAME ( TITLE '统计角度名称')
 from  nsPUBMart.CDE_STAT_ANGLE ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.cde_stk_invst_sort;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.cde_stk_invst_sort (
	CLSF_1,
	CLSF_1_DESC,
	CLSF_2,
	CLSF_2_DESC,
	CLSF_3,
	CLSF_3_DESC,
	Cmsmc_CLSF,
	Cmsmc_CLSF_DESC
)
 AS LOCKING nsPUBMart.CDE_STK_INVST_SORT FOR ACCESS 
 SELECT 
	CLSF_1 ( TITLE '一级分类'),
	CLSF_1_DESC ( TITLE '一级分类描述'),
	CLSF_2 ( TITLE '二级分类'),
	CLSF_2_DESC ( TITLE '二级分类描述'),
	CLSF_3 ( TITLE '三级分类'),
	CLSF_3_DESC ( TITLE '三级分类描述'),
	Cmsmc_CLSF ( TITLE '中证监测分类'),
	Cmsmc_CLSF_DESC ( TITLE '中证监测分类描述')	
 from  nsPUBMart.CDE_STK_INVST_SORT;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CFG_FUTRS_VART_DSPLY;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.CFG_FUTRS_VART_DSPLY (
	DSPLY_NBR,
	STD_CNTR_CDE,
	STD_CNTR_NAME,
	DSPLY_NAME,
	DSPLY_NAME_ENG,
	UNIT,
	FUTRS_EXCH_CDE,
	FUTRS_EXCH_CHN_NAME,
	LIST_DATE,
	DELS_DATE,
	FUTRS_VART_NBR,
	FUTRS_VART_TYPE_CDE,
	FUTRS_VART_TYPE_CHN,
	FUTRS_VART_TYPE_ENG
)
 AS LOCKING nsPUBMart.CFG_FUTRS_VART_DSPLY FOR ACCESS 
 SELECT 
	DSPLY_NBR ( TITLE '展示序号'),
	STD_CNTR_CDE ( TITLE '标准合约代码'),
	STD_CNTR_NAME ( TITLE '标准合约名称'),
	DSPLY_NAME ( TITLE '展示名称'),
	DSPLY_NAME_ENG ( TITLE '展示名称_英文'),
	UNIT ( TITLE '单位'),
	FUTRS_EXCH_CDE ( TITLE '期货交易所代码'),
	FUTRS_EXCH_CHN_NAME ( TITLE '期货交易所中文名'),
	LIST_DATE ( TITLE '上市日期'),
	DELS_DATE ( TITLE '退市日期'),
	FUTRS_VART_NBR ( TITLE '期货品种序号'),
	FUTRS_VART_TYPE_CDE ( TITLE '期货品种类型代码'),
	FUTRS_VART_TYPE_CHN ( TITLE '期货品种类型_中文'),
	FUTRS_VART_TYPE_ENG ( TITLE '期货品种类型_英文')
 from  nsPUBMart.CFG_FUTRS_VART_DSPLY;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.COUN_CDE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.COUN_CDE (
	CDE,
	THREE_ABBR,
	NAME,
	CLSF_TYPE_CDE,
	CLSF_CDE,
	CLSF_DESC
)
 AS LOCKING nsPUBMart.COUN_CDE FOR ACCESS 
 SELECT 
	CDE ( TITLE '代码'),
	THREE_ABBR ( TITLE '三位简称'),
	NAME ( TITLE '名称'),
	CLSF_TYPE_CDE ( TITLE '分类类型代码'),
	CLSF_CDE ( TITLE '分类代码'),
	CLSF_DESC ( TITLE '分类描述')
 from  nsPUBMart.COUN_CDE;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.FCPTL_INVST_CLSF_ONE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--前台外资视图2张
REPLACE VIEW nsPUBView.FCPTL_INVST_CLSF_ONE (
	INVST_SORT_CDE,
	INVST_SORT_NAME
)
 AS LOCKING nsPUBMart.FCPTL_INVST_CLSF_ONE FOR ACCESS 
 SELECT 
	INVST_SORT_CDE ( TITLE '投资者类别编码'),
	INVST_SORT_NAME ( TITLE '投资者类别名称')
 from  nsPUBMart.FCPTL_INVST_CLSF_ONE;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.FCPTL_INVST_CLSF_TWO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.FCPTL_INVST_CLSF_TWO (
	INVST_SORT_CDE,
	INVST_SORT_NAME
)
 AS LOCKING nsPUBMart.FCPTL_INVST_CLSF_TWO FOR ACCESS 
 SELECT 
	INVST_SORT_CDE ( TITLE '投资者类别编码'),
	INVST_SORT_NAME ( TITLE '投资者类别名称')
 from  nsPUBMart.FCPTL_INVST_CLSF_TWO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.FCT_NTWK_PRESS_IDX_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBVIEW.FCT_NTWK_PRESS_IDX_INFO 
AS LOCKING nsPUBMART.FCT_NTWK_PRESS_IDX_INFO  FOR ACCESS
SELECT * FROM nsPUBMART.FCT_NTWK_PRESS_IDX_INFO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.FCT_STK_PLG_FORC_LQD_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBVIEW.FCT_STK_PLG_FORC_LQD_INFO
	AS LOCKING nsPUBMART.FCT_STK_PLG_FORC_LQD_INFO FOR ACCESS
	SELECT * FROM nsPUBMART.FCT_STK_PLG_FORC_LQD_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.FCT_STK_PLG_REPO_RATE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW  NSPUBVIEW.FCT_STK_PLG_REPO_RATE(
	Stat_Date ,
        Rate_CLSF ,
        Rate_LLMT ,
        Rate_ULMT ,
        CNTR_CNT ,
        ACCT_VOL ,
        ST_RPCHS_AMT )
AS LOCKING NSPUBMART.FCT_STK_PLG_REPO_RATE FOR ACCESS
SELECT 
	Stat_Date (TITLE ' 统计日期'),
        Rate_CLSF (TITLE ' 比例分类'),
        Rate_LLMT (TITLE ' 比例下限'),
        Rate_ULMT (TITLE ' 比例上限'),
        CNTR_CNT (TITLE ' 合约笔数'),
        ACCT_VOL (TITLE ' 账户数'),
        ST_RPCHS_AMT (TITLE ' 待购回金额') 
FROM NSPUBMART.FCT_STK_PLG_REPO_RATE;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.FCT_UND_PRES_KEEP_GUART_RATE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBVIEW.FCT_UND_PRES_KEEP_GUART_RATE
	AS LOCKING nsPUBMART.FCT_UND_PRES_KEEP_GUART_RATE FOR ACCESS
	SELECT * FROM nsPUBMART.FCT_UND_PRES_KEEP_GUART_RATE;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.FUTRS_CNTR_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.FUTRS_CNTR_HIS (
	STAT_DATE,
	EXCH_NBR,
	VART_CNTR,
	VART_CDE,
	VART_CHN_NAME,
	VART_AAGT_CLSF,
	VART_SCND_CLSF,
	MAIN_CNTR_INDC,
	OPN_PRC,
	CLS_PRC,
	TOP_PRC,
	MIN_PRC,
	YDY_SETL_PRC,
	TS_SETL_PRC,
	S_TRAD_DATE,
	TRAD_QTT,
	TRAD_AMT,
	PSTN_QTT,
	PSTN_AMT
)
 AS LOCKING nsPUBMart.FUTRS_CNTR_HIS FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	EXCH_NBR ( TITLE '交易所编号'),
	VART_CNTR ( TITLE '品种合约'),
	VART_CDE ( TITLE '品种代码'),
	VART_CHN_NAME ( TITLE '品种中文名'),
	VART_AAGT_CLSF ( TITLE '品种一级分类'),
	VART_SCND_CLSF ( TITLE '品种二级分类'),
	MAIN_CNTR_INDC ( TITLE '主力合约标志'),
	OPN_PRC ( TITLE '开盘价'),
	CLS_PRC ( TITLE '收盘价'),
	TOP_PRC ( TITLE '最高价'),
	MIN_PRC ( TITLE '最低价'),
	YDY_SETL_PRC ( TITLE '昨结算价'),
	TS_SETL_PRC ( TITLE '今结算价'),
	S_TRAD_DATE ( TITLE '开始交易日期'),
	TRAD_QTT ( TITLE '成交量'),
	TRAD_AMT ( TITLE '成交额'),
	PSTN_QTT ( TITLE '持仓量'),
	PSTN_AMT ( TITLE '持仓金额')
 from  nsPUBMart.FUTRS_CNTR_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.FUTRS_INVST_CLSF_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.FUTRS_INVST_CLSF_HIS (
	EXCH_CUST_CDE,
	EXCH_NBR,
	FC_MEMB_NBR,
	FUTRS_UNFY_OPN_ACCT_CUST_CDE,
	FUTRS_MKT_AAGT_CLSF,
	FCPTL_SCND_CLSF,
	INVST_STS,
	OAP_ACCT_NBR,
	MIDL_CERTF_MONIT_CLSF,
	CORLT_RLTN_IF_CFRM
)
 AS LOCKING nsPUBMart.FUTRS_INVST_CLSF_HIS FOR ACCESS 
 SELECT 
	EXCH_CUST_CDE ( TITLE '交易所客户编码'),
	EXCH_NBR ( TITLE '交易所编号'),
	FC_MEMB_NBR ( TITLE '期货公司会员号'),
	FUTRS_UNFY_OPN_ACCT_CUST_CDE ( TITLE '期货统一开户客户编码'),
	FUTRS_MKT_AAGT_CLSF ( TITLE '期货市场一级分类'),
	FCPTL_SCND_CLSF ( TITLE '外资二级分类'),
	INVST_STS ( TITLE '投资者状态'),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	MIDL_CERTF_MONIT_CLSF ( TITLE '中证监测分类'),
	CORLT_RLTN_IF_CFRM ( TITLE '关联关系是否确认')
 from  nsPUBMart.FUTRS_INVST_CLSF_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_ACCT_A_MKT_VAL_BY_INVST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_ACCT_A_MKT_VAL_BY_INVST (
	STAT_DATE,
	FREQ,
	LSTN_BORD,
	SEC_EXCH_CDE,
	STK_INVST_SORT,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_ACCT_A_MKT_VAL_BY_INVST FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	LSTN_BORD ( TITLE '上市板块'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	STK_INVST_SORT ( TITLE '股票投资者类别'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_ACCT_A_MKT_VAL_BY_INVST;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_ACCT_A_MKT_V_BY_PPDM_IDSTR;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_ACCT_A_MKT_V_BY_PPDM_IDSTR (
	STAT_DATE,
	FREQ,
	LSTN_BORD,
	IC,
	SEC_EXCH_CDE,
	INVST_OPN_ACCT_PPDM,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_ACCT_A_MKT_V_BY_PPDM_IDSTR FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	LSTN_BORD ( TITLE '上市板块'),
	IC ( TITLE '行业分类'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	INVST_OPN_ACCT_PPDM ( TITLE '投资者开户辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_ACCT_A_MKT_V_BY_PPDM_IDSTR;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_A_MKT_VAL_TNOV_RATE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_A_MKT_VAL_TNOV_RATE (
	STAT_DATE,
	FREQ,
	LSTN_BORD,
	IC,
	SEC_EXCH_CDE,
	REG_JUR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_A_MKT_VAL_TNOV_RATE FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	LSTN_BORD ( TITLE '上市板块'),
	IC ( TITLE '行业分类'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	REG_JUR ( TITLE '监管辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_A_MKT_VAL_TNOV_RATE;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_A_TRAD_AMT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_A_TRAD_AMT (
	STAT_DATE,
	FREQ,
	ACCT_TYPE,
	LSTN_BORD,
	IC,
	SEC_EXCH_CDE,
	STK_INVST_SORT,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_A_TRAD_AMT FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	ACCT_TYPE ( TITLE '账户类型'),
	LSTN_BORD ( TITLE '上市板块'),
	IC ( TITLE '行业分类'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	STK_INVST_SORT ( TITLE '股票投资者类别'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_A_TRAD_AMT;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_BOND_ISS_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_BOND_ISS_IDX (
	STAT_DATE,
	FREQ,
	BOND_CLSF,
	RATE_TYPE,
	ISSR_IDSTR_CTGR,
	ISSR_ESECTOR,
	ISSR_REG_PPDM,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_BOND_ISS_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	BOND_CLSF ( TITLE '债券分类'),
	RATE_TYPE ( TITLE '利率类型'),
	ISSR_IDSTR_CTGR ( TITLE '发行人行业（门类）'),
	ISSR_ESECTOR ( TITLE '发行人经济成分'),
	ISSR_REG_PPDM ( TITLE '发行人注册辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_BOND_ISS_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_CINVSTETF_TRAD_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_CINVSTETF_TRAD_PSTN_IDX (
	STAT_DATE,
	FREQ,
	INVST_SORT,
	SEC_EXCH_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_CINVSTETF_TRAD_PSTN_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	INVST_SORT ( TITLE '投资者类别'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_CINVSTETF_TRAD_PSTN_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_CINVST_ACCT_VOL_STAT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_CINVST_ACCT_VOL_STAT_IDX (
	STAT_DATE,
	FREQ,
	CRS_MGN_INVST_SORT,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_CINVST_ACCT_VOL_STAT_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	CRS_MGN_INVST_SORT ( TITLE '跨市场投资者类别'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_CINVST_ACCT_VOL_STAT_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_CINVST_A_SHR_TRAD_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_CINVST_A_SHR_TRAD_PSTN_IDX (
	STAT_DATE,
	FREQ,
	INVST_SORT,
	SEC_EXCH_CDE,
	LSTN_BORD,
	IDSTR_CTGR_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_CINVST_A_SHR_TRAD_PSTN_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	INVST_SORT ( TITLE '投资者类别'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	LSTN_BORD ( TITLE '上市板块'),
	IDSTR_CTGR_CDE ( TITLE '行业门类代码'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_CINVST_A_SHR_TRAD_PSTN_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_CINVST_FUTRS_TRAD_PSTNI;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_CINVST_FUTRS_TRAD_PSTNI (
	STAT_DATE,
	FREQ,
	INVST_SORT,
	VART_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_CINVST_FUTRS_TRAD_PSTNI FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	INVST_SORT ( TITLE '投资者类别'),
	VART_CDE ( TITLE '品种代码'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_CINVST_FUTRS_TRAD_PSTNI;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_CINVST_SIFUTRS_CSTK_TPSTNI;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_CINVST_SIFUTRS_CSTK_TPSTNI (
	STAT_DATE,
	FREQ,
	INVST_SORT,
	SEC_EXCH_CDE,
	VART_CDE,
	LSTN_BORD,
	IDSTR_CTGR_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_CINVST_SIFUTRS_CSTK_TPSTNI FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	INVST_SORT ( TITLE '投资者类别'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	VART_CDE ( TITLE '品种代码'),
	LSTN_BORD ( TITLE '上市板块'),
	IDSTR_CTGR_CDE ( TITLE '行业门类代码'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_CINVST_SIFUTRS_CSTK_TPSTNI;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_CINVST_SIFUTRS_ETF_TPSTNI;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_CINVST_SIFUTRS_ETF_TPSTNI (
	STAT_DATE,
	FREQ,
	INVST_SORT,
	SEC_EXCH_CDE,
	VART_CDE,
	LSTN_BORD,
	IDSTR_CTGR_CDE
)
 AS LOCKING nsPUBMart.KPI_CINVST_SIFUTRS_ETF_TPSTNI FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	INVST_SORT ( TITLE '投资者类别'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	VART_CDE ( TITLE '品种代码'),
	LSTN_BORD ( TITLE '指标编码'),
	IDSTR_CTGR_CDE ( TITLE '指标值')
 from  nsPUBMart.KPI_CINVST_SIFUTRS_ETF_TPSTNI;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_COMP_CNT_CAP_MKT_VAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_COMP_CNT_CAP_MKT_VAL (
	STAT_DATE,
	FREQ,
	STK_TYPE,
	LSTN_BORD,
	IC,
	HDGS_CLSF,
	SEC_EXCH_CDE,
	REG_JUR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_COMP_CNT_CAP_MKT_VAL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	STK_TYPE ( TITLE '股份类型'),
	LSTN_BORD ( TITLE '上市板块'),
	IC ( TITLE '行业分类'),
	HDGS_CLSF ( TITLE '控股分类'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	REG_JUR ( TITLE '监管辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_COMP_CNT_CAP_MKT_VAL ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_COMP_CNT_CAP_MKT_VAL_ST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_COMP_CNT_CAP_MKT_VAL_ST (
 STAT_DATE,
 FREQ,
 RISK_ALT_INDC,
 REG_JUR,
 IDX_CDE,
 IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_COMP_CNT_CAP_MKT_VAL_ST FOR ACCESS 
 SELECT 
 STAT_DATE ( TITLE '统计日期'),
 FREQ ( TITLE '频度'),
 RISK_ALT_INDC ( TITLE '风险警示标志'),
 REG_JUR ( TITLE '监管辖区'),
 IDX_CDE ( TITLE '指标编码'),
 IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_COMP_CNT_CAP_MKT_VAL_ST;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_CRDT_SEC_OPN_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_CRDT_SEC_OPN_ACCT_VOL (
	STAT_DATE,
	FREQ,
	SEC_EXCH_CDE,
	STK_INVST_SORT,
	DOM_FORN_INDC,
	INVST_OPN_ACCT_PPDM,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_CRDT_SEC_OPN_ACCT_VOL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	STK_INVST_SORT ( TITLE '股票投资者类别'),
	DOM_FORN_INDC ( TITLE '境内境外标志'),
	INVST_OPN_ACCT_PPDM ( TITLE '投资者开户辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_CRDT_SEC_OPN_ACCT_VOL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FC_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FC_IDX (
	STAT_DATE,
	FREQ,
	REG_JUR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FC_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	REG_JUR ( TITLE '监管辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FC_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVSTETF_TRAD_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVSTETF_TRAD_PSTN_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	ETF_TYPE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVSTETF_TRAD_PSTN_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	ETF_TYPE ( TITLE 'ETF类型'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVSTETF_TRAD_PSTN_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_FCUST_BANKRLE_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_FCUST_BANKRLE_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_FCUST_BANKRLE_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_FCUST_BANKRLE_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_OAP_ACCT_STAT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_OAP_ACCT_STAT_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_OAP_ACCT_STAT_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_OAP_ACCT_STAT_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SFUTRS_STRAD_PSTNI;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SFUTRS_STRAD_PSTNI (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	STK_INDX_FUTRS_VART_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SFUTRS_STRAD_PSTNI FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	STK_INDX_FUTRS_VART_CDE ( TITLE '股指期货品种代码'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SFUTRS_STRAD_PSTNI;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SFUTRS_TRAD_PSTNI;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SFUTRS_TRAD_PSTNI (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	STK_INDX_FUTRS_VART_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SFUTRS_TRAD_PSTNI FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	STK_INDX_FUTRS_VART_CDE ( TITLE '股指期货品种代码'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SFUTRS_TRAD_PSTNI;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SMKT_BANKRL_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SMKT_BANKRL_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SMKT_BANKRL_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SMKT_BANKRL_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SMKT_CRDT_TRAD_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SMKT_CRDT_TRAD_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SMKT_CRDT_TRAD_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SMKT_CRDT_TRAD_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SMKT_ETF_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SMKT_ETF_PSTN_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	ETF_TYPE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SMKT_ETF_PSTN_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	ETF_TYPE ( TITLE 'ETF类型'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SMKT_ETF_PSTN_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SMKT_INVST_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SMKT_INVST_ACCT_VOL (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	EXCH_NBR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SMKT_INVST_ACCT_VOL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	EXCH_NBR ( TITLE '交易所编号'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SMKT_INVST_ACCT_VOL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SMKT_OACCT_STAT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SMKT_OACCT_STAT_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SMKT_OACCT_STAT_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SMKT_OACCT_STAT_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SMKT_SACCT_STAT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SMKT_SACCT_STAT_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SMKT_SACCT_STAT_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SMKT_SACCT_STAT_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SMKT_SEC_TRAD_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SMKT_SEC_TRAD_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	SEC_CTG,
	LSTN_BORD,
	LIST_COMP_IC,
	APLY_MYRD_IC,
	STK_ORETF_TYPE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SMKT_SEC_TRAD_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	SEC_CTG ( TITLE '证券类别'),
	LSTN_BORD ( TITLE '上市板块'),
	LIST_COMP_IC ( TITLE '上市公司行业分类'),
	APLY_MYRD_IC ( TITLE '申万行业分类'),
	STK_ORETF_TYPE ( TITLE '股票或ETF类型'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SMKT_SEC_TRAD_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SMKT_STK_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SMKT_STK_PSTN_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	STK_TYPE,
	LSTN_BORD,
	LIST_COMP_IC,
	APLY_MYRD_IC,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SMKT_STK_PSTN_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	STK_TYPE ( TITLE '股票类型'),
	LSTN_BORD ( TITLE '上市板块'),
	LIST_COMP_IC ( TITLE '上市公司行业分类'),
	APLY_MYRD_IC ( TITLE '申万行业分类'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SMKT_STK_PSTN_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SMKT_TRAD_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SMKT_TRAD_PSTN_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	EXCH_NBR,
	FUTRS_SORT,
	VART_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SMKT_TRAD_PSTN_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	EXCH_NBR ( TITLE '交易所编号'),
	FUTRS_SORT ( TITLE '期货类别'),
	VART_CDE ( TITLE '品种代码'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SMKT_TRAD_PSTN_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_SMKT_UNFY_OACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_SMKT_UNFY_OACCT_VOL (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	EXCH_NBR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_SMKT_UNFY_OACCT_VOL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	EXCH_NBR ( TITLE '交易所编号'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_SMKT_UNFY_OACCT_VOL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_STK_TRAD_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_STK_TRAD_PSTN_IDX (
	STAT_DATE,
	FREQ,
	FCPTL_INVST_SORT1,
	FCPTL_INVST_SORT2,
	FCPTL_INVST_SORT3,
	LSTN_BORD,
	LIST_COMP_IC,
	APLY_MYRD_IC,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_STK_TRAD_PSTN_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FCPTL_INVST_SORT1 ( TITLE '外资投资者类别1'),
	FCPTL_INVST_SORT2 ( TITLE '外资投资者类别2'),
	FCPTL_INVST_SORT3 ( TITLE '外资投资者类别（国别）3'),
	LSTN_BORD ( TITLE '上市板块'),
	LIST_COMP_IC ( TITLE '上市公司行业分类'),
	APLY_MYRD_IC ( TITLE '申万行业分类'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_STK_TRAD_PSTN_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_TRAD_AND_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_TRAD_AND_PSTN_IDX (
	STAT_DATE,
	FREQ,
	FUTRS_INVST_SORT,
	VART_CDE,
	EXCH_NBR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_TRAD_AND_PSTN_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FUTRS_INVST_SORT ( TITLE '期货投资者类别'),
	VART_CDE ( TITLE '品种代码'),
	EXCH_NBR ( TITLE '交易所编号'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_TRAD_AND_PSTN_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FINVST_UOPACCT_CDE_VOL_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FINVST_UOPACCT_CDE_VOL_IDX (
	STAT_DATE,
	FREQ,
	VART_ONE_CLSF,
	EXCH_NBR,
	FUTRS_INVST_SORT,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FINVST_UOPACCT_CDE_VOL_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	VART_ONE_CLSF ( TITLE '期货类别'),
	EXCH_NBR ( TITLE '交易所编号'),
	FUTRS_INVST_SORT ( TITLE '期货投资者类别'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FINVST_UOPACCT_CDE_VOL_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_FTINVST_FCUST_BANKRLE_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_FTINVST_FCUST_BANKRLE_IDX (
	STAT_DATE,
	FREQ,
	FUTRS_INVST_SORT,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_FTINVST_FCUST_BANKRLE_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	FUTRS_INVST_SORT ( TITLE '期货投资者类别'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_FTINVST_FCUST_BANKRLE_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_HOLD_BOND_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_HOLD_BOND_ACCT_VOL (
	STAT_DATE,
	FREQ,
	SEC_EXCH_CDE,
	ACCT_TYPE,
	BOND_CLSF,
	STK_INVST_SORT,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_HOLD_BOND_ACCT_VOL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	ACCT_TYPE ( TITLE '账户类型'),
	BOND_CLSF ( TITLE '债券分类'),
	STK_INVST_SORT ( TITLE '股票投资者类别'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_HOLD_BOND_ACCT_VOL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_INFO (
	IDX_CDE,
	IDX_NAME,
	IDX_TABLE,
	IDX_TABLE_NAME,
	IDX_VIEW,
	IDX_S_CRIPT,
	FREQ,
	RMAK
)
 AS LOCKING nsPUBMart.KPI_INFO FOR ACCESS 
 SELECT 
	IDX_CDE ( TITLE '指标编码'),
	IDX_NAME ( TITLE '指标名称'),
	IDX_TABLE ( TITLE '指标表名'),
	IDX_TABLE_NAME ( TITLE '指标表中文名'),
	IDX_VIEW ( TITLE '指标视图名'),
	IDX_S_CRIPT ( TITLE '指标脚本名'),
	FREQ ( TITLE '频度'),
	RMAK ( TITLE '备注')
 from  nsPUBMart.KPI_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_INFO_DIM_VW;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
创建者  :  ld
功能描述:  KPI信息_含维度
修改历史:
修改人   修改日期    修改内容
特殊说明：因为视图中的columntitle列是空值，所以系统表DBC.COLUMNS的来源库为 NSPUBMART，没有从视图库出。
*/

REPLACE VIEW NSPUBVIEW.KPI_INFO_DIM_VW (	
		columnid	
		,idx_cde	
		,idx_name	
		,freq		
		,tablename	
		,commentstring	
		,columnname	
		,columntitle	
) 
AS
(	SELECT	B.columnid	AS	columnid		--字段序号
		,A.idx_cde	AS	idx_cde			--指标编码
		,A.idx_name	AS	idx_name		--指标名称
		,A.freq		AS	freq			--频度
		,B.tablename	AS	tablename		--表英文名
		,B.commentstring	AS	commentstring	--表中文名
		,B.columnname	AS	columnname		--字段英文名
		,B.columntitle	AS	columntitle		--字段中文名
	FROM (	SELECT	idx_cde					--指数编码
			,idx_name				--指数名称
			,substr(idx_table,11) AS idx_table	--KPI表名
			,freq					--频度
		from	NSPUBVIEW.KPI_INFO ) A
	LEFT JOIN (
		SELECT	T1.columnid	AS	columnid
			,T1.tablename	AS	tablename		--表英文名
			,T2.commentstring	AS	commentstring	--表中文名
			,T1.columnname	AS	columnname		--字段英文名
			,T1.columntitle	AS	columntitle		--字段中文名
		FROM	DBC.COLUMNS T1
		LEFT JOIN DBC.TABLES T2
		ON	T1.tablename = T2.tablename
		AND	T2.databasename = 'NSPUBMART'
		WHERE	T1.databasename = 'NSPUBMART'
		  AND	T1.tablename  LIKE 'KPI_%'
		  AND	T1.tablename <> 'KPI_INFO'
		  AND	T1.tablename IN (SELECT SUBSTR(idx_table,11) FROM NSPUBVIEW.KPI_INFO)
		  AND	T1.columntitle NOT IN ('统计日期','频度','指标编码','指标值')
			) B
	ON A.idx_table = B.tablename
);


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_IPO_ISS_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_IPO_ISS_IDX (
	STAT_DATE,
	FREQ,
	LSTN_BORD,
	SEC_EXCH_CDE,
	REG_JUR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_IPO_ISS_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	LSTN_BORD ( TITLE '上市板块'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	REG_JUR ( TITLE '监管辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_IPO_ISS_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_LIST_COMP_FINA_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_LIST_COMP_FINA_IDX (
	STAT_DATE,
	FREQ,
	LSTN_BORD,
	IC,
	HDGS_CLSF,
	REG_JUR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_LIST_COMP_FINA_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	LSTN_BORD ( TITLE '上市板块'),
	IC ( TITLE '行业分类'),
	HDGS_CLSF ( TITLE '控股分类'),
	REG_JUR ( TITLE '监管辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_LIST_COMP_FINA_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_OAP_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_OAP_ACCT_VOL (
  STAT_DATE,
  FREQ,
  ACCT_TYPE,
  STK_INVST_SORT,
  INVST_OPN_ACCT_PPDM,
  IDX_CDE,
  IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_OAP_ACCT_VOL FOR ACCESS 
 SELECT 
  STAT_DATE ( TITLE '统计日期'),
  FREQ ( TITLE '频度'),
  ACCT_TYPE ( TITLE '账户类型'),
  STK_INVST_SORT ( TITLE '股票投资者类别'),
  INVST_OPN_ACCT_PPDM ( TITLE '投资者开户辖区'),
  IDX_CDE ( TITLE '指标编码'),
  IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_OAP_ACCT_VOL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_PE_PB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_PE_PB (
	STAT_DATE,
	FREQ,
	STK_TYPE,
	LSTN_BORD,
	IC,
	SEC_EXCH_CDE,
	REG_JUR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_PE_PB FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	STK_TYPE ( TITLE '股份类型'),
	LSTN_BORD ( TITLE '上市板块'),
	IC ( TITLE '行业分类'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	REG_JUR ( TITLE '监管辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_PE_PB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_PTC_BOND_TRAD_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_PTC_BOND_TRAD_ACCT_VOL (
  STAT_DATE,
  FREQ,
  SEC_EXCH_CDE,
  ACCT_TYPE,
  TRAD_TYPE,
  STK_INVST_SORT,
  IDX_CDE,
  IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_PTC_BOND_TRAD_ACCT_VOL FOR ACCESS 
 SELECT 
  STAT_DATE ( TITLE '统计日期'),
  FREQ ( TITLE '频度'),
  SEC_EXCH_CDE ( TITLE '证券交易所代码'),
  ACCT_TYPE ( TITLE '账户类型'),
  TRAD_TYPE ( TITLE '交易类型'),
  STK_INVST_SORT ( TITLE '股票投资者类别'),
  IDX_CDE ( TITLE '指标编码'),
  IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_PTC_BOND_TRAD_ACCT_VOL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_SC_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_SC_IDX (
	STAT_DATE,
	FREQ,
	REG_JUR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_SC_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	REG_JUR ( TITLE '监管辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_SC_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_SC_ZRT_BIZ_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--KPI视图(31张)
REPLACE VIEW nsPUBView.KPI_SC_ZRT_BIZ_IDX (
	STAT_DATE,
	FREQ,
	SC_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_SC_ZRT_BIZ_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	SC_CDE ( TITLE '证券公司代码'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_SC_ZRT_BIZ_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_SEC_OPN_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_SEC_OPN_ACCT_VOL (
  STAT_DATE,
  FREQ,
  SEC_EXCH_CDE,
  ACCT_TYPE,
  STK_INVST_SORT,
  DOM_FORN_INDC,
  INVST_OPN_ACCT_PPDM,
  IDX_CDE,
  IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_SEC_OPN_ACCT_VOL FOR ACCESS 
 SELECT 
  STAT_DATE ( TITLE '统计日期'),
  FREQ ( TITLE '频度'),
  SEC_EXCH_CDE ( TITLE '证券交易所代码'),
  ACCT_TYPE ( TITLE '账户类型'),
  STK_INVST_SORT ( TITLE '股票投资者类别'),
  DOM_FORN_INDC ( TITLE '境内境外标志'),
  INVST_OPN_ACCT_PPDM ( TITLE '投资者开户辖区'),
  IDX_CDE ( TITLE '指标编码'),
  IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_SEC_OPN_ACCT_VOL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_SEC_TRAD_HOLD_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_SEC_TRAD_HOLD_ACCT_VOL (
  STAT_DATE,
  FREQ,
  SEC_EXCH_CDE,
  ACCT_TYPE,
  STK_INVST_SORT,
  IDX_CDE,
  IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL FOR ACCESS 
 SELECT 
  STAT_DATE ( TITLE '统计日期'),
  FREQ ( TITLE '频度'),
  SEC_EXCH_CDE ( TITLE '证券交易所代码'),
  ACCT_TYPE ( TITLE '账户类型'),
  STK_INVST_SORT ( TITLE '股票投资者类别'),
  IDX_CDE ( TITLE '指标编码'),
  IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_SEC_TRAD_HOLD_ACCT_VOL_Y;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_SEC_TRAD_HOLD_ACCT_VOL_Y (
  STAT_DATE,
  FREQ,
  SEC_EXCH_CDE,
  ACCT_TYPE,
  STK_INVST_SORT,
  IDX_CDE,
  IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL_Y FOR ACCESS 
 SELECT 
  STAT_DATE ( TITLE '统计日期'),
  FREQ ( TITLE '频度'),
  SEC_EXCH_CDE ( TITLE '证券交易所代码'),
  ACCT_TYPE ( TITLE '账户类型'),
  STK_INVST_SORT ( TITLE '股票投资者类别'),
  IDX_CDE ( TITLE '指标编码'),
  IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL_Y;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_SMKT_FS_AVG_MNTNC_GUT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_SMKT_FS_AVG_MNTNC_GUT_IDX (
	STAT_DATE,
	FREQ,
	SC_CDE,
	INVST_SORT,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_SMKT_FS_AVG_MNTNC_GUT_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	SC_CDE ( TITLE '证券公司代码'),
	INVST_SORT ( TITLE '投资者类别'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_SMKT_FS_AVG_MNTNC_GUT_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_SNGL_IDX_STAT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_SNGL_IDX_STAT (
	STAT_DATE,
	FREQ,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_SNGL_IDX_STAT FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_SNGL_IDX_STAT;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_STK_MKT_BANKRL_CNDT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_STK_MKT_BANKRL_CNDT_IDX (
	STAT_DATE,
	FREQ,
	SC_CDE,
	INVST_SORT,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_STK_MKT_BANKRL_CNDT_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	SC_CDE ( TITLE '证券公司代码'),
	INVST_SORT ( TITLE '投资者类别'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_STK_MKT_BANKRL_CNDT_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_STK_MKT_CRDT_TRAD_AMT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_STK_MKT_CRDT_TRAD_AMT_IDX (
	STAT_DATE,
	FREQ,
	SEC_CTG,
	INVST_SORT,
	SEC_EXCH_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_STK_MKT_CRDT_TRAD_AMT_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	SEC_CTG ( TITLE '证券类别'),
	INVST_SORT ( TITLE '投资者类别'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_STK_MKT_CRDT_TRAD_AMT_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_STK_OPT_INVST_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_STK_OPT_INVST_VOL (
	STAT_DATE,
	FREQ,
	INVST_TYPE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_STK_OPT_INVST_VOL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	INVST_TYPE ( TITLE '投资者类型'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_STK_OPT_INVST_VOL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_STK_OPT_TRAD_PSTN_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_STK_OPT_TRAD_PSTN_ACCT_VOL (
	STAT_DATE,
	FREQ,
	INVST_TYPE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_STK_OPT_TRAD_PSTN_ACCT_VOL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	INVST_TYPE ( TITLE '投资者类型'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_STK_OPT_TRAD_PSTN_ACCT_VOL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_STK_PLG_REPO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_STK_PLG_REPO (
	STAT_DATE,
	FREQ,
	LSTN_BORD,
	HDGS_CLSF,
	SEC_EXCH_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_STK_PLG_REPO FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	LSTN_BORD ( TITLE '上市板块'),
	HDGS_CLSF ( TITLE '控股分类'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_STK_PLG_REPO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_STK_TRAD_BY_INVST_IDSTR;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_STK_TRAD_BY_INVST_IDSTR (
	STAT_DATE,
	FREQ,
	STK_TYPE,
	LSTN_BORD,
	IC,
	SEC_EXCH_CDE,
	STK_INVST_SORT,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_STK_TRAD_BY_INVST_IDSTR FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	STK_TYPE ( TITLE '股份类型'),
	LSTN_BORD ( TITLE '上市板块'),
	IC ( TITLE '行业分类'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	STK_INVST_SORT ( TITLE '股票投资者类别'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_STK_TRAD_BY_INVST_IDSTR;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_STK_TRAD_BY_PPDM;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.KPI_STK_TRAD_BY_PPDM (
	STAT_DATE,
	FREQ,
	STK_TYPE,
	LSTN_BORD,
	HDGS_CLSF,
	SEC_EXCH_CDE,
	REG_JUR,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_STK_TRAD_BY_PPDM FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FREQ ( TITLE '频度'),
	STK_TYPE ( TITLE '股份类型'),
	LSTN_BORD ( TITLE '上市板块'),
	HDGS_CLSF ( TITLE '控股分类'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	REG_JUR ( TITLE '监管辖区'),
	IDX_CDE ( TITLE '指标编码'),
	IDX_VAL ( TITLE '指标值')
 from  nsPUBMart.KPI_STK_TRAD_BY_PPDM;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_COMP_FINA_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_COMP_FINA_IDX (
	RPT_PRD,
	COMP_ID,
	STK_CDE,
	STK_ABBR,
	IDSTR_CTGR_CDE,
	IDSTR_CTGR_NAME,
	IDSTR_CLASS_CDE,
	IDSTR_CLASS_NAME,
	PPDM_CDE,
	PPDM_NAME,
	TRDT,
	HIGH_ENERGY,
	MODERN_SRVC,
	LIGHT_ASET,
	STRTG_EMERG,
	OVER_CAPACITY,
	HDGS_CLSF_CDE,
	HDGS_CLSF_NAME,
	INVNT,
	ASET_TOT_AMT,
	LBLT_TOT,
	NAST,
	CAP,
	BIZ_ENING,
	SELL_CHRG,
	MNGMT_CHRG,
	FINA_CHRG,
	BIZ_PRFT,
	PRFT_TOT_AMT,
	INCM_TAX,
	BIZ_TOT_ENING,
	NET_PRFT,
	NET_PRFT_TOT_AMT,
	N_ALLOT_PRFT,
	OA_CASH_FLOW_NET_AMT,
	IA_CASH_FLOW_NET_AMT,
	FA_CASH_FLOW_NET_AMT,
	LIST_INDC,
	ASET_LBLT_RATE,
	TOT_ASET_YLD,
	NAST_YLD,
	BIZ_ENING_PRFT_RATE,
	INVNT_TNOV_RATE,
	ASET_TOT_AMT_EOLY,
	NAST_EOLY,
	INVNT_EOLY
)
 AS LOCKING nsPUBMart.MID_COMP_FINA_IDX FOR ACCESS 
 SELECT 
	RPT_PRD ( TITLE '报告期'),
	COMP_ID ( TITLE '公司ID'),
	STK_CDE ( TITLE '股票代码'),
	STK_ABBR ( TITLE '股票简称'),
	IDSTR_CTGR_CDE ( TITLE '行业门类代码'),
	IDSTR_CTGR_NAME ( TITLE '行业门类名称'),
	IDSTR_CLASS_CDE ( TITLE '行业大类代码'),
	IDSTR_CLASS_NAME ( TITLE '行业大类名称'),
	PPDM_CDE ( TITLE '辖区代码'),
	PPDM_NAME ( TITLE '辖区名称'),
	TRDT ( TITLE '传统制造业'),
	HIGH_ENERGY ( TITLE '高耗能产业'),
	MODERN_SRVC ( TITLE '现代服务业'),
	LIGHT_ASET ( TITLE '轻资产行业'),
	STRTG_EMERG ( TITLE '战略新兴行业'),
	OVER_CAPACITY ( TITLE '落后产能行业'),
	HDGS_CLSF_CDE ( TITLE '控股分类代码'),
	HDGS_CLSF_NAME ( TITLE '控股分类名称'),
	INVNT ( TITLE '存货'),
	ASET_TOT_AMT ( TITLE '资产总额'),
	LBLT_TOT ( TITLE '负债合计'),
	NAST ( TITLE '净资产'),
	CAP ( TITLE '股本'),
	BIZ_ENING ( TITLE '营业收入'),
	SELL_CHRG ( TITLE '销售费用'),
	MNGMT_CHRG ( TITLE '管理费用'),
	FINA_CHRG ( TITLE '财务费用'),
	BIZ_PRFT ( TITLE '营业利润'),
	PRFT_TOT_AMT ( TITLE '利润总额'),
	INCM_TAX ( TITLE '所得税'),
	BIZ_TOT_ENING ( TITLE '营业总收入'),
	NET_PRFT ( TITLE '净利润'),
	NET_PRFT_TOT_AMT ( TITLE '净利润总额'),
	N_ALLOT_PRFT ( TITLE '未分配利润'),
	OA_CASH_FLOW_NET_AMT ( TITLE '经营活动产生现金流量净额'),
	IA_CASH_FLOW_NET_AMT ( TITLE '投资活动产生的现金流量净额'),
	FA_CASH_FLOW_NET_AMT ( TITLE '筹资活动产生的现金流量净额'),
	LIST_INDC ( TITLE '上市标志'),
	ASET_LBLT_RATE ( TITLE '资产负债率'),
	TOT_ASET_YLD ( TITLE '总资产收益率'),
	NAST_YLD ( TITLE '净资产收益率'),
	BIZ_ENING_PRFT_RATE ( TITLE '营业收入利润率'),
	INVNT_TNOV_RATE ( TITLE '存货周转率（单位：次）'),
	ASET_TOT_AMT_EOLY ( TITLE '资产总额_上年末'),
	NAST_EOLY ( TITLE '净资产_上年末'),
	INVNT_EOLY ( TITLE '存货_上年末')
 from	nsPUBMart.MID_COMP_FINA_IDX 
 where	STK_CDE <> '' AND STK_CDE NOT LIKE '43%' AND STK_CDE NOT LIKE '83%' ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_COMP_FINA_IDX_ALL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_COMP_FINA_IDX_ALL (
	RPT_PRD,
	COMP_ID,
	STK_CDE,
	STK_ABBR,
	IDSTR_CTGR_CDE,
	IDSTR_CTGR_NAME,
	IDSTR_CLASS_CDE,
	IDSTR_CLASS_NAME,
	PPDM_CDE,
	PPDM_NAME,
	TRDT,
	HIGH_ENERGY,
	MODERN_SRVC,
	LIGHT_ASET,
	STRTG_EMERG,
	OVER_CAPACITY,
	HDGS_CLSF_CDE,
	HDGS_CLSF_NAME,
	INVNT,
	ASET_TOT_AMT,
	LBLT_TOT,
	NAST,
	CAP,
	BIZ_ENING,
	SELL_CHRG,
	MNGMT_CHRG,
	FINA_CHRG,
	BIZ_PRFT,
	PRFT_TOT_AMT,
	INCM_TAX,
	BIZ_TOT_ENING,
	NET_PRFT,
	NET_PRFT_TOT_AMT,
	N_ALLOT_PRFT,
	OA_CASH_FLOW_NET_AMT,
	IA_CASH_FLOW_NET_AMT,
	FA_CASH_FLOW_NET_AMT,
	LIST_INDC,
	ASET_LBLT_RATE,
	TOT_ASET_YLD,
	NAST_YLD,
	BIZ_ENING_PRFT_RATE,
	INVNT_TNOV_RATE,
	ASET_TOT_AMT_EOLY,
	NAST_EOLY,
	INVNT_EOLY
)
 AS LOCKING nsPUBMart.MID_COMP_FINA_IDX FOR ACCESS 
 SELECT 
	RPT_PRD ( TITLE '报告期'),
	COMP_ID ( TITLE '公司ID'),
	STK_CDE ( TITLE '股票代码'),
	STK_ABBR ( TITLE '股票简称'),
	IDSTR_CTGR_CDE ( TITLE '行业门类代码'),
	IDSTR_CTGR_NAME ( TITLE '行业门类名称'),
	IDSTR_CLASS_CDE ( TITLE '行业大类代码'),
	IDSTR_CLASS_NAME ( TITLE '行业大类名称'),
	PPDM_CDE ( TITLE '辖区代码'),
	PPDM_NAME ( TITLE '辖区名称'),
	TRDT ( TITLE '传统制造业'),
	HIGH_ENERGY ( TITLE '高耗能产业'),
	MODERN_SRVC ( TITLE '现代服务业'),
	LIGHT_ASET ( TITLE '轻资产行业'),
	STRTG_EMERG ( TITLE '战略新兴行业'),
	OVER_CAPACITY ( TITLE '落后产能行业'),
	HDGS_CLSF_CDE ( TITLE '控股分类代码'),
	HDGS_CLSF_NAME ( TITLE '控股分类名称'),
	INVNT ( TITLE '存货'),
	ASET_TOT_AMT ( TITLE '资产总额'),
	LBLT_TOT ( TITLE '负债合计'),
	NAST ( TITLE '净资产'),
	CAP ( TITLE '股本'),
	BIZ_ENING ( TITLE '营业收入'),
	SELL_CHRG ( TITLE '销售费用'),
	MNGMT_CHRG ( TITLE '管理费用'),
	FINA_CHRG ( TITLE '财务费用'),
	BIZ_PRFT ( TITLE '营业利润'),
	PRFT_TOT_AMT ( TITLE '利润总额'),
	INCM_TAX ( TITLE '所得税'),
	BIZ_TOT_ENING ( TITLE '营业总收入'),
	NET_PRFT ( TITLE '净利润'),
	NET_PRFT_TOT_AMT ( TITLE '净利润总额'),
	N_ALLOT_PRFT ( TITLE '未分配利润'),
	OA_CASH_FLOW_NET_AMT ( TITLE '经营活动产生现金流量净额'),
	IA_CASH_FLOW_NET_AMT ( TITLE '投资活动产生的现金流量净额'),
	FA_CASH_FLOW_NET_AMT ( TITLE '筹资活动产生的现金流量净额'),
	LIST_INDC ( TITLE '上市标志'),
	ASET_LBLT_RATE ( TITLE '资产负债率'),
	TOT_ASET_YLD ( TITLE '总资产收益率'),
	NAST_YLD ( TITLE '净资产收益率'),
	BIZ_ENING_PRFT_RATE ( TITLE '营业收入利润率'),
	INVNT_TNOV_RATE ( TITLE '存货周转率（单位：次）'),
	ASET_TOT_AMT_EOLY ( TITLE '资产总额_上年末'),
	NAST_EOLY ( TITLE '净资产_上年末'),
	INVNT_EOLY ( TITLE '存货_上年末')
 from  nsPUBMart.MID_COMP_FINA_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_CRDT_ACCT_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_CRDT_ACCT_TRAD (
	TRAD_DATE,
	SEC_EXCH_CDE,
	SEC_ACCT,
	SEC_CDE,
	CRDT_TRAD_TYPE,
	TRAD_VOL,
	TRAD_AMT,
	TRAD_CNT
)
 AS LOCKING nsPUBMart.MID_CRDT_ACCT_TRAD FOR ACCESS 
 SELECT 
	TRAD_DATE ( TITLE '成交日期'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	SEC_ACCT ( TITLE '证券账户'),
	SEC_CDE ( TITLE '证券代码'),
	CRDT_TRAD_TYPE ( TITLE '信用交易类型'),
	TRAD_VOL ( TITLE '成交数量'),
	TRAD_AMT ( TITLE '成交金额'),
	TRAD_CNT ( TITLE '交易笔数')
 from  nsPUBMart.MID_CRDT_ACCT_TRAD;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_DOM_IDX_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_DOM_IDX_INFO (
	BIZ_DATE,
	IDX_CDE,
	IDX_NAME,
	OPN_POINT,
	PRE_CLS_POINT,
	CLS_POINT,
	MAX_POINT,
	MIN_POINT,
	D_CHG_RATE,
	Y_CHG_RATE,
	RETN,
	TRAD_AMT,
	TRAD_QTT,
	TCAP,
	NEGT_CAP,
	TOT_MKT_VAL,
	NEGT_MKT_VAL,
	MKT_VAL_TNOV_RATE,
	TRAD_QTT_TNOV_RATE,
	AVG_STK_PRC,
	DATA_SRC_TYPE
)
 AS LOCKING nsPUBMart.MID_DOM_IDX_INFO FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	IDX_CDE ( TITLE '指数代码'),
	IDX_NAME ( TITLE '指数名称'),
	OPN_POINT ( TITLE '开盘点数'),
	PRE_CLS_POINT ( TITLE '前收盘点数'),
	CLS_POINT ( TITLE '收盘点数'),
	MAX_POINT ( TITLE '最高点数'),
	MIN_POINT ( TITLE '最低点数'),
	D_CHG_RATE ( TITLE '日涨跌幅'),
	Y_CHG_RATE ( TITLE '年涨跌幅'),
	RETN ( TITLE '对数收益率'),
	TRAD_AMT ( TITLE '成交金额'),
	TRAD_QTT ( TITLE '成交量'),
	TCAP ( TITLE '总股本'),
	NEGT_CAP ( TITLE '流通股本'),
	TOT_MKT_VAL ( TITLE '总市值'),
	NEGT_MKT_VAL ( TITLE '流通市值'),
	MKT_VAL_TNOV_RATE ( TITLE '市值换手率'),
	TRAD_QTT_TNOV_RATE ( TITLE '成交量换手率'),
	AVG_STK_PRC ( TITLE '平均股价'),
	DATA_SRC_TYPE ( TITLE '数据源类型')
 from  nsPUBMart.MID_DOM_IDX_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_DOM_IDX_INFO_0;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPUBVIEW.MID_DOM_IDX_INFO_0 (
BIZ_DATE
,IDX_CDE
,RETN
,TRAD_QTT
,TRAD_AMT)
AS LOCKING NSPUBMART.MID_DOM_IDX_INFO   FOR ACCESS
   LOCKING NSPUBMART.MID_DOM_IDX_INFO_0 FOR ACCESS
SELECT
BIZ_DATE  (TITLE '业务日期')
,IDX_CDE  (TITLE '指数代码')
,RETN     (TITLE '对数收益率')
,TRAD_QTT (TITLE '成交量')
,TRAD_AMT (TITLE '成交金额')
FROM NSPUBMART.MID_DOM_IDX_INFO
UNION ALL
SELECT
BIZ_DATE  
,IDX_CDE  
,RETN     
,TRAD_QTT 
,TRAD_AMT 
FROM NSPUBMART.MID_DOM_IDX_INFO_0;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_EXCH_BOND_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_EXCH_BOND_INFO (
	STAT_DATE,
	ISS_B_DATE,
	BOND_CDE,
	BOND_NAME,
	SEC_EXCH_CDE,
	BOND_CLSF_MIDL_CERTF,
	BOND_MKT_VAL,
	BOND_PAR_VAL,
	CNCTR_TRAD_PAR_VAL,
	CNCTR_TRAD_AMT,
	CNCTR_TRAD_CNT
)
 AS LOCKING nsPUBMart.MID_EXCH_BOND_INFO FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	ISS_B_DATE ( TITLE '发行起始日期'),
	BOND_CDE ( TITLE '债券代码'),
	BOND_NAME ( TITLE '债券名称'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	BOND_CLSF_MIDL_CERTF ( TITLE '债券分类_中证'),
	BOND_MKT_VAL ( TITLE '债券市值'),
	BOND_PAR_VAL ( TITLE '债券面值'),
	CNCTR_TRAD_PAR_VAL ( TITLE '集中交易面值'),
	CNCTR_TRAD_AMT ( TITLE '集中交易金额'),
	CNCTR_TRAD_CNT ( TITLE '集中交易笔数')
 from  nsPUBMart.MID_EXCH_BOND_INFO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_EXCH_RT_INTR_RT_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_EXCH_RT_INTR_RT_INFO (
	BIZ_DATE,
	IDX_CDE,
	IDX_NAME,
	TYP,
	IDX_VAL
)
 AS LOCKING nsPUBMart.MID_EXCH_RT_INTR_RT_INFO FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	IDX_CDE ( TITLE '指标代码'),
	IDX_NAME ( TITLE '指标名称'),
	TYP ( TITLE '类型'),
	IDX_VAL ( TITLE '指标值')
 FROM  nsPUBMart.MID_EXCH_RT_INTR_RT_INFO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_FCPTL_CRMGN_INVST_SEC_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_FCPTL_CRMGN_INVST_SEC_TRAD (
	STAT_DATE,
	SEC_CDE,
	OAP_ACCT_NBR,
	SEC_ACCT_NBR,
	SEC_EXCH_CDE,
	SEC_CLSF,
	SEC_ACCT_SORT,
	FCPTL_INVST_ID,
	CRS_MGN_INVST_ID,
	BUY_VOL,
	BUY_AMT,
	SAL_VOL,
	SAL_AMT,
	BUY_AMT_MKT_PRC,
	SAL_AMT_MKT_PRC,
	BUY_CNT,
	SAL_CNT,
	ETF_AFP_SHR,
	ETF_REDEM_SHR
)
 AS LOCKING nsPUBMart.MID_FCPTL_CRMGN_INVST_SEC_TRAD FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	SEC_CDE ( TITLE '证券代码'),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	SEC_CLSF ( TITLE '证券分类'),
	SEC_ACCT_SORT ( TITLE '证券账户类别'),
	FCPTL_INVST_ID ( TITLE '外资投资者标识'),
	CRS_MGN_INVST_ID ( TITLE '跨市场投资者标识'),
	BUY_VOL ( TITLE '买入数量'),
	BUY_AMT ( TITLE '买入金额'),
	SAL_VOL ( TITLE '卖出数量'),
	SAL_AMT ( TITLE '卖出金额'),
	BUY_AMT_MKT_PRC ( TITLE '买入金额_市价'),
	SAL_AMT_MKT_PRC ( TITLE '卖出金额_市价'),
	BUY_CNT ( TITLE '买入笔数'),
	SAL_CNT ( TITLE '卖出笔数'),
	ETF_AFP_SHR ( TITLE 'ETF申购份额'),
	ETF_REDEM_SHR ( TITLE 'ETF赎回份额')
 from  nsPUBMart.MID_FCPTL_CRMGN_INVST_SEC_TRAD;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_FCPTL_INVST_FUTRS_CR_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_FCPTL_INVST_FUTRS_CR_PSTN (
	STAT_DATE,
	VART_CNTR,
	VART_CDE,
	FUTRS_UNFY_OPN_ACCT_CUST_CDE,
	EXCH_CUST_CDE,
	EXCH_NBR,
	FC_MEMB_NBR,
	TRAD_INDC,
	PSTN_AMT,
	PSTN_QTT,
	TRAD_DPST
)
 AS LOCKING nsPUBMart.MID_FCPTL_INVST_FUTRS_CR_PSTN FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	VART_CNTR ( TITLE '品种合约'),
	VART_CDE ( TITLE '品种代码'),
	FUTRS_UNFY_OPN_ACCT_CUST_CDE ( TITLE '期货统一开户客户编码'),
	EXCH_CUST_CDE ( TITLE '交易所客户编码'),
	EXCH_NBR ( TITLE '交易所编号'),
	FC_MEMB_NBR ( TITLE '期货公司会员号'),
	TRAD_INDC ( TITLE '买卖标志'),
	PSTN_AMT ( TITLE '持仓金额'),
	PSTN_QTT ( TITLE '持仓量'),
	TRAD_DPST ( TITLE '交易保证金')
 from  nsPUBMart.MID_FCPTL_INVST_FUTRS_CR_PSTN;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_FCPTL_INVST_FUTRS_CR_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_FCPTL_INVST_FUTRS_CR_TRAD (
	STAT_DATE,
	VART_CNTR,
	VART_CDE,
	FUTRS_UNFY_OPN_ACCT_CUST_CDE,
	EXCH_CUST_CDE,
	EXCH_NBR,
	FC_MEMB_NBR,
	TRAD_INDC,
	KPWH_INDC,
	TRAD_AMT,
	TRAD_QTT
)
 AS LOCKING nsPUBMart.MID_FCPTL_INVST_FUTRS_CR_TRAD FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	VART_CNTR ( TITLE '品种合约'),
	VART_CDE ( TITLE '品种代码'),
	FUTRS_UNFY_OPN_ACCT_CUST_CDE ( TITLE '期货统一开户客户编码'),
	EXCH_CUST_CDE ( TITLE '交易所客户编码'),
	EXCH_NBR ( TITLE '交易所编号'),
	FC_MEMB_NBR ( TITLE '期货公司会员号'),
	TRAD_INDC ( TITLE '买卖标志'),
	KPWH_INDC ( TITLE '开平仓标志'),
	TRAD_AMT ( TITLE '成交金额'),
	TRAD_QTT ( TITLE '成交量')
 from  nsPUBMart.MID_FCPTL_INVST_FUTRS_CR_TRAD;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_FCPTL_INVST_SMT_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_FCPTL_INVST_SMT_BAL (
	STAT_DATE,
	SEC_ACCT_NBR,
	SEC_CDE,
	SC_CDE,
	SEC_EXCH_CDE,
	FIN_BAL,
	SEC_LN_BAL
)
 AS LOCKING nsPUBMart.MID_FCPTL_INVST_SMT_BAL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	SEC_CDE ( TITLE '证券代码'),
	SC_CDE ( TITLE '证券公司代码'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	FIN_BAL ( TITLE '融资余额'),
	SEC_LN_BAL ( TITLE '融券余额')
 from  nsPUBMart.MID_FCPTL_INVST_SMT_BAL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_FCRS_MGN_INVST_SEC_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--中间表视图(12张)
REPLACE VIEW nsPUBView.MID_FCRS_MGN_INVST_SEC_PSTN (
	STAT_DATE,
	SEC_CDE,
	OAP_ACCT_NBR,
	SEC_ACCT_NBR,
	SEC_EXCH_CDE,
	SEC_ACCT_SORT,
	CAP_TYPE,
	SEC_CLSF,
	FCPTL_INVST_ID,
	CRS_MGN_INVST_ID,
	PSTN_VOL,
	PSTN_MKT_VAL
)
 AS LOCKING nsPUBMart.MID_FCRS_MGN_INVST_SEC_PSTN FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	SEC_CDE ( TITLE '证券代码 '),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	SEC_ACCT_SORT ( TITLE '证券账户类别'),
	CAP_TYPE ( TITLE '股本类型'),
	SEC_CLSF ( TITLE '证券分类'),
	FCPTL_INVST_ID ( TITLE '外资投资者标识'),
	CRS_MGN_INVST_ID ( TITLE '跨市场投资者标识'),
	PSTN_VOL ( TITLE '持仓数量'),
	PSTN_MKT_VAL ( TITLE '持仓市值')
 from  nsPUBMart.MID_FCRS_MGN_INVST_SEC_PSTN;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_FC_SYNT_INFO_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_FC_SYNT_INFO_M (
	STAT_DATE,
	FC_CDE,
	FC_NAME,
	FC_PPDM_CDE,
	FC_PPDM_NAME,
	BRCH_VOL,
	END_FUTRS_PRACT_PSN_VOL,
	TOT_ASET,
	NET_CAP,
	NAST,
	BIZ_ENING,
	BIZ_EXPDT,
	PRFT_TOT_AMT,
	NET_PRFT,
	AVG_FINA_LVRG
)
 AS LOCKING nsPUBMart.MID_FC_SYNT_INFO_M FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FC_CDE ( TITLE '期货公司代码'),
	FC_NAME ( TITLE '期货公司名称'),
	FC_PPDM_CDE ( TITLE '期货公司辖区代码'),
	FC_PPDM_NAME ( TITLE '期货公司辖区名称'),
	BRCH_VOL ( TITLE '营业部数量'),
	END_FUTRS_PRACT_PSN_VOL ( TITLE '期末期货从业人员数量'),
	TOT_ASET ( TITLE '总资产'),
	NET_CAP ( TITLE '净资本'),
	NAST ( TITLE '净资产'),
	BIZ_ENING ( TITLE '营业收入'),
	BIZ_EXPDT ( TITLE '营业支出'),
	PRFT_TOT_AMT ( TITLE '利润总额'),
	NET_PRFT ( TITLE '净利润'),
	AVG_FINA_LVRG ( TITLE '平均财务杠杆')
 from  nsPUBMart.MID_FC_SYNT_INFO_M;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_FPINVST_FMKT_CUSTE_DW_CNDT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_FPINVST_FMKT_CUSTE_DW_CNDT (
	STAT_DATE,
	FUTRS_UNFY_OPN_ACCT_CUST_CDE,
	CUST_WTHDR,
	CUST_DPST,
	CUST_BANKRL_EQUT
)
 AS LOCKING nsPUBMart.MID_FPINVST_FMKT_CUSTE_DW_CNDT FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FUTRS_UNFY_OPN_ACCT_CUST_CDE ( TITLE '期货统一开户客户编码'),
	CUST_WTHDR ( TITLE '客户出金'),
	CUST_DPST ( TITLE '客户入金'),
	CUST_BANKRL_EQUT ( TITLE '客户资金权益')
 from  nsPUBMart.MID_FPINVST_FMKT_CUSTE_DW_CNDT;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_FPINVST_SECBKRL_TRAD_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_FPINVST_SECBKRL_TRAD_BAL (
	STAT_DATE,
	SC_CDE,
	SEC_ACCT_NBR,
	SEC_EXCH_CDE,
	BANKRL_SORT,
	STC_AMT,
	CTS_AMT,
	SETL_BANKRL_BAL
)
 AS LOCKING nsPUBMart.MID_FPINVST_SECBKRL_TRAD_BAL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	SC_CDE ( TITLE '证券公司代码'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	BANKRL_SORT ( TITLE '资金类别'),
	STC_AMT ( TITLE '银转证金额'),
	CTS_AMT ( TITLE '证转银金额'),
	SETL_BANKRL_BAL ( TITLE '结算资金余额')
 from  nsPUBMart.MID_FPINVST_SECBKRL_TRAD_BAL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_HGT_STK_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_HGT_STK_INFO (
	BIZ_DATE,
	BIZ_INDC,
	SEC_CDE,
	SEC_NAME,
	AH_ID,
	SEC_EXCH_CDE,
	PRE_CLS_PRC,
	CLS_PRC,
	TCAP,
	LSTN_NEGT_CAP,
	TOT_MKT_VAL,
	LSTN_NEGT_MKT_VAL,
	MKT_VAL_TNOV_RATE,
	CNVT_PREM_RATE,
	D_CHG_RATE,
	BUY_QTT,
	SQTT,
	BUY_AMT,
	SAL_AMT,
	TRAD_QTT_FULL_MKT,
	TRAD_AMT_FULL_MKT,
	OVRS_TRAD_QTT,
	OVRS_AMT
)
 AS LOCKING nsPUBMart.MID_HGT_STK_INFO FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	BIZ_INDC ( TITLE '业务标志'),
	SEC_CDE ( TITLE '证券代码'),
	SEC_NAME ( TITLE '证券名称'),
	AH_ID ( TITLE 'A+H标识'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	PRE_CLS_PRC ( TITLE '前收盘价'),
	CLS_PRC ( TITLE '收盘价'),
	TCAP ( TITLE '总股本'),
	LSTN_NEGT_CAP ( TITLE '已上市流通股本'),
	TOT_MKT_VAL ( TITLE '总市值'),
	LSTN_NEGT_MKT_VAL ( TITLE '已上市流通市值'),
	MKT_VAL_TNOV_RATE ( TITLE '市值换手率'),
	CNVT_PREM_RATE ( TITLE '折溢价率'),
	D_CHG_RATE ( TITLE '日涨跌幅'),
	BUY_QTT ( TITLE '买入量'),
	SQTT ( TITLE '卖出量'),
	BUY_AMT ( TITLE '买入金额'),
	SAL_AMT ( TITLE '卖出金额'),
	TRAD_QTT_FULL_MKT ( TITLE '成交量_全市场'),
	TRAD_AMT_FULL_MKT ( TITLE '成交金额_全市场'),
	OVRS_TRAD_QTT ( TITLE '卖空成交量'),
	OVRS_AMT ( TITLE '卖空金额')
 from  nsPUBMart.MID_HGT_STK_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INTN_IDX_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INTN_IDX_INFO (
	BIZ_DATE,
	IDX_CDE,
	IDX_NAME,
	OPN_POINT,
	CLS_POINT,
	MAX_POINT,
	MIN_POINT,
	TRAD_QTT,
	TRAD_AMT,
	MKT_VAL,
	PE,
	PB,
	DIVD_RATE,
	RETN,
	D_CHG_RATE,
	W_CHG_RATE,
	M_CHG_RATE,
	Y_CHG_RATE
)
 AS LOCKING nsPUBMart.MID_INTN_IDX_INFO FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	IDX_CDE ( TITLE '指数代码'),
	IDX_NAME ( TITLE '指数名称'),
	OPN_POINT ( TITLE '开盘点数'),
	CLS_POINT ( TITLE '收盘点数'),
	MAX_POINT ( TITLE '最高点数'),
	MIN_POINT ( TITLE '最低点数'),
	TRAD_QTT ( TITLE '成交量'),
	TRAD_AMT ( TITLE '成交金额'),
	MKT_VAL ( TITLE '市值'),
	PE ( TITLE '市盈率'),
	PB ( TITLE '市净率'),
	DIVD_RATE ( TITLE '股息率'),
	RETN ( TITLE '对数收益率'),
	D_CHG_RATE ( TITLE '日涨跌幅'),
	W_CHG_RATE ( TITLE '周涨跌幅'),
	M_CHG_RATE ( TITLE '月涨跌幅'),
	Y_CHG_RATE ( TITLE '年涨跌幅')
 from  nsPUBMart.MID_INTN_IDX_INFO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_AFP_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_AFP_INFO (
	SEC_ACCT,
	EXCH_CDE,
	OAP_ACCT,
	SEC_CDE,
	AFP_CDE,
	AFP_MODE,
	AFP_DATE,
	AFP_TIME,
	DATA_DATE,
	VLD_AFP_VOL,
	AFP_PRC,
	CHK_MKT_CPT
)
 AS LOCKING nsPUBMart.MID_INVST_AFP_INFO FOR ACCESS 
 SELECT 
	SEC_ACCT ( TITLE '证券账户'),
	EXCH_CDE ( TITLE '交易所代码'),
	OAP_ACCT ( TITLE '一码通账户'),
	SEC_CDE ( TITLE '证券代码'),
	AFP_CDE ( TITLE '申购代码'),
	AFP_MODE ( TITLE '申购方式'),
	AFP_DATE ( TITLE '申购日期'),
	AFP_TIME ( TITLE '申购时间'),
	DATA_DATE ( TITLE '数据日期'),
	VLD_AFP_VOL ( TITLE '有效申购数量'),
	AFP_PRC ( TITLE '申购价格'),
	CHK_MKT_CPT ( TITLE '验股市值')
 from  nsPUBMart.MID_INVST_AFP_INFO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_ETF_AFP_REDEM;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_ETF_AFP_REDEM (
	STAT_DATE,
	SEC_CDE,
	INVST_TYPE,
	SEC_NAME,
	EXCH_CDE,
	AFP_SHR,
	REDEM_SHR,
	BUY_AMT,
	SAL_AMT,
	AFP_CNT,
	REDEM_CNT,
	BUY_CNT,
	SAL_CNT
)
 AS LOCKING nsPUBMart.MID_INVST_ETF_AFP_REDEM FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	SEC_CDE ( TITLE '证券代码'),
	INVST_TYPE ( TITLE '投资者类型'),
	SEC_NAME ( TITLE '证券名称'),
	EXCH_CDE ( TITLE '交易所代码'),
	AFP_SHR ( TITLE '申购份额'),
	REDEM_SHR ( TITLE '赎回份额'),
	BUY_AMT ( TITLE '买入金额'),
	SAL_AMT ( TITLE '卖出金额'),
	AFP_CNT ( TITLE '申购笔数'),
	REDEM_CNT ( TITLE '赎回笔数'),
	BUY_CNT ( TITLE '买入笔数'),
	SAL_CNT ( TITLE '卖出笔数')
 from  nsPUBMart.MID_INVST_ETF_AFP_REDEM ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_FMKT_CUSTE_DW_CNDT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_FMKT_CUSTE_DW_CNDT (
	STAT_DATE,
	FUTRS_INVST_SORT,
	CUST_WTHDR,
	CUST_DPST,
	CUST_BANKRL_EQUT
)
 AS LOCKING nsPUBMart.MID_INVST_FMKT_CUSTE_DW_CNDT FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	FUTRS_INVST_SORT ( TITLE '期货投资者类别'),
	CUST_WTHDR ( TITLE '客户出金'),
	CUST_DPST ( TITLE '客户入金'),
	CUST_BANKRL_EQUT ( TITLE '客户资金权益')
 from  nsPUBMart.MID_INVST_FMKT_CUSTE_DW_CNDT;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_FUTRS_CNTR_PSTN_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_FUTRS_CNTR_PSTN_TB (
	STAT_DATE,
	VART_CNTR,
	VART_CDE,
	VART_CHN_NAME,
	VART_SCND_CLSF,
	EXCH_NBR,
	FC_SETL_MEMB_NBR,
	FUTRS_INVST_SORT,
	CRS_MGN_INVST_SORT,
	TRAD_INDC,
	CRS_MGN_INVST_ID,
	PSTN_AMT,
	PSTN_QTT,
	TRAD_DPST
)
 AS LOCKING nsPUBMart.MID_INVST_FUTRS_CNTR_PSTN_TB FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	VART_CNTR ( TITLE '品种合约'),
	VART_CDE ( TITLE '品种代码'),
	VART_CHN_NAME ( TITLE '品种中文名'),
	VART_SCND_CLSF ( TITLE '品种二级分类'),
	EXCH_NBR ( TITLE '交易所编号'),
	FC_SETL_MEMB_NBR ( TITLE '期货公司结算会员号'),
	FUTRS_INVST_SORT ( TITLE '期货投资者类别'),
	CRS_MGN_INVST_SORT ( TITLE '跨市场投资者类别'),
	TRAD_INDC ( TITLE '买卖标志'),
	CRS_MGN_INVST_ID ( TITLE '跨市场投资者标识'),
	PSTN_AMT ( TITLE '持仓金额'),
	PSTN_QTT ( TITLE '持仓量'),
	TRAD_DPST ( TITLE '交易保证金')
 from  nsPUBMart.MID_INVST_FUTRS_CNTR_PSTN_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_FUTRS_CNTR_TRAD_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_FUTRS_CNTR_TRAD_TB (
	STAT_DATE,
	VART_CNTR,
	VART_CDE,
	VART_CHN_NAME,
	VART_SCND_CLSF,
	EXCH_NBR,
	FC_SETL_MEMB_NBR,
	FUTRS_INVST_SORT,
	CRS_MGN_INVST_SORT,
	TRAD_INDC,
	KPWH_INDC,
	CRS_MGN_INVST_ID,
	TRAD_AMT,
	TRAD_QTT
)
 AS LOCKING nsPUBMart.MID_INVST_FUTRS_CNTR_TRAD_TB FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	VART_CNTR ( TITLE '品种合约'),
	VART_CDE ( TITLE '品种代码'),
	VART_CHN_NAME ( TITLE '品种中文名'),
	VART_SCND_CLSF ( TITLE '品种二级分类'),
	EXCH_NBR ( TITLE '交易所编号'),
	FC_SETL_MEMB_NBR ( TITLE '期货公司结算会员号'),
	FUTRS_INVST_SORT ( TITLE '期货投资者类别'),
	CRS_MGN_INVST_SORT ( TITLE '跨市场投资者类别'),
	TRAD_INDC ( TITLE '买卖标志'),
	KPWH_INDC ( TITLE '开平仓标志'),
	CRS_MGN_INVST_ID ( TITLE '跨市场投资者标识'),
	TRAD_AMT ( TITLE '成交金额'),
	TRAD_QTT ( TITLE '成交量')
 from  nsPUBMart.MID_INVST_FUTRS_CNTR_TRAD_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_HKST_TRAD_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_HKST_TRAD_PSTN (
  STAT_DATE,
  BIZ_INDC,
  SEC_CDE,
  SEC_NAME,
  STK_INVST_SORT,
  BUY_VOL,
  SAL_VOL,
  BUY_AMT_ORIG_CRNC,
  SAL_AMT_ORIG_CRNC,
  BUY_AMT_RMB,
  SAL_AMT_RMB,
  BUY_CNT,
  SAL_CNT,
  PSTN_VOL,
  PSTN_MKT_VAL_ORIG_CRNC,
  PSTN_MKT_VAL_RMB
)
 AS LOCKING nsPUBMart.MID_INVST_HKST_TRAD_PSTN FOR ACCESS 
 SELECT 
  STAT_DATE ( TITLE '统计日期'),
  BIZ_INDC ( TITLE '业务标志'),
  SEC_CDE ( TITLE '证券代码'),
  SEC_NAME ( TITLE '证券名称'),
  STK_INVST_SORT ( TITLE '股票投资者类别'),
  BUY_VOL ( TITLE '买入数量'),
  SAL_VOL ( TITLE '卖出数量'),
  BUY_AMT_ORIG_CRNC ( TITLE '买入金额_原币'),
  SAL_AMT_ORIG_CRNC ( TITLE '卖出金额_原币'),
  BUY_AMT_RMB ( TITLE '买入金额_人民币'),
  SAL_AMT_RMB ( TITLE '卖出金额_人民币'),
  BUY_CNT ( TITLE '买入笔数'),
  SAL_CNT ( TITLE '卖出笔数'),
  PSTN_VOL ( TITLE '持仓数量'),
  PSTN_MKT_VAL_ORIG_CRNC ( TITLE '持仓市值_原币'),
  PSTN_MKT_VAL_RMB ( TITLE '持仓市值_人民币')
 from  nsPUBMart.MID_INVST_HKST_TRAD_PSTN;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_HKST_TRAD_PSTN_LVL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_HKST_TRAD_PSTN_LVL2 (
  STAT_DATE
  ,BIZ_INDC
  ,SEC_CDE
  ,SEC_NAME
  --,SEC_EXCH_CDE
  ,STK_INVST_SORT
  ,BUY_VOL
  ,SAL_VOL
  ,BUY_AMT_ORIG_CRNC
  ,SAL_AMT_ORIG_CRNC
  ,BUY_AMT_RMB
  ,SAL_AMT_RMB
  ,BUY_CNT
  ,SAL_CNT
  ,PSTN_VOL
  ,PSTN_MKT_VAL_ORIG_CRNC
  ,PSTN_MKT_VAL_RMB
)
 AS
  SELECT
  stat_date
  ,biz_indc
  ,sec_cde
  ,sec_name
  -- ,sec_exch_cde
  --,SUBSTR(stk_invst_sort,1,2)||'0'  AS  stk_invst_sort    --股票投资者类别
  ,SUBSTR(stk_invst_sort,1,2)||'00'  AS  stk_invst_sort    --股票投资者类别
  ,buy_vol
  ,sal_vol
  ,buy_amt_orig_crnc
  ,sal_amt_orig_crnc
  ,buy_amt_rmb
  ,sal_amt_rmb
  ,buy_cnt
  ,sal_cnt
  ,pstn_vol
  ,pstn_mkt_val_orig_crnc
  ,pstn_mkt_val_rmb
 FROM  nsPUBView.MID_INVST_HKST_TRAD_PSTN;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_IPO_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_IPO_INFO (
	SEC_ACCT,
	EXCH_CDE,
	OAP_ACCT,
	SEC_CDE,
	BD_CDE,
	AFP_MODE,
	AFP_DATE,
	VLD_AFP_VOL,
	BD_DATE,
	BD_VOL
)
 AS LOCKING nsPUBMart.MID_INVST_IPO_INFO FOR ACCESS 
 SELECT 
	SEC_ACCT ( TITLE '证券账户'),
	EXCH_CDE ( TITLE '交易所代码'),
	OAP_ACCT ( TITLE '一码通账户'),
	SEC_CDE ( TITLE '证券代码'),
	BD_CDE ( TITLE '中签代码'),
	AFP_MODE ( TITLE '申购方式'),
	AFP_DATE ( TITLE '申购日期'),
	VLD_AFP_VOL ( TITLE '有效申购数量'),
	BD_DATE ( TITLE '中签日期'),
	BD_VOL ( TITLE '中签数量')
 from  nsPUBMart.MID_INVST_IPO_INFO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_IPO_TRAD_STAT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_IPO_TRAD_STAT (
	SEC_ACCT,
	EXCH_CDE,
	OAP_ACCT,
	SEC_CDE,
	BD_VOL,
	IPO_LIST_DAYS,
	SAL_DATE,
	SAL_VOL,
	SAL_AMT,
	ACM_SAL_VOL,
	ACM_SAL_AMT
)
 AS LOCKING nsPUBMart.MID_INVST_IPO_TRAD_STAT FOR ACCESS 
 SELECT 
	SEC_ACCT ( TITLE '证券账户'),
	EXCH_CDE ( TITLE '交易所代码'),
	OAP_ACCT ( TITLE '一码通账户'),
	SEC_CDE ( TITLE '证券代码'),
	BD_VOL ( TITLE '中签数量'),
	IPO_LIST_DAYS ( TITLE '新股上市天数'),
	SAL_DATE ( TITLE '卖出日期'),
	SAL_VOL ( TITLE '卖出数量'),
	SAL_AMT ( TITLE '卖出金额'),
	ACM_SAL_VOL ( TITLE '累计卖出数量'),
	ACM_SAL_AMT ( TITLE '累计卖出金额')
 from  nsPUBMart.MID_INVST_IPO_TRAD_STAT ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_SEC_BANKRL_TRAD_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_SEC_BANKRL_TRAD_BAL (
	STAT_DATE,
	SC_CDE,
	INVST_SORT,
	BANKRL_SORT,
	STC_AMT,
	CTS_AMT,
	SETL_BANKRL_BAL
)
 AS LOCKING nsPUBMart.MID_INVST_SEC_BANKRL_TRAD_BAL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	SC_CDE ( TITLE '证券公司代码'),
	INVST_SORT ( TITLE '投资者类别'),
	BANKRL_SORT ( TITLE '资金类别'),
	STC_AMT ( TITLE '银转证金额'),
	CTS_AMT ( TITLE '证转银金额'),
	SETL_BANKRL_BAL ( TITLE '结算资金余额')
 from  nsPUBMart.MID_INVST_SEC_BANKRL_TRAD_BAL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_SEC_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_SEC_PSTN (
  STAT_DATE,
  SEC_CDE,
  SEC_EXCH_CDE,
  STK_INVST_SORT,
  BNK_ID,
  SEC_ACCT_SORT,
  CAP_TYPE,
  SEC_CLSF,
  PSTN_VOL,
  PSTN_MKT_VAL_ORIG_CRNC
)
 AS LOCKING nsPUBMart.MID_INVST_SEC_PSTN FOR ACCESS 
 SELECT 
  STAT_DATE ( TITLE '统计日期'),
  SEC_CDE ( TITLE '证券代码'),
  SEC_EXCH_CDE ( TITLE '证券交易所代码'),
  STK_INVST_SORT ( TITLE '股票投资者类别'),
  BNK_ID ( TITLE '银行标识'),
  SEC_ACCT_SORT ( TITLE '证券账户类别'),
  CAP_TYPE ( TITLE '股本类型'),
  SEC_CLSF ( TITLE '证券分类'),
  PSTN_VOL ( TITLE '持仓数量'),
  PSTN_MKT_VAL_ORIG_CRNC ( TITLE '持仓市值_原币')
 from  nsPUBMart.MID_INVST_SEC_PSTN;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_SEC_PSTN_LVL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_SEC_PSTN_LVL2 (
  STAT_DATE
  ,SEC_CDE
  ,SEC_EXCH_CDE
  ,STK_INVST_SORT
  ,BNK_ID
  ,SEC_ACCT_SORT
  ,CAP_TYPE
  ,SEC_CLSF
  ,PSTN_VOL
  ,PSTN_MKT_VAL_ORIG_CRNC
)
AS
 SELECT 
  stat_date
  ,sec_cde
  ,sec_exch_cde
 -- ,SUBSTR(stk_invst_sort,1,2)||'0' AS stk_invst_sort
  ,SUBSTR(stk_invst_sort,1,2)||'00' AS stk_invst_sort
  ,bnk_id
  ,sec_acct_sort
  ,cap_type
  ,sec_clsf
  ,pstn_vol
  ,pstn_mkt_val_orig_crnc
 FROM  nsPUBView.MID_INVST_SEC_PSTN;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_SEC_PSTN_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_SEC_PSTN_M (
  STAT_M,
  SEC_CDE,
  SEC_EXCH_CDE,
  STK_INVST_SORT,
  BNK_ID,
  SEC_ACCT_SORT,
  CAP_TYPE,
  SEC_CLSF,
  INVST_OPN_ACCT_PPDM,
  PSTN_VOL,
  PSTN_MKT_VAL_ORIG_CRNC
)
 AS LOCKING nsPUBMart.MID_INVST_SEC_PSTN_M FOR ACCESS 
 SELECT 
  STAT_M ( TITLE '统计月份'),
  SEC_CDE ( TITLE '证券代码'),
  SEC_EXCH_CDE ( TITLE '证券交易所代码'),
  STK_INVST_SORT ( TITLE '股票投资者类别'),
  BNK_ID ( TITLE '银行标识'),
  SEC_ACCT_SORT ( TITLE '证券账户类别'),
  CAP_TYPE ( TITLE '股本类型'),
  SEC_CLSF ( TITLE '证券分类'),
  INVST_OPN_ACCT_PPDM ( TITLE '投资者开户辖区'),
  PSTN_VOL ( TITLE '持仓数量'),
  PSTN_MKT_VAL_ORIG_CRNC ( TITLE '持仓市值_原币')
 from  nsPUBMart.MID_INVST_SEC_PSTN_M;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_SEC_PSTN_M_LVL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--sel * from  nsPUBView.MID_INVST_SEC_PSTN_LVL2
REPLACE VIEW nsPUBView.MID_INVST_SEC_PSTN_M_LVL2 (
  STAT_M
  ,SEC_CDE
  ,SEC_EXCH_CDE
  ,STK_INVST_SORT
  ,BNK_ID
  ,SEC_ACCT_SORT
  ,CAP_TYPE
  ,SEC_CLSF
  ,INVST_OPN_ACCT_PPDM
  ,PSTN_VOL
  ,PSTN_MKT_VAL_ORIG_CRNC
)
 AS
 SELECT 
  stat_m
  ,sec_cde
  ,sec_exch_cde
  --,SUBSTR(stk_invst_sort,1,2)||'0' AS stk_invst_sort
  ,SUBSTR(stk_invst_sort,1,2)||'00' AS stk_invst_sort
  ,bnk_id
  ,sec_acct_sort
  ,cap_type
  ,sec_clsf
  ,invst_opn_acct_ppdm
  ,pstn_vol
  ,pstn_mkt_val_orig_crnc
 FROM  nsPUBView.MID_INVST_SEC_PSTN_M;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_SEC_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_SEC_TRAD (
  STAT_DATE,
  SEC_CDE,
  SEC_EXCH_CDE,
  STK_INVST_SORT,
  BNK_ID,
  SEC_CLSF,
  SEC_ACCT_SORT,
  BUY_VOL,
  BUY_AMT,
  SAL_VOL,
  SAL_AMT,
  BUY_AMT_MKT_PRC,
  SAL_AMT_MKT_PRC,
  BUY_CNT,
  SAL_CNT
)
 AS LOCKING nsPUBMart.MID_INVST_SEC_TRAD FOR ACCESS 
 SELECT 
  STAT_DATE ( TITLE '统计日期'),
  SEC_CDE ( TITLE '证券代码'),
  SEC_EXCH_CDE ( TITLE '证券交易所代码'),
  STK_INVST_SORT ( TITLE '股票投资者类别'),
  BNK_ID ( TITLE '银行标识'),
  SEC_CLSF ( TITLE '证券分类'),
  SEC_ACCT_SORT ( TITLE '证券账户类别'),
  BUY_VOL ( TITLE '买入数量'),
  BUY_AMT ( TITLE '买入金额'),
  SAL_VOL ( TITLE '卖出数量'),
  SAL_AMT ( TITLE '卖出金额'),
  BUY_AMT_MKT_PRC ( TITLE '买入金额_市价'),
  SAL_AMT_MKT_PRC ( TITLE '卖出金额_市价'),
  BUY_CNT ( TITLE '买入笔数'),
  SAL_CNT ( TITLE '卖出笔数')
 from  nsPUBMart.MID_INVST_SEC_TRAD;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_SEC_TRAD_LVL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_SEC_TRAD_LVL2 (
  STAT_DATE
  ,SEC_CDE
  ,SEC_EXCH_CDE
  ,STK_INVST_SORT
  ,BNK_ID
  ,SEC_CLSF
  ,SEC_ACCT_SORT
  ,BUY_VOL
  ,BUY_AMT
  ,SAL_VOL
  ,SAL_AMT
  ,BUY_AMT_MKT_PRC
  ,SAL_AMT_MKT_PRC
  ,BUY_CNT
  ,SAL_CNT
)
 AS
 SELECT 
  stat_date
  ,sec_cde
  ,sec_exch_cde
 -- ,SUBSTR(stk_invst_sort,1,2)||'0' AS stk_invst_sort
  ,SUBSTR(stk_invst_sort,1,2)||'00' AS stk_invst_sort    --modify  by jkf
  ,bnk_id
  ,sec_clsf
  ,sec_acct_sort
  ,buy_vol
  ,buy_amt
  ,sal_vol
  ,sal_amt
  ,buy_amt_mkt_prc
  ,sal_amt_mkt_prc
  ,buy_cnt
  ,sal_cnt
 FROM  nsPUBView.MID_INVST_SEC_TRAD;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_SMT_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_SMT_BAL (
	STAT_DATE,
	SEC_CDE,
	SC_CDE,
	SEC_EXCH_CDE,
	INVST_TYPE,
	FIN_BAL,
	SEC_LN_BAL
)
 AS LOCKING nsPUBMart.MID_INVST_SMT_BAL FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	SEC_CDE ( TITLE '证券代码'),
	SC_CDE ( TITLE '证券公司代码'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	INVST_TYPE ( TITLE '投资者类型'),
	FIN_BAL ( TITLE '融资余额'),
	SEC_LN_BAL ( TITLE '融券余额')
 from  nsPUBMart.MID_INVST_SMT_BAL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_SMT_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_SMT_TRAD (
  STAT_DATE,
  SEC_CDE,
  SEC_EXCH_CDE,
  STK_INVST_SORT,
  SEC_LN_SAL_AMT,
  BUY_STK_AS_VCR_AMT,
  SEC_LN_LQD_AMT,
  FIN_BUY_AMT,
  SLCPS_PAYBK_AMT,
  FIN_LQD_AMT,
  GAGE_BUY_AMT,
  GAGE_SAL_AMT,
  SEC_LN_SAL_VOL,
  BUY_STK_AS_VCR_VOL,
  SEC_LN_LQD_VOL,
  FIN_BUY_VOL,
  SLCPS_PAYBK_VOL,
  FIN_LQD_VOL,
  GAGE_BUY_VOL,
  GAGE_SAL_VOL
)
 AS LOCKING nsPUBMart.MID_INVST_SMT_TRAD FOR ACCESS 
 SELECT 
  STAT_DATE ( TITLE '统计日期'),
  SEC_CDE ( TITLE '证券代码'),
  SEC_EXCH_CDE ( TITLE '证券交易所代码'),
  STK_INVST_SORT ( TITLE '股票投资者类别'),
  SEC_LN_SAL_AMT ( TITLE '融券卖出金额'),
  BUY_STK_AS_VCR_AMT ( TITLE '买券还券金额'),
  SEC_LN_LQD_AMT ( TITLE '融券平仓金额'),
  FIN_BUY_AMT ( TITLE '融资买入金额'),
  SLCPS_PAYBK_AMT ( TITLE '卖券还款金额'),
  FIN_LQD_AMT ( TITLE '融资平仓金额'),
  GAGE_BUY_AMT ( TITLE '担保品买入金额'),
  GAGE_SAL_AMT ( TITLE '担保品卖出金额'),
  SEC_LN_SAL_VOL ( TITLE '融券卖出数量'),
  BUY_STK_AS_VCR_VOL ( TITLE '买券还券数量'),
  SEC_LN_LQD_VOL ( TITLE '融券平仓数量'),
  FIN_BUY_VOL ( TITLE '融资买入数量'),
  SLCPS_PAYBK_VOL ( TITLE '卖券还款数量'),
  FIN_LQD_VOL ( TITLE '融资平仓数量'),
  GAGE_BUY_VOL ( TITLE '担保品买入数量'),
  GAGE_SAL_VOL ( TITLE '担保品卖出数量')
 from  nsPUBMart.MID_INVST_SMT_TRAD;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_SMT_TRAD_LVL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_SMT_TRAD_LVL2 (
  STAT_DATE
  ,SEC_CDE
  ,SEC_EXCH_CDE
  ,STK_INVST_SORT
  ,SEC_LN_SAL_AMT
  ,BUY_STK_AS_VCR_AMT
  ,SEC_LN_LQD_AMT
  ,FIN_BUY_AMT
  ,SLCPS_PAYBK_AMT
  ,FIN_LQD_AMT
  ,GAGE_BUY_AMT
  ,GAGE_SAL_AMT
  ,SEC_LN_SAL_VOL
  ,BUY_STK_AS_VCR_VOL
  ,SEC_LN_LQD_VOL
  ,FIN_BUY_VOL
  ,SLCPS_PAYBK_VOL
  ,FIN_LQD_VOL
  ,GAGE_BUY_VOL
  ,GAGE_SAL_VOL
)
 AS
 SELECT 
  stat_date
  ,sec_cde
  ,sec_exch_cde
  --,SUBSTR(stk_invst_sort,1,2)||'0' AS stk_invst_sort
  ,SUBSTR(stk_invst_sort,1,2)||'00' AS stk_invst_sort
  ,sec_ln_sal_amt
  ,buy_stk_as_vcr_amt
  ,sec_ln_lqd_amt
  ,fin_buy_amt
  ,slcps_paybk_amt
  ,fin_lqd_amt
  ,gage_buy_amt
  ,gage_sal_amt
  ,sec_ln_sal_vol
  ,buy_stk_as_vcr_vol
  ,sec_ln_lqd_vol
  ,fin_buy_vol
  ,slcps_paybk_vol
  ,fin_lqd_vol
  ,gage_buy_vol
  ,gage_sal_vol
 FROM  nsPUBView.MID_INVST_SMT_TRAD;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_STK_OPT_TRAD_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_STK_OPT_TRAD_PSTN (
	STAT_DATE,
	OPT_CNTR_PROD_CDE,
	INVST_TYPE,
	SUBSC_BUY_VOL,
	SUBSC_SAL_VOL,
	PUT_BUY_VOL,
	PUT_SAL_VOL,
	SUBSC_BUY_AMT,
	SUBSC_SAL_AMT,
	PUT_BUY_AMT,
	PUT_SAL_AMT,
	SUBSC_RIGHT_PSTN_QTT,
	SUBSC_OBLG_PSTN_QTT,
	PUT_RIGHT_PSTN_QTT,
	PUT_OBLG_PSTN_QTT
)
 AS LOCKING nsPUBMart.MID_INVST_STK_OPT_TRAD_PSTN FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	OPT_CNTR_PROD_CDE ( TITLE '期权合约产品代码'),
	INVST_TYPE ( TITLE '投资者类型'),
	SUBSC_BUY_VOL ( TITLE '认购买入数量'),
	SUBSC_SAL_VOL ( TITLE '认购卖出数量'),
	PUT_BUY_VOL ( TITLE '认沽买入数量'),
	PUT_SAL_VOL ( TITLE '认沽卖出数量'),
	SUBSC_BUY_AMT ( TITLE '认购买入金额'),
	SUBSC_SAL_AMT ( TITLE '认购卖出金额'),
	PUT_BUY_AMT ( TITLE '认沽买入金额'),
	PUT_SAL_AMT ( TITLE '认沽卖出金额'),
	SUBSC_RIGHT_PSTN_QTT ( TITLE '认购持权利仓数量'),
	SUBSC_OBLG_PSTN_QTT ( TITLE '认购持义务仓数量'),
	PUT_RIGHT_PSTN_QTT ( TITLE '认沽持权利仓数量'),
	PUT_OBLG_PSTN_QTT ( TITLE '认沽持义务仓数量')
 from  nsPUBMart.MID_INVST_STK_OPT_TRAD_PSTN;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_STK_OPT_TRAD_PSTN_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_STK_OPT_TRAD_PSTN_TB (
	STAT_DATE,
	OPT_CNTR_PROD_CDE,
	INVST_TYPE,
	SUBSC_BUY_VOL,
	SUBSC_SAL_VOL,
	PUT_BUY_VOL,
	PUT_SAL_VOL,
	SUBSC_BUY_AMT,
	SUBSC_SAL_AMT,
	PUT_BUY_AMT,
	PUT_SAL_AMT,
	SUBSC_RIGHT_PSTN_QTT,
	SUBSC_OBLG_PSTN_QTT,
	PUT_RIGHT_PSTN_QTT,
	PUT_OBLG_PSTN_QTT
)
 AS LOCKING nsPUBMart.MID_INVST_STK_OPT_TRAD_PSTN_TB FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	OPT_CNTR_PROD_CDE ( TITLE '期权合约产品代码'),
	INVST_TYPE ( TITLE '投资者类型'),
	SUBSC_BUY_VOL ( TITLE '认购买入数量'),
	SUBSC_SAL_VOL ( TITLE '认购卖出数量'),
	PUT_BUY_VOL ( TITLE '认沽买入数量'),
	PUT_SAL_VOL ( TITLE '认沽卖出数量'),
	SUBSC_BUY_AMT ( TITLE '认购买入金额'),
	SUBSC_SAL_AMT ( TITLE '认购卖出金额'),
	PUT_BUY_AMT ( TITLE '认沽买入金额'),
	PUT_SAL_AMT ( TITLE '认沽卖出金额'),
	SUBSC_RIGHT_PSTN_QTT ( TITLE '认购持权利仓数量'),
	SUBSC_OBLG_PSTN_QTT ( TITLE '认购持义务仓数量'),
	PUT_RIGHT_PSTN_QTT ( TITLE '认沽持权利仓数量'),
	PUT_OBLG_PSTN_QTT ( TITLE '认沽持义务仓数量')
 from  nsPUBMart.MID_INVST_STK_OPT_TRAD_PSTN_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_STK_OPT_TRAD_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_STK_OPT_TRAD_TB (
	STAT_DATE,
	OPT_CNTR_PROD_CDE,
	INVST_SORT,
	BUY_VOL_SUBSC,
	SAL_VOL_SUBSC,
	BUY_VOL_PUT,
	SAL_VOL_PUT,
	BUY_AMT_SUBSC,
	SAL_AMT_SUBSC,
	BUY_AMT_PUT,
	SAL_AMT_PUT,
	END_RIGHT_PSTN_QTT_SUBSC,
	END_OBLG_PSTN_QTT_SUBSC,
	END_RIGHT_PSTN_QTT_PUT,
	END_OBLG_PSTN_QTT_PUT
)
 AS LOCKING nsPUBMart.MID_INVST_STK_OPT_TRAD_TB FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	OPT_CNTR_PROD_CDE ( TITLE '期权合约产品代码'),
	INVST_SORT ( TITLE '投资者类别'),
	BUY_VOL_SUBSC ( TITLE '认购买入数量'),
	SAL_VOL_SUBSC ( TITLE '认购卖出数量'),
	BUY_VOL_PUT ( TITLE '认沽买入数量'),
	SAL_VOL_PUT ( TITLE '认沽卖出数量'),
	BUY_AMT_SUBSC ( TITLE '认购买入金额'),
	SAL_AMT_SUBSC ( TITLE '认购卖出金额'),
	BUY_AMT_PUT ( TITLE '认沽买入金额'),
	SAL_AMT_PUT ( TITLE '认沽卖出金额'),
	END_RIGHT_PSTN_QTT_SUBSC ( TITLE '认购持权利仓数量'),
	END_OBLG_PSTN_QTT_SUBSC ( TITLE '认购持义务仓数量'),
	END_RIGHT_PSTN_QTT_PUT ( TITLE '认沽持权利仓数量'),
	END_OBLG_PSTN_QTT_PUT ( TITLE '认沽持义务仓数量')
 from  nsPUBMart.MID_INVST_STK_OPT_TRAD_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_INVST_TRD_IPO_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_INVST_TRD_IPO_INFO (
	SEC_ACCT,
	TRAD_DATE,
	EXCH_CDE,
	OAP_ACCT,
	SEC_CDE,
	LIST_DAYS,
	BUY_VOL,
	BUY_AMT,
	BUY_CNT,
	SAL_VOL,
	SAL_AMT,
	SAL_CNT
)
 AS LOCKING nsPUBMart.MID_INVST_TRD_IPO_INFO FOR ACCESS 
 SELECT 
	SEC_ACCT ( TITLE '证券账户'),
	TRAD_DATE ( TITLE '交易日期'),
	EXCH_CDE ( TITLE '交易所代码'),
	OAP_ACCT ( TITLE '一码通账户'),
	SEC_CDE ( TITLE '证券代码'),
	LIST_DAYS ( TITLE '上市天数'),
	BUY_VOL ( TITLE '买入数量'),
	BUY_AMT ( TITLE '买入金额'),
	BUY_CNT ( TITLE '买入笔数'),
	SAL_VOL ( TITLE '卖出数量'),
	SAL_AMT ( TITLE '卖出金额'),
	SAL_CNT ( TITLE '卖出笔数')
 from  nsPUBMart.MID_INVST_TRD_IPO_INFO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_IPO_ISS_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_IPO_ISS_INFO (
	STK_CDE,
	ISS_DATE,
	LIST_DATE,
	SEC_EXCH_CDE,
	LSTN_BORD,
	SEC_CTG,
	CAP,
	ISS_PRC,
	FD_OPN_PRC,
	FD_CLS_PRC,
	OLN_ISS_LTRT,
	ISS_PE,
	IPO_VOL,
	IPO_FUND_RSN_AMT,
	FD_OPN_CHG_RATE,
	FD_CLS_CHG_RATE,
	FD_CHG_RATE,
	FD_TNOV_RATE,
	IF_BREK,
	CLCT_BANKRL_TOT,
	EST_CLCT_BANKRL,
	OSUB_RATE
)
 AS LOCKING nsPUBMart.MID_IPO_ISS_INFO FOR ACCESS 
 SELECT 
	STK_CDE ( TITLE '股票代码'),
	ISS_DATE ( TITLE '发行日期'),
	LIST_DATE ( TITLE '上市日期'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	LSTN_BORD ( TITLE '上市板块'),
	SEC_CTG ( TITLE '证券类别'),
	CAP ( TITLE '股本'),
	ISS_PRC ( TITLE '发行价格'),
	FD_OPN_PRC ( TITLE '首日开盘价'),
	FD_CLS_PRC ( TITLE '首日收盘价'),
	OLN_ISS_LTRT ( TITLE '网上发行中签率'),
	ISS_PE ( TITLE '发行市盈率'),
	IPO_VOL ( TITLE '首发数量'),
	IPO_FUND_RSN_AMT ( TITLE '首发筹资金额'),
	FD_OPN_CHG_RATE ( TITLE '首日开盘涨跌幅'),
	FD_CLS_CHG_RATE ( TITLE '首日收盘涨跌幅'),
	FD_CHG_RATE ( TITLE '首日涨跌幅'),
	FD_TNOV_RATE ( TITLE '首日换手率'),
	IF_BREK ( TITLE '是否破发'),
	CLCT_BANKRL_TOT ( TITLE '募集资金合计'),
	EST_CLCT_BANKRL ( TITLE '预计募集资金'),
	OSUB_RATE ( TITLE '超募比率')
 from  nsPUBMart.MID_IPO_ISS_INFO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_LSTD_COMP_FINA_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_LSTD_COMP_FINA_IDX (
	RPT_PRD,
	COMP_ID,
	STK_CDE,
	STK_ABBR,
	IDSTR_CTGR_CDE,
	IDSTR_CTGR_NAME,
	IDSTR_CLASS_CDE,
	IDSTR_CLASS_NAME,
	PPDM_CDE,
	PPDM_NAME,
	TRDT,
	HIGH_ENERGY,
	MODERN_SRVC,
	LIGHT_ASET,
	STRTG_EMERG,
	OVER_CAPACITY,
	HDGS_CLSF_CDE,
	HDGS_CLSF_NAME,
	INVNT,
	ASET_TOT_AMT,
	LBLT_TOT,
	NAST,
	CAP,
	BIZ_ENING,
	SELL_CHRG,
	MNGMT_CHRG,
	FINA_CHRG,
	BIZ_PRFT,
	PRFT_TOT_AMT,
	INCM_TAX,
	BIZ_TOT_ENING,
	NET_PRFT,
	NET_PRFT_TOT_AMT,
	N_ALLOT_PRFT,
	OA_CASH_FLOW_NET_AMT,
	IA_CASH_FLOW_NET_AMT,
	FA_CASH_FLOW_NET_AMT,
	LIST_INDC,
	ASET_LBLT_RATE,
	TOT_ASET_YLD,
	NAST_YLD,
	BIZ_ENING_PRFT_RATE,
	INVNT_TNOV_RATE,
	ASET_TOT_AMT_EOLY,
	NAST_EOLY,
	INVNT_EOLY
)
AS LOCKING nsPUBMart.MID_COMP_FINA_IDX FOR ACCESS 
SELECT 
	RPT_PRD ( TITLE '报告期'),
	COMP_ID ( TITLE '公司ID'),
	STK_CDE ( TITLE '股票代码'),
	STK_ABBR ( TITLE '股票简称'),
	IDSTR_CTGR_CDE ( TITLE '行业门类代码'),
	IDSTR_CTGR_NAME ( TITLE '行业门类名称'),
	IDSTR_CLASS_CDE ( TITLE '行业大类代码'),
	IDSTR_CLASS_NAME ( TITLE '行业大类名称'),
	PPDM_CDE ( TITLE '辖区代码'),
	PPDM_NAME ( TITLE '辖区名称'),
	TRDT ( TITLE '传统制造业'),
	HIGH_ENERGY ( TITLE '高耗能产业'),
	MODERN_SRVC ( TITLE '现代服务业'),
	LIGHT_ASET ( TITLE '轻资产行业'),
	STRTG_EMERG ( TITLE '战略新兴行业'),
	OVER_CAPACITY ( TITLE '落后产能行业'),
	HDGS_CLSF_CDE ( TITLE '控股分类代码'),
	HDGS_CLSF_NAME ( TITLE '控股分类名称'),
	INVNT ( TITLE '存货'),
	ASET_TOT_AMT ( TITLE '资产总额'),
	LBLT_TOT ( TITLE '负债合计'),
	NAST ( TITLE '净资产'),
	CAP ( TITLE '股本'),
	BIZ_ENING ( TITLE '营业收入'),
	SELL_CHRG ( TITLE '销售费用'),
	MNGMT_CHRG ( TITLE '管理费用'),
	FINA_CHRG ( TITLE '财务费用'),
	BIZ_PRFT ( TITLE '营业利润'),
	PRFT_TOT_AMT ( TITLE '利润总额'),
	INCM_TAX ( TITLE '所得税'),
	BIZ_TOT_ENING ( TITLE '营业总收入'),
	NET_PRFT ( TITLE '净利润'),
	NET_PRFT_TOT_AMT ( TITLE '净利润总额'),
	N_ALLOT_PRFT ( TITLE '未分配利润'),
	OA_CASH_FLOW_NET_AMT ( TITLE '经营活动产生现金流量净额'),
	IA_CASH_FLOW_NET_AMT ( TITLE '投资活动产生的现金流量净额'),
	FA_CASH_FLOW_NET_AMT ( TITLE '筹资活动产生的现金流量净额'),
	LIST_INDC ( TITLE '上市标志'),
	ASET_LBLT_RATE ( TITLE '资产负债率'),
	TOT_ASET_YLD ( TITLE '总资产收益率'),
	NAST_YLD ( TITLE '净资产收益率'),
	BIZ_ENING_PRFT_RATE ( TITLE '营业收入利润率'),
	INVNT_TNOV_RATE ( TITLE '存货周转率（单位：次）'),
	ASET_TOT_AMT_EOLY ( TITLE '资产总额_上年末'),
	NAST_EOLY ( TITLE '净资产_上年末'),
	INVNT_EOLY ( TITLE '存货_上年末')
FROM	nsPUBMart.MID_COMP_FINA_IDX 
WHERE	stk_cde NOT LIKE '43%' OR STK_CDE NOT LIKE '83%';


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_PE_RATE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_PE_RATE (
	BIZ_DATE,
	FREQ,
	STAT_ANGLE_CDE,
	STAT_ANGLE_NAME,
	STC_PE,
	ROLN_PE,
	FORC_PE,
	PB,
	DIVD_RATE
)
 AS LOCKING nsPUBMart.MID_PE_RATE FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	FREQ ( TITLE '频度'),
	STAT_ANGLE_CDE ( TITLE '统计角度编码'),
	STAT_ANGLE_NAME ( TITLE '统计角度名称'),
	STC_PE ( TITLE '静态市盈率'),
	ROLN_PE ( TITLE '滚动市盈率'),
	FORC_PE ( TITLE '预测市盈率'),
	PB ( TITLE '市净率'),
	DIVD_RATE ( TITLE '股息率')
 from  nsPUBMart.MID_PE_RATE ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_RES_CHANGE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_RES_CHANGE(
 STAT_DATE,
 SEC_CDE,
 EXCH_CDE,
 LMT_COMP_TYPE,
 LMT_INVST_TYPE,
 LAB_VOL,
 LAB_MKT_VAL,
 INCR_HDG_VOL,
 INCR_HDG_AMT,
 RH_VOL,
 RH_AMT
)
 AS
 SELECT 
 STAT_DATE ( TITLE '统计日期'),
 SEC_CDE ( TITLE '证券代码'),
 EXCH_CDE ( TITLE '交易所代码'),
 LMT_COMP_TYPE ( TITLE '限售公司类型'),
 LMT_INVST_TYPE ( TITLE '限售投资者类型'),
 LAB_VOL ( TITLE '解禁数量'),
 LAB_MKT_VAL ( TITLE '解禁市值'),
 INCR_HDG_VOL ( TITLE '增持数量'),
 INCR_HDG_AMT ( TITLE '增持金额'),
 RH_VOL ( TITLE '减持数量'),
 RH_AMT ( TITLE '减持金额')
 FROM  nsPUBMart.MID_RES_CHANGE;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_SC_SYNT_INFO_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_SC_SYNT_INFO_M (
	STAT_DATE,
	SC_CDE,
	SC_NAME,
	SC_PPDM_CDE,
	SC_PPDM_NAME,
	BRCH_VOL,
	SUB_COMP_CNT,
	REG_CAP,
	IF_JV,
	IF_HAVE_SMT_QLF,
	IF_HAVE_CUST_AM_QLF,
	REG_DATE,
	RISK_CAP_PREP_TOT_AMT,
	ASET_TOT_AMT,
	LBLT_TOT,
	OWNER_EQUT_TOT,
	NAST,
	NET_CAP,
	PRFT_TOT_AMT,
	NET_PRFT,
	BIZ_ENING,
	BIZ_PRFT,
	BIZ_EXPDT,
	INTR_NET_ENING,
	INVSMT_INCM,
	SEC_BRK_BIZ_NET_ENING,
	INVSMT_BNK_BIZ_NET_ENING,
	IC_BIZ_NET_ENING,
	AM_BIZ_NET_ENING,
	PRFT_TOT_AMT_TSM,
	NET_PRFT_TSM,
	BIZ_ENING_TSM,
	BIZ_PRFT_TSM,
	BIZ_EXPDT_TSM,
	INTR_NET_ENING_TSM,
	INVSMT_INCM_TSM,
	SEC_BRK_BIZ_NET_ENING_TSM,
	INVSMT_BNK_BIZ_NET_ENING_TSM,
	IC_BIZ_NET_ENING_TSM,
	AM_BIZ_NET_ENING_TSM,
	END_VAL_NET_CAP_NAST,
	ALT_STD_NET_CAP_NAST,
	SPVS_STD_NET_CAP_NAST,
	END_VAL_NET_CAP_LBLT,
	ALT_STD_NAST_LBLT,
	SPVS_STD_NAST_LBLT,
	END_VAL_RISK_COVER_RATE,
	ALT_STD_RISK_COVER_RATE,
	SPVS_STD_RISK_COVER_RATE,
	FLUD_COVER_RATE,
	NET_STAB_BANKRL_RATE,
	AVG_FINA_LVRG
)
 AS LOCKING nsPUBMart.MID_SC_SYNT_INFO_M FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	SC_CDE ( TITLE '证券公司代码'),
	SC_NAME ( TITLE '证券公司名称'),
	SC_PPDM_CDE ( TITLE '证券公司辖区代码'),
	SC_PPDM_NAME ( TITLE '证券公司辖区名称'),
	BRCH_VOL ( TITLE '营业部数量'),
	SUB_COMP_CNT ( TITLE '分公司家数'),
	REG_CAP ( TITLE '注册资本'),
	IF_JV ( TITLE '是否合资'),
	IF_HAVE_SMT_QLF ( TITLE '是否有融资融券资格'),
	IF_HAVE_CUST_AM_QLF ( TITLE '是否有客户资产管理资格'),
	REG_DATE ( TITLE '注册日期'),
	RISK_CAP_PREP_TOT_AMT ( TITLE '风险资本准备总额'),
	ASET_TOT_AMT ( TITLE '资产总额'),
	LBLT_TOT ( TITLE '负债合计'),
	OWNER_EQUT_TOT ( TITLE '所有者权益合计'),
	NAST ( TITLE '净资产'),
	NET_CAP ( TITLE '净资本'),
	PRFT_TOT_AMT ( TITLE '利润总额_本年累计'),
	NET_PRFT ( TITLE '净利润_本年累计'),
	BIZ_ENING ( TITLE '营业收入_本年累计'),
	BIZ_PRFT ( TITLE '营业利润_本年累计'),
	BIZ_EXPDT ( TITLE '营业支出_本年累计'),
	INTR_NET_ENING ( TITLE '利息净收入_本年累计'),
	INVSMT_INCM ( TITLE '投资收益_本年累计'),
	SEC_BRK_BIZ_NET_ENING ( TITLE '证券经纪业务净收入_本年累计'),
	INVSMT_BNK_BIZ_NET_ENING ( TITLE '投资银行业务净收入_本年累计'),
	IC_BIZ_NET_ENING ( TITLE '投资咨询业务净收入_本年累计'),
	AM_BIZ_NET_ENING ( TITLE '资产管理业务净收入_本年累计'),
	PRFT_TOT_AMT_TSM ( TITLE '利润总额_当月'),
	NET_PRFT_TSM ( TITLE '净利润_当月'),
	BIZ_ENING_TSM ( TITLE '营业收入_当月'),
	BIZ_PRFT_TSM ( TITLE '营业利润_当月'),
	BIZ_EXPDT_TSM ( TITLE '营业支出_当月'),
	INTR_NET_ENING_TSM ( TITLE '利息净收入_当月'),
	INVSMT_INCM_TSM ( TITLE '投资收益_当月'),
	SEC_BRK_BIZ_NET_ENING_TSM ( TITLE '证券经纪业务净收入_当月'),
	INVSMT_BNK_BIZ_NET_ENING_TSM ( TITLE '投资银行业务净收入_当月'),
	IC_BIZ_NET_ENING_TSM ( TITLE '投资咨询业务净收入_当月'),
	AM_BIZ_NET_ENING_TSM ( TITLE '资产管理业务净收入_当月'),
	END_VAL_NET_CAP_NAST ( TITLE '期末值_净资本/净资产'),
	ALT_STD_NET_CAP_NAST ( TITLE '预警标准_净资本/净资产'),
	SPVS_STD_NET_CAP_NAST ( TITLE '监管标准_净资本/净资产'),
	END_VAL_NET_CAP_LBLT ( TITLE '期末值_净资本/负债'),
	ALT_STD_NAST_LBLT ( TITLE '预警标准_净资产/负债'),
	SPVS_STD_NAST_LBLT ( TITLE '监管标准_净资产/负债'),
	END_VAL_RISK_COVER_RATE ( TITLE '期末值_风险覆盖率'),
	ALT_STD_RISK_COVER_RATE ( TITLE '预警标准_风险覆盖率'),
	SPVS_STD_RISK_COVER_RATE ( TITLE '监管标准_风险覆盖率'),
	FLUD_COVER_RATE ( TITLE '流动性覆盖率(%)'),
	NET_STAB_BANKRL_RATE ( TITLE '净稳定资金率(%)'),
	AVG_FINA_LVRG ( TITLE '平均财务杠杆')
 from  nsPUBMart.MID_SC_SYNT_INFO_M;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_SEC_SMT_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_SEC_SMT_BAL (
	BIZ_DATE,
	SEC_EXCH_CDE,
	SEC_CDE,
	FIN_BAL,
	SEC_LN_BAL,
	SEC_LN_VOL,
	SEC_LN_MKT_VAL
)
 AS LOCKING nsPUBMart.MID_SEC_SMT_BAL FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	SEC_CDE ( TITLE '证券代码'),
	FIN_BAL ( TITLE '融资余额'),
	SEC_LN_BAL ( TITLE '融券余额'),
	SEC_LN_VOL ( TITLE '融券数量'),
	SEC_LN_MKT_VAL ( TITLE '融券市值')
 FROM  nsPUBMart.MID_SEC_SMT_BAL ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_SHDR_PSTN_RNKG;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_SHDR_PSTN_RNKG (
	STAT_DATE,
	RNKG_TYPE,
	SEC_CDE,
	SEC_EXCH_CDE,
	RNKG,
	OAP_ACCT,
	HOLD_RATE,
	HOLD_CAP_VOL
)
 AS LOCKING nsPUBMart.MID_SHDR_PSTN_RNKG FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	RNKG_TYPE ( TITLE '排名类型'),
	SEC_CDE ( TITLE '证券代码'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	RNKG ( TITLE '排名'),
	OAP_ACCT ( TITLE '一码通账户'),
	HOLD_RATE ( TITLE '持有比例'),
	HOLD_CAP_VOL ( TITLE '持有股本数量')
 from  nsPUBMart.MID_SHDR_PSTN_RNKG ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_SMT_GUART_SEC_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_SMT_GUART_SEC_BAL (
	BIZ_DATE,
	SEC_EXCH_CDE,
	SEC_CDE,
	GUART_VOL,
	GUART_MKT_VAL
)
 AS LOCKING nsPUBMart.MID_SMT_GUART_SEC_BAL FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	SEC_CDE ( TITLE '证券代码'),
	GUART_VOL ( TITLE '担保数量'),
	GUART_MKT_VAL ( TITLE '担保市值')
 FROM  nsPUBMart.MID_SMT_GUART_SEC_BAL ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_SPCL_INVST_TRAD_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_SPCL_INVST_TRAD_PSTN (
  STAT_DATE,
  SEC_CDE,
  SEC_NAME,
  SEC_EXCH_CDE,
  CLSF_ANGLE,
  INVST_TYPE,
  BUY_VOL,
  SAL_VOL,
  BUY_AMT,
  SAL_AMT,
  BUY_CNT,
  SAL_CNT,
  PSTN_VOL,
  PSTN_NEGT_VOL,
  PSTN_TOT_MKT_VAL,
  PSTN_NEGT_MKT_VAL
)
 AS LOCKING nsPUBMart.MID_SPCL_INVST_TRAD_PSTN FOR ACCESS 
 SELECT 
  STAT_DATE ( TITLE '统计日期'),
  SEC_CDE ( TITLE '证券代码'),
  SEC_NAME ( TITLE '证券名称'),
  SEC_EXCH_CDE ( TITLE '证券交易所代码'),
  CLSF_ANGLE ( TITLE '分类角度'),
  INVST_TYPE ( TITLE '投资者类型'),
  BUY_VOL ( TITLE '买入数量'),
  SAL_VOL ( TITLE '卖出数量'),
  BUY_AMT ( TITLE '买入金额'),
  SAL_AMT ( TITLE '卖出金额'),
  BUY_CNT ( TITLE '买入笔数'),
  SAL_CNT ( TITLE '卖出笔数'),
  PSTN_VOL ( TITLE '持仓数量'),
  PSTN_NEGT_VOL ( TITLE '持仓流通数量'),
  PSTN_TOT_MKT_VAL ( TITLE '持仓总市值'),
  PSTN_NEGT_MKT_VAL ( TITLE '持仓流通市值')
 from  nsPUBMart.MID_SPCL_INVST_TRAD_PSTN;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_SPCL_INVST_TRAD_PSTN_LVL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_SPCL_INVST_TRAD_PSTN_LVL2 (
  STAT_DATE
  ,SEC_CDE
  ,SEC_NAME
  ,SEC_EXCH_CDE
  ,CLSF_ANGLE
  ,INVST_TYPE
  ,BUY_VOL
  ,SAL_VOL
  ,BUY_AMT
  ,SAL_AMT
  ,BUY_CNT
  ,SAL_CNT
  ,PSTN_VOL
  ,PSTN_NEGT_VOL
  ,PSTN_TOT_MKT_VAL
  ,PSTN_NEGT_MKT_VAL
)
 AS
 SELECT 
  stat_date
  ,sec_cde
  ,sec_name
  ,sec_exch_cde
  ,clsf_angle
  --,SUBSTR(invst_type,1,2)||'0' AS invst_type  --投资者类型_二级
  ,SUBSTR(invst_type,1,2)||'00' AS invst_type  --投资者类型_二级
  ,buy_vol
  ,sal_vol
  ,buy_amt
  ,sal_amt
  ,buy_cnt
  ,sal_cnt
  ,pstn_vol
  ,pstn_negt_vol
  ,pstn_tot_mkt_val
  ,pstn_negt_mkt_val
 FROM  nsPUBView.MID_SPCL_INVST_TRAD_PSTN;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_STK_ADV_NTC_MKT_VAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_STK_ADV_NTC_MKT_VAL (
	BIZ_DATE,
	SEC_CDE,
	SEC_EXCH_CDE,
	TCAP,
	NEGT_CAP,
	ADV_NTC_MKT_VAL,
	ADV_NTC_NEGT_MKT_VAL,
	TRAD_QTT,
	TRAD_AMT
)
 AS LOCKING nsPUBMart.MID_STK_ADV_NTC_MKT_VAL FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	SEC_CDE ( TITLE '证券代码'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	TCAP ( TITLE '总股本'),
	NEGT_CAP ( TITLE '流通股本'),
	ADV_NTC_MKT_VAL ( TITLE '预告市值'),
	ADV_NTC_NEGT_MKT_VAL ( TITLE '预告流通市值'),
	TRAD_QTT ( TITLE '成交量'),
	TRAD_AMT ( TITLE '成交金额')
 from  nsPUBMart.MID_STK_ADV_NTC_MKT_VAL ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_STK_DVD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_STK_DVD (
	EXR_EXD_D,
	EQUITY_REG_D,
	STK_CDE,
	STK_NAME,
	SEC_EXCH_CDE,
	DIVD_ABBR,
	DVD_YEARLY,
	CASH_DVD_AMT_BEF_TAX,
	CASH_DVD_AMT_AFT_TAX,
	DP_RATE_DENOM,
	DP_RATE_NUMRT_BEF_TAX,
	DP_RATE_NUMRT_AFT_TAX,
	PTC_DVD_TCAP,
	CRNC_CDE,
	MDL_PRC
)
 AS LOCKING nsPUBMart.MID_STK_DVD FOR ACCESS 
 SELECT 
	EXR_EXD_D ( TITLE '除权除息日'),
	EQUITY_REG_D ( TITLE '股权登记日'),
	STK_CDE ( TITLE '股票代码'),
	STK_NAME ( TITLE '股票名称'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	DIVD_ABBR ( TITLE '红利简称'),
	DVD_YEARLY ( TITLE '分红年度'),
	CASH_DVD_AMT_BEF_TAX ( TITLE '现金分红金额（税前）'),
	CASH_DVD_AMT_AFT_TAX ( TITLE '现金分红金额(税后)'),
	DP_RATE_DENOM ( TITLE '派息比例分母'),
	DP_RATE_NUMRT_BEF_TAX ( TITLE '派息比例分子(税前)'),
	DP_RATE_NUMRT_AFT_TAX ( TITLE '派息比例分子（税后）'),
	PTC_DVD_TCAP ( TITLE '参与分红总股本'),
	CRNC_CDE ( TITLE '货币代码'),
	MDL_PRC ( TITLE '中间价')
 FROM  nsPUBMart.MID_STK_DVD ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_STK_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_STK_INFO (
	BIZ_DATE,
	SEC_EXCH_CDE,
	SEC_CDE,
	SEC_NAME,
	CLS_PRC,
	PRE_CLS_PRC,
	RETN,
	TCAP_EXCH,
	LSTN_NEGT_CAP_EXCH,
	TOT_MKT_VAL_EXCH,
	LSTN_NEGT_MKT_VAL_EXCH,
	TCAP_CSDC,
	LSTN_NEGT_CAP_CSDC,
	TOT_MKT_VAL_CSDC,
	LSTN_NEGT_MKT_VAL_CSDC,
	TRAD_QTT,
	TRAD_AMT,
	STK_STS
)
 AS LOCKING nsPUBMart.MID_STK_INFO FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	SEC_CDE ( TITLE '证券代码'),
	SEC_NAME ( TITLE '证券名称'),
	CLS_PRC ( TITLE '收盘价'),
	PRE_CLS_PRC ( TITLE '前收盘价'),
	RETN ( TITLE '对数收益率'),
	TCAP_EXCH ( TITLE '总股本_交易所'),
	LSTN_NEGT_CAP_EXCH ( TITLE '已上市流通股本_交易所'),
	TOT_MKT_VAL_EXCH ( TITLE '总市值_交易所'),
	LSTN_NEGT_MKT_VAL_EXCH ( TITLE '已上市流通市值_交易所'),
	TCAP_CSDC ( TITLE '总股本_中登'),
	LSTN_NEGT_CAP_CSDC ( TITLE '已上市流通股本_中登'),
	TOT_MKT_VAL_CSDC ( TITLE '总市值_中登'),
	LSTN_NEGT_MKT_VAL_CSDC ( TITLE '已上市流通市值_中登'),
	TRAD_QTT ( TITLE '成交量'),
	TRAD_AMT ( TITLE '成交金额'),
	STK_STS ( TITLE '股票状态')
 from  nsPUBMart.MID_STK_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_STK_PLG_REPO_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_STK_PLG_REPO_TRAD (
	BIZ_DATE,
	SEC_CDE,
	SEC_EXCH_CDE,
	ADD_PLG_CNT,
	RLS_PLG_CNT,
	INIT_TRAD_AMT,
	INIT_TRAD_CNT,
	RPCHS_TRAD_AMT,
	RPCHS_TRAD_CNT,
	ST_RPCHS_INIT_TRAD_AMT,
	ST_RPCHS_SEC_VOL,
	ST_RPCHS_SEC_MKT_VAL,
	INIT_PLG_SEC_VOL,
	INIT_PLG_SEC_MKT_VAL
)
 AS LOCKING nsPUBMart.MID_STK_PLG_REPO_TRAD FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	SEC_CDE ( TITLE '证券代码'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	ADD_PLG_CNT ( TITLE '补充质押笔数'),
	RLS_PLG_CNT ( TITLE '解除质押笔数'),
	INIT_TRAD_AMT ( TITLE '初始交易金额'),
	INIT_TRAD_CNT ( TITLE '初始交易笔数'),
	RPCHS_TRAD_AMT ( TITLE '购回交易金额'),
	RPCHS_TRAD_CNT ( TITLE '购回交易笔数'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '待购回初始交易金额'),
	ST_RPCHS_SEC_VOL ( TITLE '待购回证券数量'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '待购回证券市值'),
	INIT_PLG_SEC_VOL ( TITLE '初始质押证券数量'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '初始质押证券市值')
 from  nsPUBMart.MID_STK_PLG_REPO_TRAD ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_STK_PLG_REPO_TRAD_INVST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_STK_PLG_REPO_TRAD_INVST  (
	BIZ_DATE,
	STK_INVST_SORT,
	STK_INVST_NAME,
	ADD_PLG_CNT,
	RLS_PLG_CNT,
	INIT_TRAD_AMT,
	INIT_TRAD_CNT,
	RPCHS_TRAD_AMT,
	RPCHS_TRAD_CNT,
	ST_RPCHS_INIT_TRAD_AMT,
	ST_RPCHS_SEC_VOL,
	ST_RPCHS_SEC_MKT_VAL,
	INIT_PLG_SEC_VOL,
	INIT_PLG_SEC_MKT_VAL
)
 AS LOCKING nsPUBMart.MID_STK_PLG_REPO_TRAD_INVST  FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	STK_INVST_SORT ( TITLE '股票投资者类别'),
	STK_INVST_NAME ( TITLE '股票投资者名称'),
	ADD_PLG_CNT ( TITLE '补充质押笔数'),
	RLS_PLG_CNT ( TITLE '解除质押笔数'),
	INIT_TRAD_AMT ( TITLE '初始交易金额'),
	INIT_TRAD_CNT ( TITLE '初始交易笔数'),
	RPCHS_TRAD_AMT ( TITLE '购回交易金额'),
	RPCHS_TRAD_CNT ( TITLE '购回交易笔数'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '待购回初始交易金额'),
	ST_RPCHS_SEC_VOL ( TITLE '待购回证券数量'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '待购回证券市值'),
	INIT_PLG_SEC_VOL ( TITLE '初始质押证券数量'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '初始质押证券市值')
 FROM  nsPUBMart.MID_STK_PLG_REPO_TRAD_INVST  ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_STK_PLG_REPO_TRAD_SC;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_STK_PLG_REPO_TRAD_SC  (
	BIZ_DATE,
	SC_CDE,
	SC_NAME,
	MANG_CLSF,
	CAP_TYPE,
	ADD_PLG_CNT,
	RLS_PLG_CNT,
	INIT_TRAD_AMT,
	INIT_TRAD_CNT,
	RPCHS_TRAD_AMT,
	RPCHS_TRAD_CNT,
	ST_RPCHS_INIT_TRAD_AMT,
	ST_RPCHS_SEC_VOL,
	ST_RPCHS_SEC_MKT_VAL,
	INIT_PLG_SEC_VOL,
	INIT_PLG_SEC_MKT_VAL
)
 AS LOCKING nsPUBMart.MID_STK_PLG_REPO_TRAD_SC  FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	SC_CDE ( TITLE '证券公司代码'),
	SC_NAME ( TITLE '证券公司名称'),
	MANG_CLSF ( TITLE '经营分类'),
	CAP_TYPE ( TITLE '股本类型'),
	ADD_PLG_CNT ( TITLE '补充质押笔数'),
	RLS_PLG_CNT ( TITLE '解除质押笔数'),
	INIT_TRAD_AMT ( TITLE '初始交易金额'),
	INIT_TRAD_CNT ( TITLE '初始交易笔数'),
	RPCHS_TRAD_AMT ( TITLE '购回交易金额'),
	RPCHS_TRAD_CNT ( TITLE '购回交易笔数'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '待购回初始交易金额'),
	ST_RPCHS_SEC_VOL ( TITLE '待购回证券数量'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '待购回证券市值'),
	INIT_PLG_SEC_VOL ( TITLE '初始质押证券数量'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '初始质押证券市值')
 FROM  nsPUBMart.MID_STK_PLG_REPO_TRAD_SC  ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_STK_RIGHT_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.MID_STK_RIGHT_TB (
	EXR_EXD_D,
	EQUITY_REG_D,
	STK_CDE,
	STK_NAME,
	SEC_EXCH_CDE,
	PPDM_CDE,
	PPDM_NAME,
	RIGHT_LIST_D,
	EQUITY_REG_D_CLS_PRC,
	RIGHT_PRC,
	EXR_PRC,
	RIGHT_RATE
)
 AS LOCKING nsPUBMart.MID_STK_RIGHT_TB FOR ACCESS 
 SELECT 
	EXR_EXD_D                      ( TITLE '除权除息日'),
	EQUITY_REG_D                   ( TITLE '股权登记日'),
	STK_CDE                        ( TITLE '股票代码'),
	STK_NAME ( TITLE '股票名称'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	PPDM_CDE ( TITLE '辖区代码'),
	PPDM_NAME ( TITLE '辖区名称'),
	RIGHT_LIST_D ( TITLE '配股上市日'),
	EQUITY_REG_D_CLS_PRC ( TITLE '股权登记日收盘价'),
	RIGHT_PRC ( TITLE '配股价'),
	EXR_PRC ( TITLE '除权价'),
	RIGHT_RATE ( TITLE '配股比例')
 from  nsPUBMart.MID_STK_RIGHT_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SDC_BD_DURA_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBVIEW.SDC_BD_DURA_INFO (
	DATA_ORG_CDE,
	TRAD_SITE_CDE,
	BOND_CDE,
	BIZ_DATE,
	END_PAR_RATE,
	EXCH_BAL,
	EXCH_BAL_CNVT_RMB,
	FINL_RE_IMBRS_DATE,
	RE_IMBRS_CPS_AMT,
	RE_IMBRS_CPS_AMT_CNVT_RMB,
	PAY_INTR_AMT,
	PAY_INTR_AMT_CNVT_RMB,
	IF_DEFER,
	DEFER_TLMT,
	IF_OVRDU,
	OVRDU_TLMT
)
 AS LOCKING nsPUBMART.SDC_BD_DURA_INFO FOR ACCESS 
 SELECT 
	DATA_ORG_CDE ( TITLE '数据机构代码'),
	TRAD_SITE_CDE ( TITLE '交易地点代码'),
	BOND_CDE ( TITLE '债券代码'),
	BIZ_DATE ( TITLE '日期'),
	END_PAR_RATE ( TITLE '期末票面利率'),
	EXCH_BAL ( TITLE '交易所余额'),
	EXCH_BAL_CNVT_RMB ( TITLE '交易所余额折人民币'),
	FINL_RE_IMBRS_DATE ( TITLE '最终兑付日期'),
	RE_IMBRS_CPS_AMT ( TITLE '兑付本金额'),
	RE_IMBRS_CPS_AMT_CNVT_RMB ( TITLE '兑付本金额折人民币'),
	PAY_INTR_AMT ( TITLE '支付利息额'),
	PAY_INTR_AMT_CNVT_RMB ( TITLE '支付利息额折人民币'),
	IF_DEFER ( TITLE '是否延期'),
	DEFER_TLMT ( TITLE '延期期限'),
	IF_OVRDU ( TITLE '是否逾期'),
	OVRDU_TLMT ( TITLE '逾期期限')
 from  nsPUBMART.SDC_BD_DURA_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SDC_BD_HOLDR_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBVIEW.SDC_BD_HOLDR_INFO (
	DATA_ORG_CDE,
	BOND_CDE,
	TRAD_SITE_CDE,
	BIZ_DATE,
	CSTD_ORG_TYPE,
	HOLD_PSN_REG_AREA,
	HOLD_PSN_BLNGS_NE_DEPT,
	BOND_HOLD_BAL,
	BOND_HOLD_BAL_CNVT_RMB
)
 AS LOCKING nsPUBMART.SDC_BD_HOLDR_INFO FOR ACCESS 
 SELECT 
	DATA_ORG_CDE ( TITLE '数据机构代码'),
	BOND_CDE ( TITLE '债券代码'),
	TRAD_SITE_CDE ( TITLE '交易地点代码'),
	BIZ_DATE ( TITLE '日期'),
	CSTD_ORG_TYPE ( TITLE '托管机构类型'),
	HOLD_PSN_REG_AREA ( TITLE '持有人注册地区'),
	HOLD_PSN_BLNGS_NE_DEPT ( TITLE '持有人所属国民经济部门'),
	BOND_HOLD_BAL ( TITLE '债券持有余额'),
	BOND_HOLD_BAL_CNVT_RMB ( TITLE '债券持有余额折人民币')
 from  nsPUBMART.SDC_BD_HOLDR_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SDC_BD_ISS_BAS_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBVIEW.SDC_BD_ISS_BAS_INFO (
	DATA_ORG_CDE,
	TRAD_SITE_CDE,
	BOND_CDE,
	SUB_DEBT_CDE,
	BOND_ABBR,
	DEBT_REG_D,
	DATA_DATE
)
 AS LOCKING nsPUBMART.SDC_BD_ISS_BAS_INFO FOR ACCESS 
 SELECT 
	DATA_ORG_CDE ( TITLE '数据机构代码'),
	TRAD_SITE_CDE ( TITLE '交易地点代码'),
	BOND_CDE ( TITLE '债券代码'),
	SUB_DEBT_CDE ( TITLE '子债代码'),
	BOND_ABBR ( TITLE '债券简称'),
	DEBT_REG_D ( TITLE '债权债务登记日'),
	DATA_DATE (TITLE '数据日期')
 from  nsPUBMART.SDC_BD_ISS_BAS_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SDC_BD_NAT_ECON_DEPT_RELA;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBVIEW.SDC_BD_NAT_ECON_DEPT_RELA (
	ACCT_TYPE,
    TYPE_CODE,
    TYPE_NAME,
    DEPT_CODE,
    DEPT_NAME
)
 AS LOCKING nsPUBMART.SDC_BD_NAT_ECON_DEPT_RELA FOR ACCESS 
 SELECT 
 	ACCT_TYPE ( TITLE '账户类别'),
    TYPE_CODE ( TITLE '类别编码'),
    TYPE_NAME ( TITLE '类别名称'),
    DEPT_CODE ( TITLE '国民经济部门编码'),
    DEPT_NAME ( TITLE '国民经济部门名称')
from  nsPUBMART.SDC_BD_NAT_ECON_DEPT_RELA;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SDC_BD_TRD_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBVIEW.SDC_BD_TRD_INFO (
	DATA_ORG_CDE,
	TRAD_SITE_CDE,
	BOND_CDE,
	BIZ_DATE,
	CSTD_ORG_TYPE,
	SUB_CSTD_ORG_CDE,
	SUB_CSTD_BAL,
	SUB_CSTD_BAL_CNVT_RMB,
	END_SETL_PRC,
	END_SETL_PRC_CNVT_RMB,
	END_MAT_Y_YLD,
	CUR_PRD_AVG_PRC,
	CUR_PRD_AVG_PRC_CNVT_RMB,
	AVG_MAT_Y_YLD,
	NPRC_AVG_PRC,
	NPRC_AVG_PRC_CNVT_RMB,
	END_ACRU_INTR,
	END_ACRU_INTR_CNVT_RMB,
	TRAD_AMT,
	TRAD_AMT_CNVT_RMB
)
 AS LOCKING nsPUBMART.SDC_BD_TRD_INFO FOR ACCESS 
 SELECT 
	DATA_ORG_CDE ( TITLE '数据机构代码'),
	TRAD_SITE_CDE ( TITLE '交易地点代码'),
	BOND_CDE ( TITLE '债券代码'),
	BIZ_DATE ( TITLE '日期'),
	CSTD_ORG_TYPE ( TITLE '托管机构类型'),
	SUB_CSTD_ORG_CDE ( TITLE '分托管机构代码'),
	SUB_CSTD_BAL ( TITLE '分托管余额'),
	SUB_CSTD_BAL_CNVT_RMB ( TITLE '分托管余额折人民币'),
	END_SETL_PRC ( TITLE '期末结算价格'),
	END_SETL_PRC_CNVT_RMB ( TITLE '期末结算价格折人民币'),
	END_MAT_Y_YLD ( TITLE '期末到期年收益率'),
	CUR_PRD_AVG_PRC ( TITLE '本期平均价格'),
	CUR_PRD_AVG_PRC_CNVT_RMB ( TITLE '本期平均价格折人民币'),
	AVG_MAT_Y_YLD ( TITLE '平均到期年收益率'),
	NPRC_AVG_PRC ( TITLE '净价平均价格'),
	NPRC_AVG_PRC_CNVT_RMB ( TITLE '净价平均价格折人民币'),
	END_ACRU_INTR ( TITLE '期末应计利息'),
	END_ACRU_INTR_CNVT_RMB ( TITLE '期末应计利息折人民币'),
	TRAD_AMT ( TITLE '成交金额'),
	TRAD_AMT_CNVT_RMB ( TITLE '成交金额折人民币')
 from  nsPUBMART.SDC_BD_TRD_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SPE_INVST_ACCT_DELT_CLSF_D;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPUBVIEW.SPE_INVST_ACCT_DELT_CLSF_D (
	S_DATE,
	E_DATE,
	OAP_ACCT_NBR,
	SEC_ACCT_NBR,
	MKT_SORT,
	CLSF_3_MKT_VAL
)
 AS LOCKING NSPUBMART.SPE_INVST_ACCT_DELT_CLSF_D FOR ACCESS 
 SELECT 
 	S_DATE ( TITLE '开始日期'),
	E_DATE ( TITLE '结束日期'),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	MKT_SORT ( TITLE '市场类别'),
	CLSF_3_MKT_VAL ( TITLE '三级分类（持股市值）')
 from  NSPUBMART.SPE_INVST_ACCT_DELT_CLSF_D ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SPE_INVST_CLSF_NEW_ACCT_PSN_D;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPUBVIEW.SPE_INVST_CLSF_NEW_ACCT_PSN_D (
	STAT_DATE,
	OAP_ACCT_NBR,
	SEC_ACCT_NBR,
	SEC_ACCT_NAME,
	MKT_SORT,
	CLSF_1,
	CLSF_2_MKT_VAL,
	CLSF_3_MKT_VAL,
	Cmsmc_CLSF_MKT_VAL,
	END_HOLD_MKT_VAL_MAX,
	END_HOLD_MKT_VAL_MAX_DATE
)
 AS LOCKING NSPUBMART.SPE_INVST_CLSF_NEW_ACCT_PSN_D FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	SEC_ACCT_NAME ( TITLE '证券账户名称'),
	MKT_SORT ( TITLE '市场类别'),
	CLSF_1 ( TITLE '一级分类'),
	CLSF_2_MKT_VAL ( TITLE '二级分类（持股市值）'),
	CLSF_3_MKT_VAL ( TITLE '三级分类（持股市值）'),
	Cmsmc_CLSF_MKT_VAL ( TITLE '中证监测分类（持股市值）'),
	END_HOLD_MKT_VAL_MAX ( TITLE '期末持股市值最大值'),
	END_HOLD_MKT_VAL_MAX_DATE ( TITLE '期末持股市值最大值日期')
 from  NSPUBMART.SPE_INVST_CLSF_NEW_ACCT_PSN_D ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SPE_INVST_CLSF_ORG_D;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPUBVIEW.SPE_INVST_CLSF_ORG_D (
	S_DATE,
	OAP_ACCT_NBR,
	SEC_ACCT_NBR,
	SEC_ACCT_NAME,
	MKT_SORT,
	SEC_ACCT_SORT,
	CLSF_1,
	CLSF_2,
	CLSF_3,
	Cmsmc_CLSF,
	BNK_ID,
	E_DATE
)
 AS LOCKING NSPUBMART.SPE_INVST_CLSF_ORG_D FOR ACCESS 
 SELECT 
    S_DATE ( TITLE '开始日期'),
	OAP_ACCT_NBR ( TITLE '一码通标识'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	SEC_ACCT_NAME ( TITLE '证券账户名称'),
	MKT_SORT ( TITLE '市场类别'),
	SEC_ACCT_SORT ( TITLE '证券账户类别'),
	CLSF_1 ( TITLE '《标准》一级分类'),
	CLSF_2 ( TITLE '《标准》二级分类'),
	CLSF_3 ( TITLE '《标准》三级分类'),
	Cmsmc_CLSF ( TITLE '中证监测分类'),
	BNK_ID ( TITLE '银行标识'),
	E_DATE ( TITLE '结束日期')
 from  NSPUBMART.SPE_INVST_CLSF_ORG_D ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SPE_INVST_CLSF_PSN_D;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPUBVIEW.SPE_INVST_CLSF_PSN_D (
	STAT_DATE,
	OAP_ACCT_NBR,
	SEC_ACCT_NBR,
	SEC_ACCT_NAME,
	MKT_SORT,
	CLSF_1,
	CLSF_2_MKT_VAL,
	CLSF_3_MKT_VAL,
	Cmsmc_CLSF_MKT_VAL,
	CLSF_2_AGE,
	CLSF_3_AGE,
	END_HOLD_MKT_VAL_MAX,
	END_HOLD_MKT_VAL_MAX_DATE,
	SEC_ACCT_SORT
)
 AS LOCKING NSPUBMART.SPE_INVST_CLSF_PSN_D FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	SEC_ACCT_NAME ( TITLE '证券账户名称'),
	MKT_SORT ( TITLE '市场类别'),
	CLSF_1 ( TITLE '一级分类'),
	CLSF_2_MKT_VAL ( TITLE '二级分类（持股市值）'),
	CLSF_3_MKT_VAL ( TITLE '三级分类（持股市值）'),
	Cmsmc_CLSF_MKT_VAL ( TITLE '中证监测分类（持股市值）'),
	CLSF_2_AGE ( TITLE '二级分类（年龄）'),
	CLSF_3_AGE ( TITLE '三级分类（年龄）'),
	END_HOLD_MKT_VAL_MAX ( TITLE '期末持股市值最大值'),
	END_HOLD_MKT_VAL_MAX_DATE ( TITLE '期末持股市值最大值日期'),
	SEC_ACCT_SORT ( TITLE '证券账户类别')
 from  NSPUBMART.SPE_INVST_CLSF_PSN_D ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SPE_INVST_CLSF_PSN_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPUBVIEW.SPE_INVST_CLSF_PSN_M (
	STAT_DATE,
	OAP_ACCT_NBR,
	SEC_ACCT_NBR,
	SEC_ACCT_NAME,
	MKT_SORT,
	CLSF_1,
	CLSF_2_MKT_VAL,
	CLSF_3_MKT_VAL,
	Cmsmc_CLSF_MKT_VAL,
	CLSF_2_AGE,
	CLSF_3_AGE,
	END_HOLD_MKT_VAL_MAX,
	END_HOLD_MKT_VAL_MAX_DATE,
	SEC_ACCT_SORT
)
 AS LOCKING NSPUBMART.SPE_INVST_CLSF_PSN_M FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	SEC_ACCT_NAME ( TITLE '证券账户名称'),
	MKT_SORT ( TITLE '市场类别'),
	CLSF_1 ( TITLE '一级分类'),
	CLSF_2_MKT_VAL ( TITLE '二级分类（持股市值）'),
	CLSF_3_MKT_VAL ( TITLE '三级分类（持股市值）'),
	Cmsmc_CLSF_MKT_VAL ( TITLE '中证监测分类（持股市值）'),		
	CLSF_2_AGE ( TITLE '二级分类（年龄）'),
	CLSF_3_AGE ( TITLE '三级分类（年龄）'),
	END_HOLD_MKT_VAL_MAX ( TITLE '期末持股市值最大值'),
	END_HOLD_MKT_VAL_MAX_DATE ( TITLE '期末持股市值最大值日期'),
	SEC_ACCT_SORT ( TITLE '证券账户类别')
 from  NSPUBMART.SPE_INVST_CLSF_PSN_M ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SPE_INVST_ORG_NEW_CLSF;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPUBVIEW.SPE_INVST_ORG_NEW_CLSF (
	OAP_ACCT_NBR,
	INVST_NAME,
	CLSF_3_NEW,
	S_DATE,
	E_DATE
)
 AS LOCKING NSPUBMART.SPE_INVST_ORG_NEW_CLSF FOR ACCESS 
 SELECT 
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	INVST_NAME ( TITLE '投资者名称'),
	CLSF_3_NEW ( TITLE '三级分类（新）'),
	S_DATE ( TITLE '开始日期'),
	E_DATE ( TITLE '结束日期')
 from  NSPUBMART.SPE_INVST_ORG_NEW_CLSF;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SPE_INVST_PSN_HD_MAX_MKT_VAL_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPUBVIEW.SPE_INVST_PSN_HD_MAX_MKT_VAL_M (
	STAT_DATE,
	OAP_ACCT_NBR,
	END_HOLD_MKT_VAL_MAX,
	END_HOLD_MKT_VAL_MAX_DATE
)
 AS LOCKING NSPUBMART.SPE_INVST_PSN_HD_MAX_MKT_VAL_M FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	END_HOLD_MKT_VAL_MAX ( TITLE '期末持股市值最大值'),
	END_HOLD_MKT_VAL_MAX_DATE ( TITLE '期末持股市值最大值日期')
 from  NSPUBMART.SPE_INVST_PSN_HD_MAX_MKT_VAL_M ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SPE_INVST_PSN_HD_STK_DTL_D;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPUBVIEW.SPE_INVST_PSN_HD_STK_DTL_D (
	STAT_DATE,
	OAP_ACCT_NBR,
	SEC_ACCT_NBR,
	MKT_SORT,
	SEC_ACCT_SORT,
	NEGT_TYPE,
	END_HOLD_STK_MKT_VAL,
	CRNC,
	EXCH_RT
)
 AS LOCKING NSPUBMART.SPE_INVST_PSN_HD_STK_DTL_D FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE '统计日期'),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	MKT_SORT ( TITLE '市场类别'),
	SEC_ACCT_SORT ( TITLE '证券账户类别'),
	NEGT_TYPE ( TITLE '流通类型'),
	END_HOLD_STK_MKT_VAL ( TITLE '统计日期的期末持有股票市值'),
	CRNC ( TITLE '币种'),
	EXCH_RT ( TITLE '汇率')
 from  NSPUBMART.SPE_INVST_PSN_HD_STK_DTL_D ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.SPE_INVST_PSN_INFO_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPUBVIEW.SPE_INVST_PSN_INFO_M (
	S_DATE,
	E_DATE,
	OAP_ACCT_NBR,
	SEC_ACCT_NBR,
	MKT_SORT,
	SEC_ACCT_SORT,
	SEC_ACCT_STS,
	SEC_ACCT_NAME,
	BORN_DATE
)
 AS LOCKING NSPUBMART.SPE_INVST_PSN_INFO_M FOR ACCESS 
 SELECT 
 	S_DATE ( TITLE '开始日期'),
	E_DATE ( TITLE '结束日期'),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	MKT_SORT ( TITLE '市场类别'),
	SEC_ACCT_SORT ( TITLE '证券账户类别'),
	SEC_ACCT_STS ( TITLE '证券账户状态'),
	SEC_ACCT_NAME ( TITLE '证券账户名称'),
	BORN_DATE ( TITLE '出生日期')
 from  NSPUBMART.SPE_INVST_PSN_INFO_M ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.TFCT_STK_PLG_REPO_RATE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW  NSPUBVIEW.TFCT_STK_PLG_REPO_RATE(
	Stat_Date ,
        Rate_CLSF ,
        Rate_LLMT ,
        Rate_ULMT ,
        CNTR_CNT ,
        ACCT_VOL ,
        ST_RPCHS_AMT )
AS LOCKING NSPUBMART.TFCT_STK_PLG_REPO_RATE FOR ACCESS
SELECT 
	Stat_Date (TITLE ' 统计日期'),
        Rate_CLSF (TITLE ' 比例分类'),
        Rate_LLMT (TITLE ' 比例下限'),
        Rate_ULMT (TITLE ' 比例上限'),
        CNTR_CNT (TITLE ' 合约笔数'),
        ACCT_VOL (TITLE ' 账户数'),
        ST_RPCHS_AMT (TITLE ' 待购回金额') 
FROM NSPUBMART.TFCT_STK_PLG_REPO_RATE;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.TMID_DOM_IDX_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.TMID_DOM_IDX_INFO (
	BIZ_DATE,
	IDX_CDE,
	IDX_NAME,
	OPN_POINT,
	PRE_CLS_POINT,
	CLS_POINT,
	MAX_POINT,
	MIN_POINT,
	D_CHG_RATE,
	Y_CHG_RATE,
	RETN,
	TRAD_AMT,
	TRAD_QTT,
	TCAP,
	NEGT_CAP,
	TOT_MKT_VAL,
	NEGT_MKT_VAL,
	MKT_VAL_TNOV_RATE,
	TRAD_QTT_TNOV_RATE,
	AVG_STK_PRC,
	DATA_SRC_TYPE
)
 AS LOCKING nsPUBMart.TMID_DOM_IDX_INFO FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	IDX_CDE ( TITLE '指数代码'),
	IDX_NAME ( TITLE '指数名称'),
	OPN_POINT ( TITLE '开盘点数'),
	PRE_CLS_POINT ( TITLE '前收盘点数'),
	CLS_POINT ( TITLE '收盘点数'),
	MAX_POINT ( TITLE '最高点数'),
	MIN_POINT ( TITLE '最低点数'),
	D_CHG_RATE ( TITLE '日涨跌幅'),
	Y_CHG_RATE ( TITLE '年涨跌幅'),
	RETN ( TITLE '对数收益率'),
	TRAD_AMT ( TITLE '成交金额'),
	TRAD_QTT ( TITLE '成交量'),
	TCAP ( TITLE '总股本'),
	NEGT_CAP ( TITLE '流通股本'),
	TOT_MKT_VAL ( TITLE '总市值'),
	NEGT_MKT_VAL ( TITLE '流通市值'),
	MKT_VAL_TNOV_RATE ( TITLE '市值换手率'),
	TRAD_QTT_TNOV_RATE ( TITLE '成交量换手率'),
	AVG_STK_PRC ( TITLE '平均股价'),
	DATA_SRC_TYPE ( TITLE '数据源类型')
 FROM  nsPUBMart.TMID_DOM_IDX_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.TMID_EXCH_RT_INTR_RT_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.TMID_EXCH_RT_INTR_RT_INFO (
	BIZ_DATE,
	IDX_CDE,
	IDX_NAME,
	TYP,
	IDX_VAL
)
 AS LOCKING nsPUBMart.TMID_EXCH_RT_INTR_RT_INFO FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	IDX_CDE ( TITLE '指标代码'),
	IDX_NAME ( TITLE '指标名称'),
	TYP ( TITLE '类型'),
	IDX_VAL ( TITLE '指标值')
 FROM  nsPUBMart.TMID_EXCH_RT_INTR_RT_INFO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.TMID_SEC_SMT_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.TMID_SEC_SMT_BAL (
	BIZ_DATE,
	SEC_EXCH_CDE,
	SEC_CDE,
	FIN_BAL,
	SEC_LN_BAL,
	SEC_LN_VOL,
	SEC_LN_MKT_VAL
)
 AS LOCKING nsPUBMart.TMID_SEC_SMT_BAL FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	SEC_CDE ( TITLE '证券代码'),
	FIN_BAL ( TITLE '融资余额'),
	SEC_LN_BAL ( TITLE '融券余额'),
	SEC_LN_VOL ( TITLE '融券数量'),
	SEC_LN_MKT_VAL ( TITLE '融券市值')
 FROM  nsPUBMart.TMID_SEC_SMT_BAL ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.TMID_SMT_GUART_SEC_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.TMID_SMT_GUART_SEC_BAL (
	BIZ_DATE,
	SEC_EXCH_CDE,
	SEC_CDE,
	GUART_VOL,
	GUART_MKT_VAL
)
 AS LOCKING nsPUBMart.TMID_SMT_GUART_SEC_BAL FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	SEC_CDE ( TITLE '证券代码'),
	GUART_VOL ( TITLE '担保数量'),
	GUART_MKT_VAL ( TITLE '担保市值')
 FROM  nsPUBMart.TMID_SMT_GUART_SEC_BAL ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.TMID_STK_PLG_REPO_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.TMID_STK_PLG_REPO_TRAD (
	BIZ_DATE,
	SEC_CDE,
	SEC_EXCH_CDE,
	ADD_PLG_CNT,
	RLS_PLG_CNT,
	INIT_TRAD_AMT,
	INIT_TRAD_CNT,
	RPCHS_TRAD_AMT,
	RPCHS_TRAD_CNT,
	ST_RPCHS_INIT_TRAD_AMT,
	ST_RPCHS_SEC_VOL,
	ST_RPCHS_SEC_MKT_VAL,
	INIT_PLG_SEC_VOL,
	INIT_PLG_SEC_MKT_VAL
)
 AS LOCKING nsPUBMart.TMID_STK_PLG_REPO_TRAD FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	SEC_CDE ( TITLE '证券代码'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	ADD_PLG_CNT ( TITLE '补充质押笔数'),
	RLS_PLG_CNT ( TITLE '解除质押笔数'),
	INIT_TRAD_AMT ( TITLE '初始交易金额'),
	INIT_TRAD_CNT ( TITLE '初始交易笔数'),
	RPCHS_TRAD_AMT ( TITLE '购回交易金额'),
	RPCHS_TRAD_CNT ( TITLE '购回交易笔数'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '待购回初始交易金额'),
	ST_RPCHS_SEC_VOL ( TITLE '待购回证券数量'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '待购回证券市值'),
	INIT_PLG_SEC_VOL ( TITLE '初始质押证券数量'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '初始质押证券市值')
 FROM  nsPUBMart.TMID_STK_PLG_REPO_TRAD ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.TMID_STK_PLG_REPO_TRAD_INVST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.TMID_STK_PLG_REPO_TRAD_INVST  (
	BIZ_DATE,
	STK_INVST_SORT,
	STK_INVST_NAME,
	ADD_PLG_CNT,
	RLS_PLG_CNT,
	INIT_TRAD_AMT,
	INIT_TRAD_CNT,
	RPCHS_TRAD_AMT,
	RPCHS_TRAD_CNT,
	ST_RPCHS_INIT_TRAD_AMT,
	ST_RPCHS_SEC_VOL,
	ST_RPCHS_SEC_MKT_VAL,
	INIT_PLG_SEC_VOL,
	INIT_PLG_SEC_MKT_VAL
)
 AS LOCKING nsPUBMart.TMID_STK_PLG_REPO_TRAD_INVST  FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	STK_INVST_SORT ( TITLE '股票投资者类别'),
	STK_INVST_NAME ( TITLE '股票投资者名称'),
	ADD_PLG_CNT ( TITLE '补充质押笔数'),
	RLS_PLG_CNT ( TITLE '解除质押笔数'),
	INIT_TRAD_AMT ( TITLE '初始交易金额'),
	INIT_TRAD_CNT ( TITLE '初始交易笔数'),
	RPCHS_TRAD_AMT ( TITLE '购回交易金额'),
	RPCHS_TRAD_CNT ( TITLE '购回交易笔数'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '待购回初始交易金额'),
	ST_RPCHS_SEC_VOL ( TITLE '待购回证券数量'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '待购回证券市值'),
	INIT_PLG_SEC_VOL ( TITLE '初始质押证券数量'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '初始质押证券市值')
 FROM  nsPUBMart.TMID_STK_PLG_REPO_TRAD_INVST  ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.TMID_STK_PLG_REPO_TRAD_SC;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPUBView.TMID_STK_PLG_REPO_TRAD_SC  (
	BIZ_DATE,
	SC_CDE,
	SC_NAME,
	MANG_CLSF,
	CAP_TYPE,
	ADD_PLG_CNT,
	RLS_PLG_CNT,
	INIT_TRAD_AMT,
	INIT_TRAD_CNT,
	RPCHS_TRAD_AMT,
	RPCHS_TRAD_CNT,
	ST_RPCHS_INIT_TRAD_AMT,
	ST_RPCHS_SEC_VOL,
	ST_RPCHS_SEC_MKT_VAL,
	INIT_PLG_SEC_VOL,
	INIT_PLG_SEC_MKT_VAL
)
 AS LOCKING nsPUBMart.TMID_STK_PLG_REPO_TRAD_SC  FOR ACCESS 
 SELECT 
	BIZ_DATE ( TITLE '业务日期'),
	SC_CDE ( TITLE '证券公司代码'),
	SC_NAME ( TITLE '证券公司名称'),
	MANG_CLSF ( TITLE '经营分类'),
	CAP_TYPE ( TITLE '股本类型'),
	ADD_PLG_CNT ( TITLE '补充质押笔数'),
	RLS_PLG_CNT ( TITLE '解除质押笔数'),
	INIT_TRAD_AMT ( TITLE '初始交易金额'),
	INIT_TRAD_CNT ( TITLE '初始交易笔数'),
	RPCHS_TRAD_AMT ( TITLE '购回交易金额'),
	RPCHS_TRAD_CNT ( TITLE '购回交易笔数'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '待购回初始交易金额'),
	ST_RPCHS_SEC_VOL ( TITLE '待购回证券数量'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '待购回证券市值'),
	INIT_PLG_SEC_VOL ( TITLE '初始质押证券数量'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '初始质押证券市值')
 FROM  nsPUBMart.TMID_STK_PLG_REPO_TRAD_SC  ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-


.quit
 *** You are now logged off from the DBC.
 *** Exiting BTEQ...
 *** RC (return code) = 0 
