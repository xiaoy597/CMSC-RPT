BTEQ 15.00.00.00 Wed Jan 17 10:13:25 2018 PID: 28747
 
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


SHOW VIEW nsPView.ACT_ABNO_ACCT_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.ACT_ABNO_ACCT_INFO (
 SEC_ACCT_NBR,
 ABNO_RESN,
 MTN_DATE
)
 AS LOCKING nsPDATA_D1.ACT_ABNO_ACCT_INFO FOR ACCESS 
 SELECT 
 SEC_ACCT_NBR ( TITLE '证券账户号'),
 ABNO_RESN ( TITLE '异常原因'),
 MTN_DATE ( TITLE '维护日期')
 from  nsPDATA_D1.ACT_ABNO_ACCT_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.ACT_FUTRS_CNTR_QUOT_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPView.ACT_FUTRS_CNTR_QUOT_TB (
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
	CNTR_MLTPR,
	PSTN_AMT
)
 AS LOCKING nspDATA_D1.ACT_FUTRS_CNTR_QUOT_TB FOR ACCESS 
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
	CNTR_MLTPR ( TITLE '合约乘数'),
	PSTN_AMT ( TITLE '持仓金额')
 from  nspDATA_D1.ACT_FUTRS_CNTR_QUOT_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.ACT_FUTRS_INVST_CLSF_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPView.ACT_FUTRS_INVST_CLSF_HIS (
	EXCH_CUST_CDE,
	EXCH_NBR,
	FC_MEMB_NBR,
	FUTRS_UNFY_OPN_ACCT_CUST_CDE,
	FC_UNFY_CDE,
	INSD_BANKRL_ACCT,
	COUN_CDE,
	PSN_ORG_ID,
	FUTRS_INVST_SORT,
	FCPTL_SCND_CLSF,
	ACCT_STS,
	OAP_ACCT_NBR,
	OAP_ACCT_STS_VLD_INDC,
	CRS_MGN_INVST_SORT,
	CORLT_RLTN_IF_CFRM,
	S_DATE ,
	E_DATE 
)
 AS LOCKING nsPDATA_D1.ACT_FUTRS_INVST_CLSF_HIS FOR ACCESS 
 SELECT 
	EXCH_CUST_CDE ( TITLE '交易所客户编码'),
	EXCH_NBR ( TITLE '交易所编号'),
	FC_MEMB_NBR ( TITLE '期货公司会员号'),
	FUTRS_UNFY_OPN_ACCT_CUST_CDE ( TITLE '期货统一开户客户编码'),
	FC_UNFY_CDE ( TITLE '期货公司统一编码'),
	INSD_BANKRL_ACCT ( TITLE '内部资金账户'),
	COUN_CDE ( TITLE '国家代码'),
	PSN_ORG_ID ( TITLE '个人机构标识'),
	FUTRS_INVST_SORT ( TITLE '期货投资者类别'),
	FCPTL_SCND_CLSF ( TITLE '外资二级分类'),
	ACCT_STS ( TITLE '账户状态'),
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	OAP_ACCT_STS_VLD_INDC ( TITLE '一码通账户状态有效标志'),
	CRS_MGN_INVST_SORT ( TITLE '跨市场投资者类别'),
	CORLT_RLTN_IF_CFRM ( TITLE '关联关系是否确认'),
	S_DATE  ( TITLE '开始日期'),
	E_DATE  ( TITLE '结束日期')
 from  nsPDATA_D1.ACT_FUTRS_INVST_CLSF_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.ACT_INV_CLS_HOLD_MKT_VAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.ACT_INV_CLS_HOLD_MKT_VAL (
 STAT_DATE,
 CLSF_3,
 MKT_TYPE,
 SEC_ACCT_SORT,
 NEGT_ID,
 HOLD_VOL,
 HOLD_AMT,
 DATA_DATE
)
 AS LOCKING nsPDATA_D1.ACT_INV_CLS_HOLD_MKT_VAL FOR ACCESS 
 SELECT 
 STAT_DATE ( TITLE '统计日期'),
 CLSF_3 ( TITLE '三级分类'),
 MKT_TYPE ( TITLE '市场类型'),
 SEC_ACCT_SORT ( TITLE '证券账户类别'),
 NEGT_ID ( TITLE '流通标识'),
 HOLD_VOL ( TITLE '持有数量'),
 HOLD_AMT ( TITLE '持有金额（元）'),
 DATA_DATE (TITLE '数据日期')
 from  nsPDATA_D1.ACT_INV_CLS_HOLD_MKT_VAL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.ACT_SEC_HOLD_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.ACT_SEC_HOLD_HIS (
 MKT_SORT,
 SEC_ACCT_NBR,
 CSTD_UNIT_ID,
 SEC_CDE,
 CAP_TYPE,
 TD_END_HOLD_VOL, 
 S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.ACT_SEC_HOLD_HIS FOR ACCESS 
 SELECT 
 MKT_SORT ( TITLE '市场类别'),
 SEC_ACCT_NBR ( TITLE '证券账户号'),
 CSTD_UNIT_ID ( TITLE '托管单元标识'),
 SEC_CDE ( TITLE '证券代码'),
 CAP_TYPE ( TITLE '股本类型'),
 TD_END_HOLD_VOL ( TITLE '日终持有数量'),  
 S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.ACT_SEC_HOLD_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.ACT_STK_FORN_INVST_CLSF_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPView.ACT_STK_FORN_INVST_CLSF_HIS (
	OAP_ACCT_NBR,
	SEC_ACCT_NBR,
	SEC_ACCT_NAME,
	SEC_EXCH_CDE,
	SEC_ACCT_SORT,
	FCPTL_SCND_CLSF,
	COUN_CDE,
	PS_NORG_ID,
	OAP_SEC_ACCT_STS,
	S_DATE,
	E_DATE
)
 AS LOCKING nspDATA_D1.ACT_STK_FORN_INVST_CLSF_HIS FOR ACCESS 
 SELECT 
	OAP_ACCT_NBR ( TITLE '一码通账户号码'),
	SEC_ACCT_NBR ( TITLE '证券账户号'),
	SEC_ACCT_NAME ( TITLE '证券账户名称'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	SEC_ACCT_SORT                  ( TITLE '证券账户类别'),
	FCPTL_SCND_CLSF ( TITLE '外资二级分类'),
	COUN_CDE ( TITLE '国家代码'),
	PS_NORG_ID ( TITLE '个人机构标识'),
	OAP_SEC_ACCT_STS ( TITLE '一码通证券账户状态'),
	S_DATE ( TITLE '开始日期'),
  E_DATE ( TITLE '结束日期')
 from  nspDATA_D1.ACT_STK_FORN_INVST_CLSF_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.ACT_STK_INVST_CLSF_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.ACT_STK_INVST_CLSF_HIS (
  OAP_ACCT_NBR,
  SEC_ACCT_NBR,
  SEC_ACCT_NAME,
  MKT_SORT,
  SEC_ACCT_SORT,
  CLSF_1,
  CLSF_2,
  CLSF_3,
  CMSMC_CLSF,
  CLSF_2_AGE,
  CLSF_3_AGE,
  BNK_ID,
  S_DATE,
  E_DATE
)
 AS LOCKING  nsPDATA_D1.ACT_STK_INVST_CLSF_HIS FOR ACCESS 
 SELECT 
  OAP_ACCT_NBR ( TITLE '一码通账户号码'),
  SEC_ACCT_NBR ( TITLE '证券账户号'),
  SEC_ACCT_NAME ( TITLE '证券账户名称'),
  MKT_SORT ( TITLE '市场类别'),
  SEC_ACCT_SORT ( TITLE '证券账户类别'),
  CLSF_1 ( TITLE '一级分类'),
  CLSF_2 ( TITLE '二级分类'),
  CLSF_3 ( TITLE '三级分类'),
  CMSMC_CLSF ( TITLE '中证监测分类'),
  CLSF_2_AGE ( TITLE '二级分类（年龄）'),
  CLSF_3_AGE ( TITLE '三级分类（年龄）'),
  BNK_ID ( TITLE '银行标识'),
  S_DATE (TITLE '开始日期'),
  E_DATE (TITLE '结束日期')
 from   nsPDATA_D1.ACT_STK_INVST_CLSF_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.ACT_STK_INVST_CLSF_HIS2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.ACT_STK_INVST_CLSF_HIS2 (
  OAP_ACCT_NBR,
  SEC_ACCT_NBR,
  SEC_ACCT_NAME,
  MKT_SORT,
  SEC_ACCT_SORT,
  CLSF_1,
  CLSF_2,
  CLSF_3,
  CLSF_2_AGE,
  CLSF_3_AGE,
  BNK_ID,
  S_DATE,
  E_DATE
)
 AS LOCKING  nsPDATA_D1.ACT_STK_INVST_CLSF_HIS FOR ACCESS 
 SELECT 
  OAP_ACCT_NBR ( TITLE '一码通账户号码'),
  SEC_ACCT_NBR ( TITLE '证券账户号'),
  SEC_ACCT_NAME ( TITLE '证券账户名称'),
  MKT_SORT ( TITLE '市场类别'),
  SEC_ACCT_SORT ( TITLE '证券账户类别'),
  CLSF_1 ( TITLE '一级分类'),
  CLSF_2 ( TITLE '二级分类'),
  CLSF_3 ( TITLE '三级分类'),
  CLSF_2_AGE ( TITLE '二级分类（年龄）'),
  CLSF_3_AGE ( TITLE '三级分类（年龄）'),
  BNK_ID ( TITLE '银行标识'),
  S_DATE (TITLE '开始日期'),
  E_DATE (TITLE '结束日期')
 from   nsPDATA_D1.ACT_STK_INVST_CLSF_HIS2;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.ACT_STK_INVST_CLSF_HIS_1;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.ACT_STK_INVST_CLSF_HIS_1 (
  OAP_ACCT_NBR,
  SEC_ACCT_NBR,
  SEC_ACCT_NAME,
  MKT_SORT,
  SEC_ACCT_SORT,
  CLSF_1,
  CLSF_2,
  CLSF_3,
  CMSMC_CLSF,
  CLSF_2_AGE,
  CLSF_3_AGE,
  BNK_ID
)
 AS LOCKING  nsPDATA_D1.ACT_STK_INVST_CLSF_HIS FOR ACCESS 
 SELECT 
  OAP_ACCT_NBR ( TITLE '一码通账户号码'),
  SEC_ACCT_NBR ( TITLE '证券账户号'),
  SEC_ACCT_NAME ( TITLE '证券账户名称'),
  MKT_SORT ( TITLE '市场类别'),
  SEC_ACCT_SORT ( TITLE '证券账户类别'),
  CLSF_1 ( TITLE '一级分类'),
  CLSF_2 ( TITLE '二级分类'),
  CLSF_3 ( TITLE '三级分类'),
  CMSMC_CLSF ( TITLE '中证监测分类'),
  CLSF_2_AGE ( TITLE '二级分类（年龄）'),
  CLSF_3_AGE ( TITLE '三级分类（年龄）'),
  BNK_ID ( TITLE '银行标识')
 from   nsPDATA_D1.ACT_STK_INVST_CLSF_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.ACT_STK_PLG_TRAD_DTL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPVIEW.ACT_STK_PLG_TRAD_DTL
AS LOCKING NSPDATA_D1.ACT_STK_PLG_TRAD_DTL FOR ACCESS
SELECT * FROM NSPDATA_D1.ACT_STK_PLG_TRAD_DTL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.CDE_CONV_MAPN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--INSERT INTO nsPDATA_d1.CDE_CONV_MAPN SELECT * FROM nsPDATA_d1.CDE_CONV_MAPN_170921;

	REPLACE VIEW nsPVIEW.CDE_CONV_MAPN (
	SRC_TB_NBR,
	SRC_TB_ENAME,
	SRC_CDE_ENAME,
	SRC_CDE_VAL,
	SRC_CDE_DESC,
	CDE_ENG_NAME,
	CDE_VAL,
	CDE_DESC,
	VLD_INDC,
	SUBJECT,
	DATA_DATE
)
 AS LOCKING nsPDATA_d1.CDE_CONV_MAPN FOR ACCESS 
 SELECT 
	SRC_TB_NBR ( TITLE '源表编号'),
	SRC_TB_ENAME ( TITLE '源表英文名'),
	SRC_CDE_ENAME ( TITLE '源代码英文名'),
	SRC_CDE_VAL ( TITLE '源代码值'),
	SRC_CDE_DESC ( TITLE '源代码描述'),
	CDE_ENG_NAME ( TITLE '代码英文名'),
	CDE_VAL ( TITLE '代码值'),
	CDE_DESC ( TITLE '代码描述'),
	VLD_INDC ( TITLE '有效标志'),
	SUBJECT ( TITLE '主题域'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_d1.CDE_CONV_MAPN ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.CDE_FIN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.CDE_FIN (
	CDE_SORT,
	CDE_NAME,
	CDE_VAL,
	CDE_DESC,
	DATA_DATE
)
 AS LOCKING nsPDATA_D1.CDE_FIN FOR ACCESS 
 SELECT 
	CDE_SORT ( TITLE '代码类别'),
	CDE_NAME ( TITLE '代码名称'),
	CDE_VAL ( TITLE '代码值'),
	CDE_DESC ( TITLE '代码描述'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_D1.CDE_FIN;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.CDE_PTY;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.CDE_PTY (
	CDE_SORT,
	CDE_NAME,
	CDE_VAL,
	CDE_DESC,
	DATA_DATE
)
 AS LOCKING nsPDATA_d1.CDE_PTY FOR ACCESS 
 SELECT 
	CDE_SORT ( TITLE '代码类别'),
	CDE_NAME ( TITLE '代码名称'),
	CDE_VAL ( TITLE '代码值'),
	CDE_DESC ( TITLE '代码描述'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_d1.CDE_PTY ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.FIN_ASET_LBLT_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.FIN_ASET_LBLT_TB (
	ACONT_PTY_CDE,
	RPT_DATE,
	ACONT_YEARLY,
	IDX_CDE,
	RPT_FRQU_TYPE,
	PTY_NAME,
	CERT_TYPE,
	CERT_NBR,
	START_BAL,
	END_BAL,
	MERG_RPT_ID,
	AUDIT_ID,
	RSRV_FLD1,
	RSRV_FLD2,
	RSRV_FLD3,
	DATA_SRC_TB_NAME,
	DATA_DATE
)
 AS LOCKING nsPDATA_D1.FIN_ASET_LBLT_TB FOR ACCESS 
 SELECT 
	ACONT_PTY_CDE ( TITLE '主体代码'),
	RPT_DATE ( TITLE '报表日期'),
	ACONT_YEARLY ( TITLE '会计年度'),
	IDX_CDE ( TITLE '指标编码'),
	RPT_FRQU_TYPE ( TITLE '报表频率代码'),
	PTY_NAME ( TITLE '主体名称'),
	CERT_TYPE ( TITLE '证件类型'),
	CERT_NBR ( TITLE '证件号码'),
	START_BAL ( TITLE '期初余额'),
	END_BAL ( TITLE '期末余额'),
	MERG_RPT_ID ( TITLE '合并报表标识'),
	AUDIT_ID ( TITLE '审计标识'),
	RSRV_FLD1 ( TITLE '预留字段1'),
	RSRV_FLD2 ( TITLE '预留字段2'),
	RSRV_FLD3 ( TITLE '预留字段3'),
	DATA_SRC_TB_NAME ( TITLE '数据源表名称'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_D1.FIN_ASET_LBLT_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.FIN_CASH_FLOW_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.FIN_CASH_FLOW_TB (
	ACONT_PTY_CDE,
	RPT_DATE,
	ACONT_YEARLY,
	IDX_CDE,
	RPT_FRQU_TYPE,
	PTY_NAME,
	CERT_TYPE,
	CERT_NBR,
	START_BAL,
	END_BAL,
	MERG_RPT_ID,
	AUDIT_ID,
	RSRV_FLD1,
	RSRV_FLD2,
	RSRV_FLD3,
	DATA_SRC_TB_NAME,
	DATA_DATE
)
 AS LOCKING nsPDATA_D1.FIN_CASH_FLOW_TB FOR ACCESS 
 SELECT 
	ACONT_PTY_CDE ( TITLE '主体代码'),
	RPT_DATE ( TITLE '报表日期'),
	ACONT_YEARLY ( TITLE '会计年度'),
	IDX_CDE ( TITLE '指标编码'),
	RPT_FRQU_TYPE ( TITLE '报表频率代码'),
	PTY_NAME ( TITLE '主体名称'),
	CERT_TYPE ( TITLE '证件类型'),
	CERT_NBR ( TITLE '证件号码'),
	START_BAL ( TITLE '期初余额'),
	END_BAL ( TITLE '期末余额'),
	MERG_RPT_ID ( TITLE '合并报表标识'),
	AUDIT_ID ( TITLE '审计标识'),
	RSRV_FLD1 ( TITLE '预留字段1'),
	RSRV_FLD2 ( TITLE '预留字段2'),
	RSRV_FLD3 ( TITLE '预留字段3'),
	DATA_SRC_TB_NAME ( TITLE '数据源表名称'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_D1.FIN_CASH_FLOW_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.FIN_CASH_FLOW_TBCASH_FLOW_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.FIN_CASH_FLOW_TBCASH_FLOW_TB (
	ACONT_PTY_CDE,
	RPT_DATE,
	ACONT_YEARLY,
	IDX_CDE,
	RPT_FRQU_TYPE,
	PTY_NAME,
	CERT_TYPE,
	CERT_NBR,
	START_BAL,
	END_BAL,
	MERG_RPT_ID,
	AUDIT_ID,
	RSRV_FLD1,
	RSRV_FLD2,
	RSRV_FLD3,
	DATA_SRC_TB_NAME,
	DATA_DATE
)
 AS LOCKING nsPDATA_D1.FIN_CASH_FLOW_TBCASH_FLOW_TB FOR ACCESS 
 SELECT 
	ACONT_PTY_CDE ( TITLE '主体代码'),
	RPT_DATE ( TITLE '报表日期'),
	ACONT_YEARLY ( TITLE '会计年度'),
	IDX_CDE ( TITLE '指标编码'),
	RPT_FRQU_TYPE ( TITLE '报表频率代码'),
	PTY_NAME ( TITLE '主体名称'),
	CERT_TYPE ( TITLE '证件类型'),
	CERT_NBR ( TITLE '证件号码'),
	START_BAL ( TITLE '期初余额'),
	END_BAL ( TITLE '期末余额'),
	MERG_RPT_ID ( TITLE '合并报表标识'),
	AUDIT_ID ( TITLE '审计标识'),
	RSRV_FLD1 ( TITLE '预留字段1'),
	RSRV_FLD2 ( TITLE '预留字段2'),
	RSRV_FLD3 ( TITLE '预留字段3'),
	DATA_SRC_TB_NAME ( TITLE '数据源表名称'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_D1.FIN_CASH_FLOW_TBCASH_FLOW_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.FIN_DX_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.FIN_DX_TB (
	IDX_CDE,
	IDX_NAME,
	FINA_STD_ID,
	IDX_CLBR_DESC,
	EFCTV_DATE,
	INVL_DATE,
	DATA_DATE
)
 AS LOCKING nsPDATA_D1.FIN_DX_TB FOR ACCESS 
 SELECT 
	IDX_CDE ( TITLE '指标编码'),
	IDX_NAME ( TITLE '指标名称'),
	FINA_STD_ID ( TITLE '财标标识'),
	IDX_CLBR_DESC ( TITLE '指标口径描述'),
	EFCTV_DATE ( TITLE '生效日期'),
	INVL_DATE ( TITLE '失效日期'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_D1.FIN_DX_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.FIN_PRFT_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.FIN_PRFT_TB (
	ACONT_PTY_CDE,
	RPT_DATE,
	ACONT_YEARLY,
	IDX_CDE,
	RPT_FRQU_TYPE,
	PTY_NAME,
	CERT_TYPE,
	CERT_NBR,
	START_BAL,
	END_BAL,
	MERG_RPT_ID,
	AUDIT_ID,
	RSRV_FLD1,
	RSRV_FLD2,
	RSRV_FLD3,
	DATA_SRC_TB_NAME,
	DATA_DATE
)
 AS LOCKING nsPDATA_D1.FIN_PRFT_TB FOR ACCESS 
 SELECT 
	ACONT_PTY_CDE ( TITLE '主体代码'),
	RPT_DATE ( TITLE '报表日期'),
	ACONT_YEARLY ( TITLE '会计年度'),
	IDX_CDE ( TITLE '指标编码'),
	RPT_FRQU_TYPE ( TITLE '报表频率代码'),
	PTY_NAME ( TITLE '主体名称'),
	CERT_TYPE ( TITLE '证件类型'),
	CERT_NBR ( TITLE '证件号码'),
	START_BAL ( TITLE '期初余额'),
	END_BAL ( TITLE '期末余额'),
	MERG_RPT_ID ( TITLE '合并报表标识'),
	AUDIT_ID ( TITLE '审计标识'),
	RSRV_FLD1 ( TITLE '预留字段1'),
	RSRV_FLD2 ( TITLE '预留字段2'),
	RSRV_FLD3 ( TITLE '预留字段3'),
	DATA_SRC_TB_NAME ( TITLE '数据源表名称'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_D1.FIN_PRFT_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.FIN_RPT_FRQU;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.FIN_RPT_FRQU (
	RPT_FRQU_TYPE_CDE,
	RPT_FRQU_TYPE_DESC,
	DATA_DATE
)
 AS LOCKING nsPDATA_D1.FIN_RPT_FRQU FOR ACCESS 
 SELECT 
	RPT_FRQU_TYPE_CDE ( TITLE '报表频率代码'),
	RPT_FRQU_TYPE_DESC ( TITLE '报表频率描述'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_D1.FIN_RPT_FRQU;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_ASSET_BACKED;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_ASSET_BACKED (
	TRAD_PLAC_CDE,
	VART_CDE,
	DUR_B_D,
	DUR_CNL_D,
	DUR_TLMT,
	OCR_PLAC,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_ASSET_BACKED FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	DUR_B_D ( TITLE '存续起始日'),
	DUR_CNL_D ( TITLE '存续终止日'),
	DUR_TLMT ( TITLE '存续期限'),
	OCR_PLAC ( TITLE '发生场所'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_ASSET_BACKED ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_ASS_MAN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_ASS_MAN (
	TRAD_PLAC_CDE,
	VART_CDE,
	SPVSR,
	CSTD_PSN,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_ASS_MAN FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	SPVSR ( TITLE '管理人'),
	CSTD_PSN ( TITLE '托管人'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_ASS_MAN ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_BOND;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_BOND (
	TRAD_PLAC_CDE,
	BOND_CDE,
	ISSR_ID,
	BOND_PAR_VAL,
	ISS_DATE,
	ISS_PRC,
	MAT_DATE,
	PAR_RATE,
	MIDL_SML_ENTRP_DEBT_INDC,
	BOND_LVL,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_BOND FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	BOND_CDE ( TITLE '债券代码'),
	ISSR_ID ( TITLE '发行人标识'),
	BOND_PAR_VAL ( TITLE '债券面值'),
	ISS_DATE ( TITLE '发行日期'),
	ISS_PRC ( TITLE '发行价格'),
	MAT_DATE ( TITLE '到期日期'),
	PAR_RATE ( TITLE '票面利率'),
	MIDL_SML_ENTRP_DEBT_INDC ( TITLE '中小企业债标志'),
	BOND_LVL ( TITLE '债券等级'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_BOND ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_BOND_GRADE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_BOND_GRADE (
	TRAD_PLAC_CDE,
	BOND_CDE,
	RTAG_ID,
	RATN_DATE,
	DEBT_RATN,
	BOND_LVL,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_BOND_GRADE FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	BOND_CDE ( TITLE '债券代码'),
	RTAG_ID ( TITLE '评级机构标识'),
	RATN_DATE ( TITLE '评级日期'),
	DEBT_RATN ( TITLE '债项评级'),
	BOND_LVL ( TITLE '债券等级'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_BOND_GRADE ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_BROKER_ACC_MAN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_BROKER_ACC_MAN (
	TRAD_PLAC_CDE,
	VART_CDE,
	PROD_TYPE,
	CRT_DATE,
	MAT_DATE,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_BROKER_ACC_MAN FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	PROD_TYPE ( TITLE '产品类型'),
	CRT_DATE ( TITLE '设立日期'),
	MAT_DATE ( TITLE '到期日期'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_BROKER_ACC_MAN ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_CONVER_BOND;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_CONVER_BOND (
	BOND_CDE,
	TRAD_PLAC_CDE,
	STK_CDE,
	STK_TRAD_PLAC_CDE,
	CONV_RATE,
	CONV_PRC,
	CONV_B_D,
	CONV_CNL_D,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_CONVER_BOND FOR ACCESS 
 SELECT 
	BOND_CDE ( TITLE '债券代码'),
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	STK_CDE ( TITLE '股票代码'),
	STK_TRAD_PLAC_CDE ( TITLE '股票交易场所代码'),
	CONV_RATE ( TITLE '转换比例'),
	CONV_PRC ( TITLE '转换价格'),
	CONV_B_D ( TITLE '转股起始日'),
	CONV_CNL_D ( TITLE '转股终止日'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_CONVER_BOND ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_COUN_MAR_PRO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_COUN_MAR_PRO (
	TRAD_PLAC_CDE,
	VART_CDE,
	PD_FLAG,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_COUN_MAR_PRO FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	PD_FLAG ( TITLE '频度标志'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_COUN_MAR_PRO ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_EQUITY_CHN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_EQUITY_CHN (
	TRAD_PLAC_CDE,
	STK_CDE,
	CAP_TYPE_CDE,
	CHG_DATE,
	CAP_CHG_RESN_CDE,
	CHG_VOL,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_EQUITY_CHN FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	STK_CDE ( TITLE '股票代码'),
	CAP_TYPE_CDE ( TITLE '股本类型代码'),
	CHG_DATE ( TITLE '变动日期'),
	CAP_CHG_RESN_CDE ( TITLE '股本变动原因代码'),
	CHG_VOL ( TITLE '变动数量'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_EQUITY_CHN ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_EQUITY_STR;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_EQUITY_STR (
	TRAD_PLAC_CDE,
	STK_CDE,
	CAP_TYPE_CDE,
	STAT_DATE,
	SEC_VOL,
	EQUT_SORT,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_EQUITY_STR FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	STK_CDE ( TITLE '股票代码'),
	CAP_TYPE_CDE ( TITLE '股本类型代码'),
	STAT_DATE ( TITLE '统计日期'),
	SEC_VOL ( TITLE '证券数量'),
	EQUT_SORT ( TITLE '权益类别'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_EQUITY_STR ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_EXPONENT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_EXPONENT (
	VART_CDE,
	TRAD_PLAC_CDE,
	WETN_MODE_CDE,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_EXPONENT FOR ACCESS 
 SELECT 
	VART_CDE ( TITLE '品种代码'),
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	WETN_MODE_CDE ( TITLE '加权方式代码'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_EXPONENT ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_EXPON_ELEM;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_EXPON_ELEM (
	CONS_SEC_CDE,
	EFCTV_DATE,
	VART_CDE,
	TRAD_PLAC_CDE,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_EXPON_ELEM FOR ACCESS 
 SELECT 
	CONS_SEC_CDE ( TITLE '成分证券代码'),
	EFCTV_DATE ( TITLE '生效日期'),
	VART_CDE ( TITLE '品种代码'),
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_EXPON_ELEM ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_FUND;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_FUND (
	TRAD_PLAC_CDE,
	VART_CDE,
	CLCT_MODE_CDE,
	FUND_TYPE_CDE,
	FUND_SPVSR,
	CSTD_PSN,
	PD_FLAG,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_FUND FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	CLCT_MODE_CDE ( TITLE '募集方式代码'),
	FUND_TYPE_CDE ( TITLE '基金类型代码'),
	FUND_SPVSR ( TITLE '基金管理人'),
	CSTD_PSN ( TITLE '托管人'),
	PD_FLAG ( TITLE '频度标志'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_FUND ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_FUNDS_SPE_ACC;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_FUNDS_SPE_ACC (
	TRAD_PLAC_CDE,
	VART_CDE,
	SPC_ACCT_TYPE,
	CNTR_FLNG_DATE,
	CNTR_EFCTV_DATE,
	CNTR_TLMT,
	SPVSR,
	CSTD_PSN,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_FUNDS_SPE_ACC FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	SPC_ACCT_TYPE ( TITLE '专户类型'),
	CNTR_FLNG_DATE ( TITLE '合同备案日期'),
	CNTR_EFCTV_DATE ( TITLE '合同生效日期'),
	CNTR_TLMT ( TITLE '合同期限'),
	SPVSR ( TITLE '管理人'),
	CSTD_PSN ( TITLE '托管人'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_FUNDS_SPE_ACC ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_FUTURES;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_FUTURES (
	FUTRS_CNTR_CDE,
	TRAD_PLAC_CDE,
	FUTRS_VART_CDE,
	S_TRAD_DATE,
	LAST_TRAD_DATE,
	CNTR_DLM_M,
	LAST_DLM_DATE,
	LSTD_REF_PRC,
	CNTR_ABBR_ENG,
	CNTR_NAME_ENG,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_FUTURES FOR ACCESS 
 SELECT 
	FUTRS_CNTR_CDE ( TITLE '期货合约代码'),
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	FUTRS_VART_CDE ( TITLE '期货品种代码'),
	S_TRAD_DATE ( TITLE '开始交易日期'),
	LAST_TRAD_DATE ( TITLE '最后交易日期'),
	CNTR_DLM_M ( TITLE '合约交割月份'),
	LAST_DLM_DATE ( TITLE '最后交割日期'),
	LSTD_REF_PRC ( TITLE '挂牌基准价格'),
	CNTR_ABBR_ENG ( TITLE '合约简称[英文]'),
	CNTR_NAME_ENG ( TITLE '合约名称[英文]'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_FUTURES ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_FUTURES_ACC_MAN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_FUTURES_ACC_MAN (
	TRAD_PLAC_CDE,
	VART_CDE,
	SET_UP_DATE,
	MAT_DATE,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_FUTURES_ACC_MAN FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	SET_UP_DATE ( TITLE '成立日期'),
	MAT_DATE ( TITLE '到期日期'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_FUTURES_ACC_MAN ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_FUTURES_GODS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_FUTURES_GODS (
	FUTRS_VART_CDE,
	FUTRS_VART_ABBR,
	MIN_TRAD_DPST_RATE,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_FUTURES_GODS FOR ACCESS 
 SELECT 
	FUTRS_VART_CDE ( TITLE '期货品种代码'),
	FUTRS_VART_ABBR ( TITLE '期货品种简称'),
	MIN_TRAD_DPST_RATE ( TITLE '最低交易保证金率'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_FUTURES_GODS ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_INFO_CODE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_INFO_CODE (
	VART_CDE_SORT,
	VART_CDE_SORT_NAME,
	VART_CDE_VAL,
	VART_CDE_DESC,
	DATA_DATE
)
 AS LOCKING nsPDATA_D1.PRD_INFO_CODE FOR ACCESS 
 SELECT 
	VART_CDE_SORT ( TITLE '品种代码类别'),
	VART_CDE_SORT_NAME ( TITLE '品种代码类别名称'),
	VART_CDE_VAL ( TITLE '品种代码值'),
	VART_CDE_DESC ( TITLE '品种代码描述'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_D1.PRD_INFO_CODE ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_OBJ_STK_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPView.PRD_OBJ_STK_HIS (
	SEC_CDE,
	SEC_EXCH_CDE,
	SEC_NAME,
	OBJ_TYPE,
	WDI_SEC_ID,
	COMP_ID,
	S_DATE,
	E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_OBJ_STK_HIS FOR ACCESS 
 SELECT 
	SEC_CDE ( TITLE '证券代码'),
	SEC_EXCH_CDE ( TITLE '证券交易所代码'),
	SEC_NAME ( TITLE '证券名称'),
	OBJ_TYPE ( TITLE '标的类型'),
	WDI_SEC_ID ( TITLE '万得证券ID'),
	COMP_ID ( TITLE '公司ID'),
	S_DATE ( TITLE '开始日期'),
	E_DATE ( TITLE '结束日期')
 from  nsPDATA_D1.PRD_OBJ_STK_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_PRI_FUNDS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_PRI_FUNDS (
	TRAD_PLAC_CDE,
	VART_CDE,
	FUND_CNTR,
	FUND_CLCT_DATE,
	FUND_MAT_DATE,
	PROD_NAME,
	PROD_STS,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_PRI_FUNDS FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	FUND_CNTR ( TITLE '基金合同'),
	FUND_CLCT_DATE ( TITLE '基金募集日期'),
	FUND_MAT_DATE ( TITLE '基金到期日期'),
	PROD_NAME ( TITLE '产品名称'),
	PROD_STS ( TITLE '产品状态'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_PRI_FUNDS ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_PRODUCT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_PRODUCT (
	TRAD_PLAC_CDE,
	VART_CDE,
	VART_NAME,
	VART_ABBR,
	VART_SORT_CDE,
	VART_STS_CDE,
	ISI_N_CDE,
	CRNC_CDE,
	LIST_DATE,
	DLST_DATE,
	RMAK,
	PD_FLAG,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_PRODUCT FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	VART_NAME ( TITLE '品种名称'),
	VART_ABBR ( TITLE '品种简称'),
	VART_SORT_CDE ( TITLE '品种类别代码'),
	VART_STS_CDE ( TITLE '品种状态代码'),
	ISI_N_CDE ( TITLE 'ISIN编码'),
	CRNC_CDE ( TITLE '币种代码'),
	LIST_DATE ( TITLE '上市日期'),
	DLST_DATE ( TITLE '摘牌日期'),
	RMAK ( TITLE '备注'),
	PD_FLAG ( TITLE '频度标志'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_PRODUCT ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_PUB_FUNDS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_PUB_FUNDS (
	TRAD_PLAC_CDE,
	VART_CDE,
	FUND_PAR_VAL,
	ISSR_ID,
	FUND_OAT_MODE_CDE,
	GRD_FUND_SORT_CDE,
	ISS_DATE,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_PUB_FUNDS FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	FUND_PAR_VAL ( TITLE '基金面值'),
	ISSR_ID ( TITLE '发行人标识'),
	FUND_OAT_MODE_CDE ( TITLE '基金运作方式代码'),
	GRD_FUND_SORT_CDE ( TITLE '分级基金类别代码'),
	ISS_DATE ( TITLE '发行日期'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_PUB_FUNDS ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_RELATION;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_RELATION (
	TRAD_PLAC_CDE,
	VART_CDE,
	RLTN_VART_EXCH_CDE,
	RLTN_VART_CDE,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_RELATION FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	RLTN_VART_EXCH_CDE ( TITLE '关系品种交易所代码'),
	RLTN_VART_CDE ( TITLE '关系品种代码'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_RELATION ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_SEC_CDE_COMP_CDE_CORR_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_SEC_CDE_COMP_CDE_CORR_HIS (
 SEC_CDE,
 SEC_CTG,
 TRAD_PLAC_CDE,
 STD_COMP_CDE,
 WDI_COMP_CDE,
 EXCH_COMP_CDE,
 S_DATE,
 E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_SEC_CDE_COMP_CDE_CORR_HIS FOR ACCESS 
 SELECT 
 SEC_CDE ( TITLE '证券代码'),
 SEC_CTG ( TITLE '证券类别'),
 TRAD_PLAC_CDE ( TITLE '交易场所代码'),
 STD_COMP_CDE ( TITLE '标准公司代码'),
 WDI_COMP_CDE ( TITLE '万得公司代码'),
 EXCH_COMP_CDE ( TITLE '交易所公司代码'),
 S_DATE ( TITLE '开始日期'),
 E_DATE ( TITLE '结束日期')
 from  nsPDATA_D1.PRD_SEC_CDE_COMP_CDE_CORR_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_SEC_IDSTR_RLTN_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_SEC_IDSTR_RLTN_HIS (
 SEC_CDE,
 SEC_EXCH_CDE,
 SEC_ID,
 SEC_NAME,
 IC_TYPE,
 IDSTR_ID,
 IDSTR_NAME,
 S_DATE,
 E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_SEC_IDSTR_RLTN_HIS FOR ACCESS 
 SELECT 
 SEC_CDE ( TITLE '证券代码'),
 SEC_EXCH_CDE ( TITLE '证券交易所代码'),
 SEC_ID ( TITLE '证券ID'),
 SEC_NAME ( TITLE '证券名称'),
 IC_TYPE ( TITLE '行业分类类型'),
 IDSTR_ID ( TITLE '行业ID'),
 IDSTR_NAME ( TITLE '行业名称'),
 S_DATE ( TITLE '开始日期'),
 E_DATE ( TITLE '结束日期')
 from  nsPDATA_D1.PRD_SEC_IDSTR_RLTN_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_SHARE_OPTION;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_SHARE_OPTION (
	TRAD_PLAC_CDE,
	OPT_CNTR_CDE,
	EXEC_MODE_CDE,
	EXCT_PRC,
	UND_SEC_CDE,
	UND_SEC_ABBR,
	OPT_EXEC_PRC,
	FST_TRAD_DATE,
	LAST_TRAD_DATE,
	OPT_EXEC_DATE,
	OPT_DLM_DATE,
	OPT_MAT_DATE,
	PROD_VRSN,
	UNIT_DPST,
	WHL_HAND_VOL,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_SHARE_OPTION FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	OPT_CNTR_CDE ( TITLE '期权合约代码'),
	EXEC_MODE_CDE ( TITLE '行权方式代码'),
	EXCT_PRC ( TITLE '执行价格'),
	UND_SEC_CDE ( TITLE '标的证券代码'),
	UND_SEC_ABBR ( TITLE '标的证券简称'),
	OPT_EXEC_PRC ( TITLE '期权行权价格'),
	FST_TRAD_DATE ( TITLE '首个交易日期'),
	LAST_TRAD_DATE ( TITLE '最后交易日期'),
	OPT_EXEC_DATE ( TITLE '期权行权日期'),
	OPT_DLM_DATE ( TITLE '期权交割日期'),
	OPT_MAT_DATE ( TITLE '期权到期日期'),
	PROD_VRSN ( TITLE '产品版本'),
	UNIT_DPST ( TITLE '单位保证金'),
	WHL_HAND_VOL ( TITLE '整手数量'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_SHARE_OPTION ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_STK_BSC_INFO_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_STK_BSC_INFO_HIS (
 STK_CDE,
 STK_NAME,
 SEC_EXCH_CDE,
 LSTN_BORD,
 SEC_CTG,
 IF_ISS_PRIO_STK,
 STK_PAR_VAL,
 ISS_DATE,
 LIST_DATE,
 DLST_DATE,
 CRNC_CDE,
 ISSR_ID,
 COMP_ID,
 WDI_SEC_ID,
 STK_REG_STS,
 STK_STS,
 RISK_ALT_INDC,
 IDSTR_CTGR_CDE,
 IDSTR_CTGR_NAME,
 IDSTR_CLASS_CDE,
 IDSTR_CLASS_NAME,
 PPDM_CDE,
 PPDM_NAME,
 S_DATE,
 E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_STK_BSC_INFO_HIS FOR ACCESS 
 SELECT 
 STK_CDE ( TITLE '股票代码'),
 STK_NAME ( TITLE '股票名称'),
 SEC_EXCH_CDE ( TITLE '证券交易所代码'),
 LSTN_BORD ( TITLE '上市板块'),
 SEC_CTG ( TITLE '证券类别'),
 IF_ISS_PRIO_STK ( TITLE '是否发行优先股'),
 STK_PAR_VAL ( TITLE '股票面值'),
 ISS_DATE ( TITLE '发行日期'),
 LIST_DATE ( TITLE '上市日期'),
 DLST_DATE ( TITLE '摘牌日期'),
 CRNC_CDE ( TITLE '币种代码'),
 ISSR_ID ( TITLE '发行人标识'),
 COMP_ID ( TITLE '公司ID'),
 WDI_SEC_ID ( TITLE '万得证券ID'),
 STK_REG_STS ( TITLE '股票登记状态'),
 STK_STS ( TITLE '股票状态'),
 RISK_ALT_INDC ( TITLE '风险警示标志'),
 IDSTR_CTGR_CDE ( TITLE '行业门类代码'),
 IDSTR_CTGR_NAME ( TITLE '行业门类名称'),
 IDSTR_CLASS_CDE ( TITLE '行业大类代码'),
 IDSTR_CLASS_NAME ( TITLE '行业大类名称'),
 PPDM_CDE ( TITLE '辖区代码'),
 PPDM_NAME ( TITLE '辖区名称'),
 S_DATE ( TITLE '开始日期'),
 E_DATE ( TITLE '结束日期')
 from  nsPDATA_D1.PRD_STK_BSC_INFO_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_STOCK;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_STOCK (
	TRAD_PLAC_CDE,
	VART_CDE,
	STK_PAR_VAL,
	FRT_ISS_DATE,
	MKT_LVL_CDE,
	ISSR_ID,
	ENG_FNAME,
	MAT_DATE,
	CRNC_UNIT,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_STOCK FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	STK_PAR_VAL ( TITLE '股票面值'),
	FRT_ISS_DATE ( TITLE '首次发行日期'),
	MKT_LVL_CDE ( TITLE '市场层次代码'),
	ISSR_ID ( TITLE '发行人标识'),
	ENG_FNAME ( TITLE '英文全称'),
	MAT_DATE ( TITLE '到期日期'),
	CRNC_UNIT ( TITLE '货币单位'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_STOCK ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_STOCK_PLG_REPO_CL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPVIEW.PRD_STOCK_PLG_REPO_CL
AS LOCKING NSPDATA_D1.PRD_STOCK_PLG_REPO_CL FOR ACCESS
SELECT * FROM NSPDATA_D1.PRD_STOCK_PLG_REPO_CL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_STOCK_PLG_REPO_CL_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPVIEW.PRD_STOCK_PLG_REPO_CL_HIS
AS LOCKING NSPDATA_D1.PRD_STOCK_PLG_REPO_CL_HIS FOR ACCESS
SELECT * FROM NSPDATA_D1.PRD_STOCK_PLG_REPO_CL_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_STOCK_PLG_REPO_GB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPVIEW.PRD_STOCK_PLG_REPO_GB
AS LOCKING NSPDATA_D1.PRD_STOCK_PLG_REPO_GB FOR ACCESS
SELECT * FROM NSPDATA_D1.PRD_STOCK_PLG_REPO_GB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_STOCK_PLG_REPO_GB_1;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPVIEW.PRD_STOCK_PLG_REPO_GB_1
AS LOCKING NSPDATA_D1.PRD_STOCK_PLG_REPO_GB_1 FOR ACCESS
SELECT * FROM NSPDATA_D1.PRD_STOCK_PLG_REPO_GB_1;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_STOCK_PLG_REPO_GB_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPVIEW.PRD_STOCK_PLG_REPO_GB_HIS
AS LOCKING NSPDATA_D1.PRD_STOCK_PLG_REPO_GB_HIS FOR ACCESS
SELECT * FROM NSPDATA_D1.PRD_STOCK_PLG_REPO_GB_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_SUG_FIN_INST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_SUG_FIN_INST (
	TRAD_PLAC_CDE,
	VART_CDE,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_D1.PRD_SUG_FIN_INST FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	VART_CDE ( TITLE '品种代码'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_D1.PRD_SUG_FIN_INST ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PRD_TRADING_RING;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PRD_TRADING_RING (
	TRAD_PLAC_CDE,
	TRAD_PLAC_DESC,
	DATA_DATE
)
 AS LOCKING nsPDATA_D1.PRD_TRADING_RING FOR ACCESS 
 SELECT 
	TRAD_PLAC_CDE ( TITLE '交易场所代码'),
	TRAD_PLAC_DESC ( TITLE '交易场所描述'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_D1.PRD_TRADING_RING ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PTY_ORG;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PTY_ORG (
	ORG_ID,
	ORG_FNAME,
	ORG_ABBR,
	ENG_FNAME,
	ENG_ABBR,
	IDSTR_SORT_CDE,
	CERT_SORT_CDE,
	CERT_NBR,
	ORG_CDE,
	BIZ_LIC_NBR,
	UNFY_SCTY_CRDT_CDE,
	BIZ_REG_REG_NBR,
	SET_UP_DATE,
	CORP_REP,
	CORP_SORT_CDE,
	CORP_REP_CERT_TYPE_CDE,
	CORP_REP_CERT_NBR,
	REG_CAP_CRNC_CDE,
	REG_CAP,
	REG_ADDR,
	COMM_ADDR,
	PSTL_CDE,
	CNTC_PSN,
	CNTC_TEL,
	MOB_NBR,
	FAX_NBR,
	EMAIL,
	MANG_RANG,
	UNIT_CHRC_CDE,
	DOM_ABR_INDC,
	DATA_SRC_TB,
	RSRV1,
	RSRV2,
	RSRV3,
	RSRV4,
	RSRV5,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_d1.PTY_ORG FOR ACCESS 
 SELECT 
	ORG_ID ( TITLE '机构标识'),
	ORG_FNAME ( TITLE '机构全称'),
	ORG_ABBR ( TITLE '机构简称'),
	ENG_FNAME ( TITLE '英文全称'),
	ENG_ABBR ( TITLE '英文简称'),
	IDSTR_SORT_CDE ( TITLE '行业类别代码'),
	CERT_SORT_CDE ( TITLE '证件类别代码'),
	CERT_NBR ( TITLE '证件号码'),
	ORG_CDE ( TITLE '组织机构代码'),
	BIZ_LIC_NBR ( TITLE '营业执照号'),
	UNFY_SCTY_CRDT_CDE ( TITLE '统一社会信用代码'),
	BIZ_REG_REG_NBR ( TITLE '工商注册登记号'),
	SET_UP_DATE ( TITLE '成立日期'),
	CORP_REP ( TITLE '法人代表'),
	CORP_SORT_CDE ( TITLE '法人类别代码'),
	CORP_REP_CERT_TYPE_CDE ( TITLE '法人代表证件类型代码'),
	CORP_REP_CERT_NBR ( TITLE '法人代表证件号码'),
	REG_CAP_CRNC_CDE ( TITLE '注册资本币种代码'),
	REG_CAP ( TITLE '注册资本'),
	REG_ADDR ( TITLE '注册地址'),
	COMM_ADDR ( TITLE '通信地址'),
	PSTL_CDE ( TITLE '邮政编码'),
	CNTC_PSN ( TITLE '联系人'),
	CNTC_TEL ( TITLE '联系电话'),
	MOB_NBR ( TITLE '手机号码'),
	FAX_NBR ( TITLE '传真号码'),
	EMAIL ( TITLE '电子邮箱'),
	MANG_RANG ( TITLE '经营范围'),
	UNIT_CHRC_CDE ( TITLE '单位性质代码'),
	DOM_ABR_INDC ( TITLE '境内外标志'),
	DATA_SRC_TB ( TITLE '数据来源表'),
	RSRV1 ( TITLE '预留1'),
	RSRV2 ( TITLE '预留2'),
	RSRV3 ( TITLE '预留3'),
	RSRV4 ( TITLE '预留4'),
	RSRV5 ( TITLE '预留5'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_d1.PTY_ORG ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PTY_PROD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PTY_PROD (
	PROD_ID,
	PROD_FNAME,
	PROD_ABBR,
	ENG_FNAME,
	ENG_ABBR,
	CERT_SORT_CDE,
	CERT_NBR,
	GND_CDE,
	BORN_DATE,
	ORG_CDE,
	BIZ_LIC_NBR,
	UNFY_SCTY_CRDT_CDE,
	BIZ_REG_REG_NBR,
	CORP_REP,
	CORP_SORT_CDE,
	CORP_REP_CERT_TYPE_CDE,
	CORP_REP_CERT_NBR,
	REG_CAP_CRNC_CDE,
	REG_CAP,
	REG_ADDR,
	COMM_ADDR,
	PSTL_CDE,
	CNTC_PSN,
	CNTC_TEL,
	MOB_NBR,
	FAX_NBR,
	EMAIL,
	MANG_RANG,
	UNIT_CHRC_CDE,
	DOM_ABR_INDC,
	PTY_SORT_CDE,
	DATA_SRC_TB,
	RSRV1,
	RSRV2,
	RSRV3,
	RSRV4,
	RSRV5,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_d1.PTY_PROD FOR ACCESS 
 SELECT 
	PROD_ID ( TITLE '产品标识'),
	PROD_FNAME ( TITLE '产品全称'),
	PROD_ABBR ( TITLE '产品简称'),
	ENG_FNAME ( TITLE '英文全称'),
	ENG_ABBR ( TITLE '英文简称'),
	CERT_SORT_CDE ( TITLE '证件类别代码'),
	CERT_NBR ( TITLE '证件号码'),
	GND_CDE ( TITLE '性别代码'),
	BORN_DATE ( TITLE '出生日期'),
	ORG_CDE ( TITLE '组织机构代码'),
	BIZ_LIC_NBR ( TITLE '营业执照号'),
	UNFY_SCTY_CRDT_CDE ( TITLE '统一社会信用代码'),
	BIZ_REG_REG_NBR ( TITLE '工商注册登记号'),
	CORP_REP ( TITLE '法人代表'),
	CORP_SORT_CDE ( TITLE '法人类别代码'),
	CORP_REP_CERT_TYPE_CDE ( TITLE '法人代表证件类型代码'),
	CORP_REP_CERT_NBR ( TITLE '法人代表证件号码'),
	REG_CAP_CRNC_CDE ( TITLE '注册资本币种代码'),
	REG_CAP ( TITLE '注册资本'),
	REG_ADDR ( TITLE '注册地址'),
	COMM_ADDR ( TITLE '通信地址'),
	PSTL_CDE ( TITLE '邮政编码'),
	CNTC_PSN ( TITLE '联系人'),
	CNTC_TEL ( TITLE '联系电话'),
	MOB_NBR ( TITLE '手机号码'),
	FAX_NBR ( TITLE '传真号码'),
	EMAIL ( TITLE '电子邮箱'),
	MANG_RANG ( TITLE '经营范围'),
	UNIT_CHRC_CDE ( TITLE '单位性质代码'),
	DOM_ABR_INDC ( TITLE '境内外标志'),
	PTY_SORT_CDE ( TITLE '主体类别代码'),
	DATA_SRC_TB ( TITLE '数据来源表'),
	RSRV1 ( TITLE '预留1'),
	RSRV2 ( TITLE '预留2'),
	RSRV3 ( TITLE '预留3'),
	RSRV4 ( TITLE '预留4'),
	RSRV5 ( TITLE '预留5'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_d1.PTY_PROD ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PTY_PSN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PTY_PSN (
	PSN_ID,
	NAME,
	CERT_SORT_CDE,
	CERT_NBR,
	GND_CDE,
	BORN_DATE,
	NTLT,
	DUTY,
	COMM_ADDR,
	PSTL_CDE,
	CNTC_TEL,
	MOB_NBR,
	EMAIL,
	PLTC_FACE_CDE,
	OCCU_CDE,
	NATION_CDE,
	EDU_LVL_CDE,
	DOM_ABR_INDC,
	DATA_SRC_TB,
	RSRV1,
	RSRV2,
	RSRV3,
	RSRV4,
	RSRV5,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_d1.PTY_PSN FOR ACCESS 
 SELECT 
	PSN_ID ( TITLE '个人标识'),
	NAME ( TITLE '姓名'),
	CERT_SORT_CDE ( TITLE '证件类别代码'),
	CERT_NBR ( TITLE '证件号码'),
	GND_CDE ( TITLE '性别代码'),
	BORN_DATE ( TITLE '出生日期'),
	NTLT ( TITLE '国籍'),
	DUTY ( TITLE '职务'),
	COMM_ADDR ( TITLE '通信地址'),
	PSTL_CDE ( TITLE '邮政编码'),
	CNTC_TEL ( TITLE '联系电话'),
	MOB_NBR ( TITLE '手机号码'),
	EMAIL ( TITLE '电子邮箱'),
	PLTC_FACE_CDE ( TITLE '政治面貌代码'),
	OCCU_CDE ( TITLE '职业代码'),
	NATION_CDE ( TITLE '民族代码'),
	EDU_LVL_CDE ( TITLE '教育程度代码'),
	DOM_ABR_INDC ( TITLE '境内外标志'),
	DATA_SRC_TB ( TITLE '数据来源表'),
	RSRV1 ( TITLE '预留1'),
	RSRV2 ( TITLE '预留2'),
	RSRV3 ( TITLE '预留3'),
	RSRV4 ( TITLE '预留4'),
	RSRV5 ( TITLE '预留5'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_d1.PTY_PSN ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PTY_PTY;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--INSERT INTO nsPDATA_d1.PTY_PTY SELECT * FROM nsPDATA_d1.PTY_PTY_170921;

	REPLACE VIEW nsPVIEW.PTY_PTY (
	PTY_ID,
	PTY_SORT_CDE,
	PTY_NAME,
	CERT_SORT_CDE,
	CERT_NBR,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_d1.PTY_PTY FOR ACCESS 
 SELECT 
	PTY_ID ( TITLE '主体ID'),
	PTY_SORT_CDE ( TITLE '主体类别代码'),
	PTY_NAME ( TITLE '主体名称'),
	CERT_SORT_CDE ( TITLE '证件类别代码'),
	CERT_NBR ( TITLE '证件号码'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_d1.PTY_PTY ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PTY_PTY_IDNTF_INFO_ID;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--INSERT INTO nsPDATA_d1.PTY_PTY_IDNTF_INFO_ID SELECT * FROM nsPDATA_d1.PTY_PTY_IDNTF_INFO_ID_170921;

	REPLACE VIEW nsPVIEW.PTY_PTY_IDNTF_INFO_ID (
	IDNTF_INFO_UNIQ_ID,
	PTY_NAME,
	CERT_SORT_CDE,
	CERT_NBR,
	DATA_DATE
)
 AS LOCKING nsPDATA_d1.PTY_PTY_IDNTF_INFO_ID FOR ACCESS 
 SELECT 
	IDNTF_INFO_UNIQ_ID ( TITLE '鉴别信息唯一标识'),
	PTY_NAME ( TITLE '主体名称'),
	CERT_SORT_CDE ( TITLE '证件类别代码'),
	CERT_NBR ( TITLE '证件号码'),
	DATA_DATE (TITLE '数据日期')
 from  nsPDATA_d1.PTY_PTY_IDNTF_INFO_ID ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PTY_PTY_ROLE_RLTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--INSERT INTO nsPDATA_d1.PTY_PTY_ROLE_RLTN SELECT * FROM nsPDATA_d1.PTY_PTY_ROLE_RLTN_170921;

	REPLACE VIEW nsPVIEW.PTY_PTY_ROLE_RLTN (
	ROLE_TYPE_CDE,
	ROLE_ID,
	PTY_ID,
	PTY_SORT_CDE,
	PTY_NAME,
	CERT_SORT_CDE,
	CERT_NBR,
	IDNTF_INFO_UNIQ_ID,
	IDNT_MATCH_DGRE_CDE,
	STS,
	S_DATE,E_DATE
)
 AS LOCKING nsPDATA_d1.PTY_PTY_ROLE_RLTN FOR ACCESS 
 SELECT 
	ROLE_TYPE_CDE ( TITLE '角色类型代码'),
	ROLE_ID ( TITLE '角色ID'),
	PTY_ID ( TITLE '主体ID'),
	PTY_SORT_CDE ( TITLE '主体类别代码'),
	PTY_NAME ( TITLE '主体名称'),
	CERT_SORT_CDE ( TITLE '证件类别代码'),
	CERT_NBR ( TITLE '证件号码'),
	IDNTF_INFO_UNIQ_ID ( TITLE '鉴别信息唯一标识'),
	IDNT_MATCH_DGRE_CDE ( TITLE '身份匹配度代码'),
	STS ( TITLE '状态'),
	S_DATE (TITLE '开始日期'),E_DATE (TITLE '结束日期')
 from  nsPDATA_d1.PTY_PTY_ROLE_RLTN ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.PTY_TRAD_CLND;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW nsPVIEW.PTY_TRAD_CLND (
 CALENDAR_DATE,
 YEAR_OF_CALENDAR,
 QUARTER_OF_YEAR,
 MONTH_OF_YEAR,
 DAY_OF_WEEK,
 DAY_OF_MONTH,
 MON_YEAR_AND_WEEK,
 FRI_YEAR_AND_WEEK,
 SAT_YEAR_AND_WEEK,
 SUN_YEAR_AND_WEEK,
 IF_TRADDAY,
 LAST_TRADDAY,
 W_TRADDAY,
 M_TRADDAY,
 Q_TRADDAY,
 Y_TRADDAY,
 EOM_SIGN,
 EOQ_SIGN,
 EOY_SIGN,
 TRADDAY_EOM_SIGN,
 TRADDAY_EOQ_SIGN,
 TRADDAY_EOY_SIGN,
 TRADDAY_EOW_SIGN,
 EOW_SIGN
)
 AS LOCKING nsPDATA_D1.PTY_TRAD_CLND FOR ACCESS 
 SELECT 
 CALENDAR_DATE ( TITLE '日期'),
 YEAR_OF_CALENDAR ( TITLE '年'),
 QUARTER_OF_YEAR ( TITLE '季'),
 MONTH_OF_YEAR ( TITLE '月'),
 DAY_OF_WEEK ( TITLE '周'),
 DAY_OF_MONTH ( TITLE '日'),
 MON_YEAR_AND_WEEK ( TITLE '年周：周一标准'),
 FRI_YEAR_AND_WEEK ( TITLE '年周：周五标准'),
 SAT_YEAR_AND_WEEK ( TITLE '年周：周六标准'),
 SUN_YEAR_AND_WEEK ( TITLE '年周：周日标准'),
 IF_TRADDAY ( TITLE '是否交易日代码'),
 LAST_TRADDAY ( TITLE '上一个交易日'),
 W_TRADDAY ( TITLE '本周第几个交易日'),
 M_TRADDAY ( TITLE '本月第几个交易日'),
 Q_TRADDAY ( TITLE '本季第几个交易日'),
 Y_TRADDAY ( TITLE '本年第几个交易日'),
 EOM_SIGN ( TITLE '月末标志代码'),
 EOQ_SIGN ( TITLE '季末标志代码'),
 EOY_SIGN ( TITLE '年末标志代码'),
 TRADDAY_EOM_SIGN ( TITLE '交易日月末标志代码'),
 TRADDAY_EOQ_SIGN ( TITLE '交易日季末标志代码'),
 TRADDAY_EOY_SIGN ( TITLE '交易日年末标志代码'),
 TRADDAY_EOW_SIGN ( TITLE '交易日周末标志代码'),
 EOW_SIGN ( TITLE '周末 标志代码')
 from  nsPDATA_D1.PTY_TRAD_CLND;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPView.TRD_STOCK_PLG_REPO_CL_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
REPLACE VIEW NSPVIEW.TRD_STOCK_PLG_REPO_CL_HIS
AS LOCKING NSPDATA_D1.TRD_STOCK_PLG_REPO_CL_HIS FOR ACCESS
SELECT * FROM NSPDATA_D1.TRD_STOCK_PLG_REPO_CL_HIS;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

.quit
 *** You are now logged off from the DBC.
 *** Exiting BTEQ...
 *** RC (return code) = 0 
