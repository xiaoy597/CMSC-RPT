BTEQ 15.00.00.00 Wed Jan 17 10:44:33 2018 PID: 28773
 
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


SHOW TABLE nsPUBMart.MID_DOM_IDX_INFO_20161216;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_DOM_IDX_INFO_20161216 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数代码' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数名称',
      OPN_POINT DECIMAL(24,6) TITLE '开盘点数',
      PRE_CLS_POINT DECIMAL(24,6) TITLE '前收盘点数',
      CLS_POINT DECIMAL(24,6) TITLE '收盘点数',
      MAX_POINT DECIMAL(24,6) TITLE '最高点数',
      MIN_POINT DECIMAL(24,6) TITLE '最低点数',
      D_CHG_RATE DECIMAL(24,6) TITLE '日涨跌幅',
      Y_CHG_RATE DECIMAL(24,6) TITLE '年涨跌幅',
      RETN DECIMAL(24,6) TITLE '对数收益率',
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额',
      TRAD_QTT DECIMAL(24,6) TITLE '成交量',
      TCAP DECIMAL(24,6) TITLE '总股本',
      NEGT_CAP DECIMAL(24,6) TITLE '流通股本',
      TOT_MKT_VAL DECIMAL(24,6) TITLE '总市值',
      NEGT_MKT_VAL DECIMAL(24,6) TITLE '流通市值',
      MKT_VAL_TNOV_RATE DECIMAL(24,6) TITLE '市值换手率',
      TRAD_QTT_TNOV_RATE DECIMAL(24,6) TITLE '成交量换手率',
      AVG_STK_PRC DECIMAL(24,6) TITLE '平均股价',
      DATA_SRC_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '数据源类型')
PRIMARY INDEX ( BIZ_DATE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.FCT_STK_PLG_FORC_LQD_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.FCT_STK_PLG_FORC_LQD_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      biz_date DATE FORMAT 'YYYYMMDD' TITLE '业务日期',
      cap_type VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型',
      PRESS_VAL DECIMAL(18,2) TITLE '压力因子',
      st_rpchs_plg_gap DECIMAL(30,7) TITLE '保证金缺口',
      init_cntr_nbr_ini DECIMAL(30,0) TITLE '强制交易笔数分子',
      init_cntr_nbr_tot DECIMAL(30,0) TITLE '强制交易笔数分母',
      itp_sec_acct_ini DECIMAL(30,0) TITLE '待补充质押账户数分子',
      itp_sec_acct_tot DECIMAL(30,0) TITLE '待补充质押账户数分母',
      forc_lqd_nbr_ini DECIMAL(30,0) TITLE '强制平仓交易量分子',
      forc_lqd_nbr_TOT DECIMAL(30,0) TITLE '强制平仓交易量分母',
      forc_lqd_val_ini DECIMAL(30,7) TITLE '强制平仓交易金额分子',
      forc_lqd_val_TOT DECIMAL(30,7) TITLE '强制平仓交易金额分母')
PRIMARY INDEX ( biz_date );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_CINVST_A_SHR_TRAD_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_CINVST_A_SHR_TRAD_PSTN_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IDSTR_CTGR_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业门类代码' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,INVST_SORT ,SEC_EXCH_CDE ,
LSTN_BORD ,IDSTR_CTGR_CDE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券名称',
      CLS_PRC DECIMAL(24,6) TITLE '收盘价',
      PRE_CLS_PRC DECIMAL(24,6) TITLE '前收盘价',
      RETN DECIMAL(24,6) TITLE '对数收益率',
      TCAP_EXCH DECIMAL(24,6) TITLE '总股本_交易所',
      LSTN_NEGT_CAP_EXCH DECIMAL(24,6) TITLE '已上市流通股本_交易所',
      TOT_MKT_VAL_EXCH DECIMAL(24,6) TITLE '总市值_交易所',
      LSTN_NEGT_MKT_VAL_EXCH DECIMAL(24,6) TITLE '已上市流通市值_交易所',
      TCAP_CSDC DECIMAL(24,6) TITLE '总股本_中登',
      LSTN_NEGT_CAP_CSDC DECIMAL(24,6) TITLE '已上市流通股本_中登',
      TOT_MKT_VAL_CSDC DECIMAL(24,6) TITLE '总市值_中登',
      LSTN_NEGT_MKT_VAL_CSDC DECIMAL(24,6) TITLE '已上市流通市值_中登',
      TRAD_QTT DECIMAL(24,6) TITLE '成交量',
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额',
      STK_STS CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票状态')
PRIMARY INDEX ( BIZ_DATE ,SEC_EXCH_CDE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_OAP_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_OAP_ACCT_VOL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者开户辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,ACCT_TYPE ,STK_INVST_SORT ,
INVST_OPN_ACCT_PPDM ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_DVD20161222;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_DVD20161222 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '除权除息日' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '股权登记日' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票名称' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      DIVD_ABBR VARCHAR(150) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '红利简称' NOT NULL,
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '分红年度' NOT NULL,
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '现金分红金额（税前）' NOT NULL,
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '现金分红金额(税后)' NOT NULL,
      DP_RATE_DENOM DECIMAL(24,4) TITLE '派息比例分母' NOT NULL,
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '派息比例分子(税前)' NOT NULL,
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '派息比例分子（税后）' NOT NULL,
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '参与分红总股本' NOT NULL,
      CRNC_CDE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '货币代码' NOT NULL,
      MDL_PRC DECIMAL(24,6) TITLE '中间价' NOT NULL)
PRIMARY INDEX ( EXR_EXD_D ,STK_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.TMID_STK_PLG_REPO_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.TMID_STK_PLG_REPO_TRAD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '补充质押笔数',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '解除质押笔数',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '初始交易金额',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '初始交易笔数',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '购回交易金额',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '购回交易笔数',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '待购回初始交易金额',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '待购回证券数量',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '待购回证券市值',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '初始质押证券数量',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '初始质押证券市值')
PRIMARY INDEX ( BIZ_DATE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_PLG_REPO_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_PLG_REPO_TRAD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '补充质押笔数',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '解除质押笔数',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '初始交易金额',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '初始交易笔数',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '购回交易金额',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '购回交易笔数',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '待购回初始交易金额',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '待购回证券数量',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '待购回证券市值',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '初始质押证券数量',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '初始质押证券市值')
PRIMARY INDEX ( BIZ_DATE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_COMP_CNT_CAP_MKT_VAL_ST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_COMP_CNT_CAP_MKT_VAL_ST ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      RISK_ALT_INDC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '风险警示标志' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '监管辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,RISK_ALT_INDC ,REG_JUR ,
IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期权合约产品代码' NOT NULL,
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      BUY_VOL_SUBSC DECIMAL(24,0) TITLE '认购买入数量' NOT NULL,
      SAL_VOL_SUBSC DECIMAL(24,0) TITLE '认购卖出数量' NOT NULL,
      BUY_VOL_PUT DECIMAL(24,0) TITLE '认沽买入数量' NOT NULL,
      SAL_VOL_PUT DECIMAL(24,0) TITLE '认沽卖出数量' NOT NULL,
      BUY_AMT_SUBSC DECIMAL(24,6) TITLE '认购买入金额' NOT NULL,
      SAL_AMT_SUBSC DECIMAL(24,6) TITLE '认购卖出金额' NOT NULL,
      BUY_AMT_PUT DECIMAL(24,6) TITLE '认沽买入金额' NOT NULL,
      SAL_AMT_PUT DECIMAL(24,6) TITLE '认沽卖出金额' NOT NULL,
      END_RIGHT_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '认购持权利仓数量' NOT NULL,
      END_OBLG_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '认购持义务仓数量' NOT NULL,
      END_RIGHT_PSTN_QTT_PUT DECIMAL(24,0) TITLE '认沽持权利仓数量' NOT NULL,
      END_OBLG_PSTN_QTT_PUT DECIMAL(24,0) TITLE '认沽持义务仓数量' NOT NULL)
PRIMARY INDEX ( STAT_DATE ,OPT_CNTR_PROD_CDE ,INVST_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.SPE_INVST_CLSF_PSN_D;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.SPE_INVST_CLSF_PSN_D ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '一码通账户号码',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户号',
      SEC_ACCT_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户名称',
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别',
      CLSF_1 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '一级分类',
      CLSF_2_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '二级分类（持股市值）',
      CLSF_3_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '三级分类（持股市值）',
      Cmsmc_CLSF_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '中证监测分类（持股市值）',
      CLSF_2_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '二级分类（年龄）',
      CLSF_3_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '三级分类（年龄）',
      END_HOLD_MKT_VAL_MAX DECIMAL(22,2) TITLE '期末持股市值最大值',
      END_HOLD_MKT_VAL_MAX_DATE DATE FORMAT 'YYYYMMDD' TITLE '期末持股市值最大值日期',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户类别')
PRIMARY INDEX ( SEC_ACCT_NBR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '1990-01-01' AND '2050-12-31' EACH INTERVAL '1' DAY ,
 NO RANGE);


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.FCPTL_INVST_CLSF_ONE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.FCPTL_INVST_CLSF_ONE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      INVST_SORT_CDE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别编码' NOT NULL,
      INVST_SORT_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别名称' NOT NULL)
PRIMARY INDEX ( INVST_SORT_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_PSTN_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_PSTN_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期权合约产品代码',
      INVST_TYPE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类型',
      SUBSC_BUY_VOL DECIMAL(24,0) TITLE '认购买入数量',
      SUBSC_SAL_VOL DECIMAL(24,0) TITLE '认购卖出数量',
      PUT_BUY_VOL DECIMAL(24,0) TITLE '认沽买入数量',
      PUT_SAL_VOL DECIMAL(24,0) TITLE '认沽卖出数量',
      SUBSC_BUY_AMT DECIMAL(24,6) TITLE '认购买入金额',
      SUBSC_SAL_AMT DECIMAL(24,6) TITLE '认购卖出金额',
      PUT_BUY_AMT DECIMAL(24,6) TITLE '认沽买入金额',
      PUT_SAL_AMT DECIMAL(24,6) TITLE '认沽卖出金额',
      SUBSC_RIGHT_PSTN_QTT DECIMAL(24,0) TITLE '认购持权利仓数量',
      SUBSC_OBLG_PSTN_QTT DECIMAL(24,0) TITLE '认购持义务仓数量',
      PUT_RIGHT_PSTN_QTT DECIMAL(24,0) TITLE '认沽持权利仓数量',
      PUT_OBLG_PSTN_QTT DECIMAL(24,0) TITLE '认沽持义务仓数量')
PRIMARY INDEX ( STAT_DATE ,OPT_CNTR_PROD_CDE ,INVST_TYPE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.TMID_SMT_GUART_SEC_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.TMID_SMT_GUART_SEC_BAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      GUART_VOL DECIMAL(24,0) TITLE '担保数量',
      GUART_MKT_VAL DECIMAL(24,6) TITLE '担保市值')
PRIMARY INDEX ( BIZ_DATE ,SEC_EXCH_CDE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.TDSUM_PK0729;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.TDSUM_PK0729 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      DB_NAME VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '库名' NOT NULL,
      TB_NAME VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '表名' NOT NULL,
      PK_COLUMN VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '主键字段' NOT NULL)
PRIMARY INDEX ( DB_NAME ,TB_NAME ,PK_COLUMN );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_HKST_TRAD_PSTN_OLD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_HKST_TRAD_PSTN_OLD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      BIZ_INDC CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '业务标志' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券名称',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别',
      BUY_VOL DECIMAL(24,6) TITLE '买入数量',
      SAL_VOL DECIMAL(24,6) TITLE '卖出数量',
      BUY_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '买入金额_原币',
      SAL_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '卖出金额_原币',
      BUY_AMT_RMB DECIMAL(24,6) TITLE '买入金额_人民币',
      SAL_AMT_RMB DECIMAL(24,6) TITLE '卖出金额_人民币',
      BUY_CNT DECIMAL(24,0) TITLE '买入笔数',
      SAL_CNT DECIMAL(24,0) TITLE '卖出笔数',
      PSTN_VOL DECIMAL(24,6) TITLE '持仓数量',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '持仓市值_原币',
      PSTN_MKT_VAL_RMB DECIMAL(24,6) TITLE '持仓市值_人民币')
PRIMARY INDEX ( STAT_DATE ,BIZ_INDC ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_PLG_REPO_TRAD_SC;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_PLG_REPO_TRAD_SC ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      SC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司名称',
      MANG_CLSF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '经营分类',
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '补充质押笔数',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '解除质押笔数',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '初始交易金额',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '初始交易笔数',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '购回交易金额',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '购回交易笔数',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '待购回初始交易金额',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '待购回证券数量',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '待购回证券市值',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '初始质押证券数量',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '初始质押证券市值')
PRIMARY INDEX ( BIZ_DATE ,SC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_INFO1028;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_INFO1028 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券名称',
      CLS_PRC DECIMAL(24,6) TITLE '收盘价',
      PRE_CLS_PRC DECIMAL(24,6) TITLE '前收盘价',
      RETN DECIMAL(24,6) TITLE '对数收益率',
      TCAP_EXCH DECIMAL(24,6) TITLE '总股本_交易所',
      LSTN_NEGT_CAP_EXCH DECIMAL(24,6) TITLE '已上市流通股本_交易所',
      TOT_MKT_VAL_EXCH DECIMAL(24,6) TITLE '总市值_交易所',
      LSTN_NEGT_MKT_VAL_EXCH DECIMAL(24,6) TITLE '已上市流通市值_交易所',
      TCAP_CSDC DECIMAL(24,6) TITLE '总股本_中登',
      LSTN_NEGT_CAP_CSDC DECIMAL(24,6) TITLE '已上市流通股本_中登',
      TOT_MKT_VAL_CSDC DECIMAL(24,6) TITLE '总市值_中登',
      LSTN_NEGT_MKT_VAL_CSDC DECIMAL(24,6) TITLE '已上市流通市值_中登',
      TRAD_QTT DECIMAL(24,6) TITLE '成交量',
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额',
      STK_STS CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票状态')
PRIMARY INDEX ( BIZ_DATE ,SEC_EXCH_CDE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_SEC_OPN_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_SEC_OPN_ACCT_VOL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型',
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别',
      DOM_FORN_INDC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '境内境外标志',
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者开户辖区',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_PSTN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期权合约产品代码' NOT NULL,
      INVST_TYPE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类型' NOT NULL,
      SUBSC_BUY_VOL DECIMAL(24,0) TITLE '认购买入数量' NOT NULL,
      SUBSC_SAL_VOL DECIMAL(24,0) TITLE '认购卖出数量' NOT NULL,
      PUT_BUY_VOL DECIMAL(24,0) TITLE '认沽买入数量' NOT NULL,
      PUT_SAL_VOL DECIMAL(24,0) TITLE '认沽卖出数量' NOT NULL,
      SUBSC_BUY_AMT DECIMAL(24,6) TITLE '认购买入金额' NOT NULL,
      SUBSC_SAL_AMT DECIMAL(24,6) TITLE '认购卖出金额' NOT NULL,
      PUT_BUY_AMT DECIMAL(24,6) TITLE '认沽买入金额' NOT NULL,
      PUT_SAL_AMT DECIMAL(24,6) TITLE '认沽卖出金额' NOT NULL,
      SUBSC_RIGHT_PSTN_QTT DECIMAL(24,0) TITLE '认购持权利仓数量' NOT NULL,
      SUBSC_OBLG_PSTN_QTT DECIMAL(24,0) TITLE '认购持义务仓数量' NOT NULL,
      PUT_RIGHT_PSTN_QTT DECIMAL(24,0) TITLE '认沽持权利仓数量' NOT NULL,
      PUT_OBLG_PSTN_QTT DECIMAL(24,0) TITLE '认沽持义务仓数量' NOT NULL)
PRIMARY INDEX ( STAT_DATE ,OPT_CNTR_PROD_CDE )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SMKT_UNFY_OACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SMKT_UNFY_OACCT_VOL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      EXCH_NBR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.table_dependency;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE nsPUBMart.table_dependency ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      sql_file_name VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '脚本名' NOT NULL,
      tar_table_name VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '目标表名' NOT NULL,
      sou_db_name VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '源表库名' NOT NULL,
      sou_table_name VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '源表表名' NOT NULL)
PRIMARY INDEX ( sql_file_name );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_SMT_GUART_SEC_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_SMT_GUART_SEC_BAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      GUART_VOL DECIMAL(24,0) TITLE '担保数量',
      GUART_MKT_VAL DECIMAL(24,6) TITLE '担保市值')
PRIMARY INDEX ( BIZ_DATE ,SEC_EXCH_CDE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_IC_SWHY;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_IC_SWHY ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDSTR_CDE VARCHAR(38) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业代码' NOT NULL,
      IDSTR_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业名称' NOT NULL)
PRIMARY INDEX ( IDSTR_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_IPO_ISS_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_IPO_ISS_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '发行日期',
      LIST_DATE DATE FORMAT 'YYYYMMDD' TITLE '上市日期',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      LSTN_BORD CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块',
      SEC_CTG CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券类别',
      CAP DECIMAL(24,6) TITLE '股本',
      ISS_PRC DECIMAL(24,6) TITLE '发行价格',
      FD_OPN_PRC DECIMAL(24,6) TITLE '首日开盘价',
      FD_CLS_PRC DECIMAL(24,6) TITLE '首日收盘价',
      OLN_ISS_LTRT DECIMAL(24,6) TITLE '网上发行中签率',
      ISS_PE DECIMAL(24,6) TITLE '发行市盈率',
      IPO_VOL DECIMAL(24,6) TITLE '首发数量',
      IPO_FUND_RSN_AMT DECIMAL(24,6) TITLE '首发筹资金额',
      FD_OPN_CHG_RATE DECIMAL(24,6) TITLE '首日开盘涨跌幅',
      FD_CLS_CHG_RATE DECIMAL(24,6) TITLE '首日收盘涨跌幅',
      FD_CHG_RATE DECIMAL(24,6) TITLE '首日涨跌幅',
      FD_TNOV_RATE DECIMAL(24,6) TITLE '首日换手率',
      IF_BREK CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '是否破发',
      CLCT_BANKRL_TOT DECIMAL(24,6) TITLE '募集资金合计',
      EST_CLCT_BANKRL DECIMAL(24,6) TITLE '预计募集资金',
      OSUB_RATE DECIMAL(24,6) TITLE '超募比率')
PRIMARY INDEX ( STK_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SFUTRS_STRAD_PSTNI;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SFUTRS_STRAD_PSTNI ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      STK_INDX_FUTRS_VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股指期货品种代码',
      IDX_CDE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INTN_IDX_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INTN_IDX_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数代码' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数名称',
      OPN_POINT DECIMAL(24,6) TITLE '开盘点数',
      CLS_POINT DECIMAL(24,6) TITLE '收盘点数',
      MAX_POINT DECIMAL(24,6) TITLE '最高点数',
      MIN_POINT DECIMAL(24,6) TITLE '最低点数',
      TRAD_QTT DECIMAL(24,6) TITLE '成交量',
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额',
      MKT_VAL DECIMAL(24,6) TITLE '市值',
      PE DECIMAL(24,6) TITLE '市盈率',
      PB DECIMAL(24,6) TITLE '市净率',
      DIVD_RATE DECIMAL(24,6) TITLE '股息率',
      RETN DECIMAL(24,6) TITLE '对数收益率',
      D_CHG_RATE DECIMAL(24,6) TITLE '日涨跌幅',
      W_CHG_RATE DECIMAL(24,6) TITLE '周涨跌幅',
      M_CHG_RATE DECIMAL(24,6) TITLE '月涨跌幅',
      Y_CHG_RATE DECIMAL(24,6) TITLE '年涨跌幅')
PRIMARY INDEX ( BIZ_DATE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_HKST_TRAD_PSTN2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_HKST_TRAD_PSTN2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      BIZ_INDC CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '业务标志' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券名称',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别',
      BUY_VOL DECIMAL(24,6) TITLE '买入数量',
      SAL_VOL DECIMAL(24,6) TITLE '卖出数量',
      BUY_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '买入金额_原币',
      SAL_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '卖出金额_原币',
      BUY_AMT_RMB DECIMAL(24,6) TITLE '买入金额_人民币',
      SAL_AMT_RMB DECIMAL(24,6) TITLE '卖出金额_人民币',
      BUY_CNT DECIMAL(24,0) TITLE '买入笔数',
      SAL_CNT DECIMAL(24,0) TITLE '卖出笔数',
      PSTN_VOL DECIMAL(24,6) TITLE '持仓数量',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '持仓市值_原币',
      PSTN_MKT_VAL_RMB DECIMAL(24,6) TITLE '持仓市值_人民币')
PRIMARY INDEX ( STAT_DATE ,BIZ_INDC ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SFUTRS_TRAD_PSTNI;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SFUTRS_TRAD_PSTNI ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      STK_INDX_FUTRS_VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股指期货品种代码',
      IDX_CDE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SEC_TRAD2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SEC_TRAD2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '银行标识',
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券分类' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别',
      BUY_VOL DECIMAL(24,0) TITLE '买入数量',
      BUY_AMT DECIMAL(24,6) TITLE '买入金额',
      SAL_VOL DECIMAL(24,0) TITLE '卖出数量',
      SAL_AMT DECIMAL(24,6) TITLE '卖出金额',
      BUY_AMT_MKT_PRC DECIMAL(24,6) TITLE '买入金额_市价',
      SAL_AMT_MKT_PRC DECIMAL(24,6) TITLE '卖出金额_市价',
      BUY_CNT DECIMAL(24,0) TITLE '买入笔数',
      SAL_CNT DECIMAL(24,0) TITLE '卖出笔数')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE ,SEC_EXCH_CDE ,STK_INVST_SORT ,
BNK_ID ,SEC_CLSF ,SEC_ACCT_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_TB2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_TB2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期权合约产品代码',
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别',
      BUY_VOL_SUBSC DECIMAL(24,0) TITLE '认购买入数量',
      SAL_VOL_SUBSC DECIMAL(24,0) TITLE '认购卖出数量',
      BUY_VOL_PUT DECIMAL(24,0) TITLE '认沽买入数量',
      SAL_VOL_PUT DECIMAL(24,0) TITLE '认沽卖出数量',
      BUY_AMT_SUBSC DECIMAL(24,6) TITLE '认购买入金额',
      SAL_AMT_SUBSC DECIMAL(24,6) TITLE '认购卖出金额',
      BUY_AMT_PUT DECIMAL(24,6) TITLE '认沽买入金额',
      SAL_AMT_PUT DECIMAL(24,6) TITLE '认沽卖出金额',
      END_RIGHT_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '认购持权利仓数量',
      END_OBLG_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '认购持义务仓数量',
      END_RIGHT_PSTN_QTT_PUT DECIMAL(24,0) TITLE '认沽持权利仓数量',
      END_OBLG_PSTN_QTT_PUT DECIMAL(24,0) TITLE '认沽持义务仓数量')
PRIMARY INDEX ( STAT_DATE ,OPT_CNTR_PROD_CDE ,INVST_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_HOLD_BOND_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_HOLD_BOND_ACCT_VOL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      BOND_CLSF VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '债券分类' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_EXCH_CDE ,ACCT_TYPE ,
BOND_CLSF ,STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SMT_TRAD2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SMT_TRAD2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      SEC_LN_SAL_AMT DECIMAL(24,6) TITLE '融券卖出金额',
      BUY_STK_AS_VCR_AMT DECIMAL(24,6) TITLE '买券还券金额',
      SEC_LN_LQD_AMT DECIMAL(24,6) TITLE '融券平仓金额',
      FIN_BUY_AMT DECIMAL(24,6) TITLE '融资买入金额',
      SLCPS_PAYBK_AMT DECIMAL(24,6) TITLE '卖券还款金额',
      FIN_LQD_AMT DECIMAL(24,6) TITLE '融资平仓金额',
      GAGE_BUY_AMT DECIMAL(24,6) TITLE '担保品买入金额',
      GAGE_SAL_AMT DECIMAL(24,6) TITLE '担保品卖出金额',
      SEC_LN_SAL_VOL DECIMAL(24,0) TITLE '融券卖出数量',
      BUY_STK_AS_VCR_VOL DECIMAL(24,0) TITLE '买券还券数量',
      SEC_LN_LQD_VOL DECIMAL(24,0) TITLE '融券平仓数量',
      FIN_BUY_VOL DECIMAL(24,0) TITLE '融资买入数量',
      SLCPS_PAYBK_VOL DECIMAL(24,0) TITLE '卖券还款数量',
      FIN_LQD_VOL DECIMAL(24,0) TITLE '融资平仓数量',
      GAGE_BUY_VOL DECIMAL(24,0) TITLE '担保品买入数量',
      GAGE_SAL_VOL DECIMAL(24,0) TITLE '担保品卖出数量')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE ,SEC_EXCH_CDE ,STK_INVST_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_FPINVST_SECBKRL_TRAD_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_FPINVST_SECBKRL_TRAD_BAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户号' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      BANKRL_SORT VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '资金类别' NOT NULL,
      STC_AMT DECIMAL(24,6) TITLE '银转证金额' NOT NULL,
      CTS_AMT DECIMAL(24,6) TITLE '证转银金额' NOT NULL,
      SETL_BANKRL_BAL DECIMAL(24,6) TITLE '结算资金余额' NOT NULL)
PRIMARY INDEX ( SEC_ACCT_NBR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_FPINVST_FMKT_CUSTE_DW_CNDT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_FPINVST_FMKT_CUSTE_DW_CNDT ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FUTRS_UNFY_OPN_ACCT_CUST_CDE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货统一开户客户编码' NOT NULL,
      CUST_WTHDR DECIMAL(24,6) TITLE '客户出金' NOT NULL,
      CUST_DPST DECIMAL(24,6) TITLE '客户入金' NOT NULL,
      CUST_BANKRL_EQUT DECIMAL(24,6) TITLE '客户资金权益' NOT NULL)
PRIMARY INDEX ( FUTRS_UNFY_OPN_ACCT_CUST_CDE )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SMKT_ETF_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SMKT_ETF_PSTN_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      ETF_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ETF类型',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_TRD_IPO_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_TRD_IPO_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SEC_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户' NOT NULL,
      TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '交易日期',
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所代码',
      OAP_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户',
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码',
      LIST_DAYS DECIMAL(18,0) TITLE '上市天数',
      BUY_VOL DECIMAL(18,0) TITLE '买入数量',
      BUY_AMT DECIMAL(24,6) TITLE '买入金额',
      BUY_CNT DECIMAL(18,0) TITLE '买入笔数',
      SAL_VOL DECIMAL(18,0) TITLE '卖出数量',
      SAL_AMT DECIMAL(24,6) TITLE '卖出金额',
      SAL_CNT DECIMAL(18,0) TITLE '卖出笔数')
PRIMARY INDEX ( SEC_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_IC_CORR;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_IC_CORR ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      STK_CDE VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      CLSF_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '分类代码',
      IC_NAME VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业分类名称',
      DATA_TIME TIMESTAMP(6) FORMAT 'YYYYMMDDBHH:MI:SS' TITLE '数据时间')
PRIMARY INDEX ( STAT_DATE ,STK_CDE ,CLSF_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_STK_TRAD_BY_INVST_IDSTR;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_STK_TRAD_BY_INVST_IDSTR ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      STK_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股份类型' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业分类' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,STK_TYPE ,LSTN_BORD ,
IC ,SEC_EXCH_CDE ,STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_STK_TRAD_BY_INVST_IDSTR2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_STK_TRAD_BY_INVST_IDSTR2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      STK_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股份类型' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业分类' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,STK_TYPE ,LSTN_BORD ,
IC ,SEC_EXCH_CDE ,STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FTINVST_FCUST_BANKRLE_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FTINVST_FCUST_BANKRLE_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FUTRS_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货投资者类别',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_STK_MKT_BANKRL_CNDT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_STK_MKT_BANKRL_CNDT_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SC_CDE ,INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.SPE_INVST_PSN_HD_STK_DTL_D;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.SPE_INVST_PSN_HD_STK_DTL_D ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户号码',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户号',
      MKT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '市场类别',
      SEC_ACCT_SORT CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别',
      NEGT_TYPE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '流通类型',
      END_HOLD_STK_MKT_VAL DECIMAL(22,2) TITLE '统计日期的期末持有股票市值',
      CRNC CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '币种',
      EXCH_RT DECIMAL(18,6) TITLE '汇率')
PRIMARY INDEX ( SEC_ACCT_NBR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '1990-01-01' AND '2050-12-31' EACH INTERVAL '1' DAY ,
 NO RANGE);


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_COMP_FINA_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_COMP_FINA_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      RPT_PRD DATE FORMAT 'YYYYMMDD' TITLE '报告期' NOT NULL,
      COMP_ID VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '公司ID' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_ABBR VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票简称',
      IDSTR_CTGR_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业门类代码',
      IDSTR_CTGR_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业门类名称',
      IDSTR_CLASS_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业大类代码',
      IDSTR_CLASS_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业大类名称',
      PPDM_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区代码',
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区名称',
      TRDT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '传统制造业',
      HIGH_ENERGY CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '高耗能产业',
      MODERN_SRVC CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '现代服务业',
      LIGHT_ASET CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '轻资产行业',
      STRTG_EMERG CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '战略新兴行业',
      OVER_CAPACITY CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '落后产能行业',
      HDGS_CLSF_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '控股分类代码',
      HDGS_CLSF_NAME VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '控股分类名称',
      INVNT DECIMAL(24,6) TITLE '存货',
      ASET_TOT_AMT DECIMAL(24,6) TITLE '资产总额',
      LBLT_TOT DECIMAL(24,6) TITLE '负债合计',
      NAST DECIMAL(24,6) TITLE '净资产',
      CAP DECIMAL(24,6) TITLE '股本',
      BIZ_ENING DECIMAL(24,6) TITLE '营业收入',
      SELL_CHRG DECIMAL(24,6) TITLE '销售费用',
      MNGMT_CHRG DECIMAL(24,6) TITLE '管理费用',
      FINA_CHRG DECIMAL(24,6) TITLE '财务费用',
      BIZ_PRFT DECIMAL(24,6) TITLE '营业利润',
      PRFT_TOT_AMT DECIMAL(24,6) TITLE '利润总额',
      INCM_TAX DECIMAL(24,6) TITLE '所得税',
      BIZ_TOT_ENING DECIMAL(24,6) TITLE '营业总收入',
      NET_PRFT DECIMAL(24,6) TITLE '净利润',
      NET_PRFT_TOT_AMT DECIMAL(24,6) TITLE '净利润总额',
      N_ALLOT_PRFT DECIMAL(24,6) TITLE '未分配利润',
      OA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE '经营活动产生现金流量净额',
      IA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE '投资活动产生的现金流量净额',
      FA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE '筹资活动产生的现金流量净额',
      LIST_INDC CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市标志',
      ASET_LBLT_RATE DECIMAL(24,6) TITLE '资产负债率',
      TOT_ASET_YLD DECIMAL(24,6) TITLE '总资产收益率',
      NAST_YLD DECIMAL(24,6) TITLE '净资产收益率',
      BIZ_ENING_PRFT_RATE DECIMAL(24,6) TITLE '营业收入利润率',
      INVNT_TNOV_RATE DECIMAL(24,6) TITLE '存货周转率（单位：次）',
      ASET_TOT_AMT_EOLY DECIMAL(24,6) TITLE '资产总额_上年末',
      NAST_EOLY DECIMAL(24,6) TITLE '净资产_上年末',
      INVNT_EOLY DECIMAL(24,6) TITLE '存货_上年末')
PRIMARY INDEX ( RPT_PRD ,COMP_ID ,STK_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_LIST_COMP_FINA_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_LIST_COMP_FINA_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业分类' NOT NULL,
      HDGS_CLSF VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '控股分类' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '监管辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,LSTN_BORD ,IC ,HDGS_CLSF ,
REG_JUR ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_NAME_CORR;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_NAME_CORR ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SC_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      SC_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司名称' NOT NULL)
PRIMARY INDEX ( SC_CDE ,SC_NAME );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_FCPTL_INVST_SMT_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_FCPTL_INVST_SMT_BAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户号' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      FIN_BAL DECIMAL(24,6) TITLE '融资余额' NOT NULL,
      SEC_LN_BAL DECIMAL(24,6) TITLE '融券余额' NOT NULL)
PRIMARY INDEX ( SEC_ACCT_NBR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_DVD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_DVD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '除权除息日' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '股权登记日' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票名称' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      DIVD_ABBR VARCHAR(150) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '红利简称' NOT NULL,
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '分红年度' NOT NULL,
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '现金分红金额（税前）' NOT NULL,
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '现金分红金额(税后)' NOT NULL,
      DP_RATE_DENOM DECIMAL(24,4) TITLE '派息比例分母' NOT NULL,
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '派息比例分子(税前)' NOT NULL,
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '派息比例分子（税后）' NOT NULL,
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '参与分红总股本' NOT NULL,
      CRNC_CDE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '货币代码' NOT NULL,
      MDL_PRC DECIMAL(24,6) TITLE '中间价' NOT NULL)
PRIMARY INDEX ( EXR_EXD_D ,STK_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.RZQ_CRDT_TRAD_test;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.RZQ_CRDT_TRAD_test ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      MKT_Type CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别' NOT NULL,
      TRAD_NBR VARCHAR(18) CHARACTER SET LATIN CASESPECIFIC TITLE '成交编号' NOT NULL,
      TRAD_Date DATE FORMAT 'YYYYMMDD' TITLE '成交日期' NOT NULL,
      SEC_ACCT CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户' NOT NULL,
      SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '证券代码' NOT NULL,
      CRDT_TRAD_Type CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '信用' NOT NULL,
      TRAD_Time INTEGER TITLE '成交时间' NOT NULL,
      CSTD_Unit_ID CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '托管ID' NOT NULL,
      TRAD_VOL DECIMAL(18,0) TITLE '成交数量' NOT NULL,
      TRAD_Price DECIMAL(18,6) TITLE '成交价格' NOT NULL)
PRIMARY INDEX ( TRAD_Date ,SEC_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_CINVST_SIFUTRS_CSTK_TPSTNI;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_CINVST_SIFUTRS_CSTK_TPSTNI ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      VART_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种代码' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IDSTR_CTGR_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业门类代码' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,INVST_SORT ,SEC_EXCH_CDE ,
VART_CDE ,LSTN_BORD ,IDSTR_CTGR_CDE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_EXCH_CDE ,ACCT_TYPE ,
STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.TMID_SEC_SMT_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.TMID_SEC_SMT_BAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      FIN_BAL DECIMAL(24,6) TITLE '融资余额',
      SEC_LN_BAL DECIMAL(24,6) TITLE '融券余额',
      SEC_LN_VOL DECIMAL(24,0) TITLE '融券数量',
      SEC_LN_MKT_VAL DECIMAL(24,6) TITLE '融券市值')
PRIMARY INDEX ( BIZ_DATE ,SEC_EXCH_CDE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_HGT_STK_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_HGT_STK_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      BIZ_INDC CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '业务标志' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券名称',
      AH_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'A+H标识' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      PRE_CLS_PRC DECIMAL(24,6) TITLE '前收盘价',
      CLS_PRC DECIMAL(24,6) TITLE '收盘价',
      TCAP DECIMAL(24,6) TITLE '总股本',
      LSTN_NEGT_CAP DECIMAL(24,6) TITLE '已上市流通股本',
      TOT_MKT_VAL DECIMAL(24,6) TITLE '总市值',
      LSTN_NEGT_MKT_VAL DECIMAL(24,6) TITLE '已上市流通市值',
      MKT_VAL_TNOV_RATE DECIMAL(24,6) TITLE '市值换手率',
      CNVT_PREM_RATE DECIMAL(24,6) TITLE '折溢价率',
      D_CHG_RATE DECIMAL(24,6) TITLE '日涨跌幅',
      BUY_QTT DECIMAL(24,6) TITLE '买入量',
      SQTT DECIMAL(24,6) TITLE '卖出量',
      BUY_AMT DECIMAL(24,6) TITLE '买入金额',
      SAL_AMT DECIMAL(24,6) TITLE '卖出金额',
      TRAD_QTT_FULL_MKT DECIMAL(24,6) TITLE '成交量_全市场',
      TRAD_AMT_FULL_MKT DECIMAL(24,6) TITLE '成交金额_全市场',
      OVRS_TRAD_QTT DECIMAL(24,6) TITLE '卖空成交量',
      OVRS_AMT DECIMAL(24,6) TITLE '卖空金额')
PRIMARY INDEX ( BIZ_DATE ,BIZ_INDC ,SEC_CDE ,AH_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.SPE_INVST_PSN_HD_MAX_MKT_VAL_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.SPE_INVST_PSN_HD_MAX_MKT_VAL_M ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户号码',
      END_HOLD_MKT_VAL_MAX DECIMAL(22,2) TITLE '期末持股市值最大值',
      END_HOLD_MKT_VAL_MAX_DATE DATE FORMAT 'YYYYMMDD' TITLE '期末持股市值最大值日期')
PRIMARY INDEX ( OAP_ACCT_NBR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '1990-01-01' AND '2050-12-31' EACH INTERVAL '1' MONTH ,
 NO RANGE);


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_SC_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_SC_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '监管辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,REG_JUR ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_INFO_20170123;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_INFO_20170123 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标名称' NOT NULL,
      IDX_TABLE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标表名' NOT NULL,
      IDX_TABLE_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标表中文名' NOT NULL,
      IDX_VIEW VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标视图名',
      IDX_S_CRIPT VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标脚本名',
      FREQ VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      RMAK VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '备注')
PRIMARY INDEX ( IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SMKT_BANKRL_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SMKT_BANKRL_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SMKT_INVST_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SMKT_INVST_ACCT_VOL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      EXCH_NBR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_A_TRAD_AMT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_A_TRAD_AMT ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业分类' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,ACCT_TYPE ,LSTN_BORD ,
IC ,SEC_EXCH_CDE ,STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_HOLD_BOND_ACCT_VOL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_HOLD_BOND_ACCT_VOL2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      BOND_CLSF VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '债券分类' NOT NULL,
      STK_INVST_SORT VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_EXCH_CDE ,ACCT_TYPE ,
BOND_CLSF ,STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_SEC_SMT_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_SEC_SMT_BAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      FIN_BAL DECIMAL(24,6) TITLE '融资余额',
      SEC_LN_BAL DECIMAL(24,6) TITLE '融券余额',
      SEC_LN_VOL DECIMAL(24,0) TITLE '融券数量',
      SEC_LN_MKT_VAL DECIMAL(24,6) TITLE '融券市值')
PRIMARY INDEX ( BIZ_DATE ,SEC_EXCH_CDE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_SNGL_IDX_STAT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_SNGL_IDX_STAT ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_IC;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_IC ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDSTR_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业代码' NOT NULL,
      IDSTR_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业名称')
PRIMARY INDEX ( IDSTR_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_RIGHT_TB2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_RIGHT_TB2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '除权除息日' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '股权登记日' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票名称' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区代码' NOT NULL,
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区名称' NOT NULL,
      RIGHT_LIST_D DATE FORMAT 'YYYYMMDD' TITLE '配股上市日' NOT NULL,
      EQUITY_REG_D_CLS_PRC DECIMAL(24,6) TITLE '股权登记日收盘价' NOT NULL,
      RIGHT_PRC DECIMAL(24,6) TITLE '配股价' NOT NULL,
      EXR_PRC DECIMAL(24,6) TITLE '除权价' NOT NULL,
      RIGHT_RATE DECIMAL(18,2) TITLE '配股比例' NOT NULL)
PRIMARY INDEX ( STK_CDE ,RIGHT_LIST_D )
PARTITION BY RANGE_N(RIGHT_LIST_D  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_ACCT_A_MKT_VAL_BY_INVST_OLD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_ACCT_A_MKT_VAL_BY_INVST_OLD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,LSTN_BORD ,SEC_EXCH_CDE ,
STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.SPE_INVST_CLSF_ORG_D;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.SPE_INVST_CLSF_ORG_D ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户号码',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户号',
      SEC_ACCT_NAME VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户名称',
      MKT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '市场类别',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别',
      CLSF_1 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '《标准》一级分类',
      CLSF_2 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '《标准》二级分类',
      CLSF_3 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '《标准》三级分类',
      Cmsmc_CLSF CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '中证监测分类',
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '银行标识',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( SEC_ACCT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.SPE_INVST_PSN_INFO_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.SPE_INVST_PSN_INFO_M ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户号码',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户号',
      MKT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '市场类别',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别',
      SEC_ACCT_STS CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户状态',
      SEC_ACCT_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户名称',
      BORN_DATE DATE FORMAT 'YYYYMMDD' TITLE '出生日期')
PRIMARY INDEX ( S_DATE ,SEC_ACCT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_RES_CHANGE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_RES_CHANGE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所代码',
      LMT_COMP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '限售公司类型',
      LMT_INVST_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '限售投资者类型',
      LAB_VOL DECIMAL(18,0) TITLE '解禁数量',
      LAB_MKT_VAL DECIMAL(22,2) TITLE '解禁市值',
      INCR_HDG_VOL DECIMAL(18,0) TITLE '增持数量',
      INCR_HDG_AMT DECIMAL(22,2) TITLE '增持金额',
      RH_VOL DECIMAL(18,0) TITLE '减持数量',
      RH_AMT DECIMAL(22,2) TITLE '减持金额')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_FUTRS_INVST_SORT_CODE_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_FUTRS_INVST_SORT_CODE_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      AAGT_CLSF VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一级分类' NOT NULL,
      AAGT_CLSF_DESC VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一级分类描述' NOT NULL)
PRIMARY INDEX ( AAGT_CLSF );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.mid_fcrs_mgn_invst_sec_pstn_170420;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.mid_fcrs_mgn_invst_sec_pstn_170420 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户号码' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户号' NOT NULL,
      SEC_EXCH_CDE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_ACCT_SORT VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别' NOT NULL,
      CAP_TYPE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型' NOT NULL,
      SEC_CLSF VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券分类' NOT NULL,
      FCPTL_INVST_ID VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者标识' NOT NULL,
      CRS_MGN_INVST_ID VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '跨市场投资者标识' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '持仓数量' NOT NULL,
      PSTN_MKT_VAL DECIMAL(24,6) TITLE '持仓市值' NOT NULL)
PRIMARY INDEX ( OAP_ACCT_NBR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_PE_RATE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_PE_RATE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      STAT_ANGLE_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '统计角度编码' NOT NULL,
      STAT_ANGLE_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '统计角度名称',
      STC_PE DECIMAL(24,6) TITLE '静态市盈率',
      ROLN_PE DECIMAL(24,6) TITLE '滚动市盈率',
      FORC_PE DECIMAL(24,6) TITLE '预测市盈率',
      PB DECIMAL(24,6) TITLE '市净率',
      DIVD_RATE DECIMAL(24,6) TITLE '股息率')
PRIMARY INDEX ( BIZ_DATE ,FREQ ,STAT_ANGLE_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_PTC_BOND_TRAD_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_PTC_BOND_TRAD_ACCT_VOL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      TRAD_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易类型' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_EXCH_CDE ,ACCT_TYPE ,
TRAD_TYPE ,STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SMKT_SACCT_STAT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SMKT_SACCT_STAT_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1' NOT NULL,
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2' NOT NULL,
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,FCPTL_INVST_SORT1 ,FCPTL_INVST_SORT2 ,
FCPTL_INVST_SORT3 ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_STAT_ANGLE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_STAT_ANGLE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_ANGLE_CLASS_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '统计角度大类编码' NOT NULL,
      STAT_ANGLE_CLASS_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '统计角度大类名称',
      STAT_ANGLE_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '统计角度编码' NOT NULL,
      STAT_ANGLE_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '统计角度名称')
PRIMARY INDEX ( STAT_ANGLE_CLASS_CDE ,STAT_ANGLE_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.XMID_EXCH_RT_INTR_RT_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.XMID_EXCH_RT_INTR_RT_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标代码' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标名称',
      TYP CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '类型' NOT NULL,
      IDX_VAL DECIMAL(10,7) TITLE '指标值')
PRIMARY INDEX ( BIZ_DATE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_FCPTL_INVST_FUTRS_CR_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_FCPTL_INVST_FUTRS_CR_TRAD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      VART_CNTR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种合约' NOT NULL,
      VART_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种代码' NOT NULL,
      FUTRS_UNFY_OPN_ACCT_CUST_CDE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货统一开户客户编码' NOT NULL,
      EXCH_CUST_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所客户编码' NOT NULL,
      EXCH_NBR VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号' NOT NULL,
      FC_MEMB_NBR VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货公司会员号' NOT NULL,
      TRAD_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '买卖标志' NOT NULL,
      KPWH_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '开平仓标志' NOT NULL,
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额' NOT NULL,
      TRAD_QTT DECIMAL(24,0) TITLE '成交量' NOT NULL)
PRIMARY INDEX ( FUTRS_UNFY_OPN_ACCT_CUST_CDE )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_ETF_AFP_REDEM;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_ETF_AFP_REDEM ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      INVST_TYPE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类型',
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券名称',
      EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所代码',
      AFP_SHR DECIMAL(24,6) TITLE '申购份额',
      REDEM_SHR DECIMAL(24,6) TITLE '赎回份额',
      BUY_AMT DECIMAL(24,6) TITLE '买入金额',
      SAL_AMT DECIMAL(24,6) TITLE '卖出金额',
      AFP_CNT DECIMAL(24,0) TITLE '申购笔数',
      REDEM_CNT DECIMAL(24,0) TITLE '赎回笔数',
      BUY_CNT DECIMAL(24,0) TITLE '买入笔数',
      SAL_CNT DECIMAL(24,0) TITLE '卖出笔数')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SEC_TRAD_BAL20161222;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SEC_TRAD_BAL20161222 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      BANKRL_SORT CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '资金类别' NOT NULL,
      STC_AMT DECIMAL(24,6) TITLE '银转证金额' NOT NULL,
      CTS_AMT DECIMAL(24,6) TITLE '证转银金额' NOT NULL,
      SETL_BANKRL_BAL DECIMAL(24,6) TITLE '结算资金余额')
PRIMARY INDEX ( STAT_DATE ,SC_CDE ,INVST_SORT ,BANKRL_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_CINVST_ACCT_VOL_STAT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_CINVST_ACCT_VOL_STAT_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      CRS_MGN_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '跨市场投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,CRS_MGN_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CFG_FUTRS_VART_DSPLY;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CFG_FUTRS_VART_DSPLY ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      DSPLY_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '展示序号' NOT NULL,
      STD_CNTR_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '标准合约代码' NOT NULL,
      STD_CNTR_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '标准合约名称' NOT NULL,
      DSPLY_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '展示名称' NOT NULL,
      DSPLY_NAME_ENG VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '展示名称_英文' NOT NULL,
      UNIT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '单位' NOT NULL,
      FUTRS_EXCH_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货交易所代码' NOT NULL,
      FUTRS_EXCH_CHN_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货交易所中文名' NOT NULL,
      LIST_DATE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市日期' NOT NULL,
      DELS_DATE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '退市日期' NOT NULL,
      FUTRS_VART_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货品种序号' NOT NULL,
      FUTRS_VART_TYPE_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货品种类型代码' NOT NULL,
      FUTRS_VART_TYPE_CHN VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货品种类型_中文' NOT NULL,
      FUTRS_VART_TYPE_ENG VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货品种类型_英文' NOT NULL)
PRIMARY INDEX ( STD_CNTR_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_TB23;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_TB23 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期权合约产品代码',
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别',
      BUY_VOL_SUBSC DECIMAL(24,0) TITLE '认购买入数量',
      SAL_VOL_SUBSC DECIMAL(24,0) TITLE '认购卖出数量',
      BUY_VOL_PUT DECIMAL(24,0) TITLE '认沽买入数量',
      SAL_VOL_PUT DECIMAL(24,0) TITLE '认沽卖出数量',
      BUY_AMT_SUBSC DECIMAL(24,6) TITLE '认购买入金额',
      SAL_AMT_SUBSC DECIMAL(24,6) TITLE '认购卖出金额',
      BUY_AMT_PUT DECIMAL(24,6) TITLE '认沽买入金额',
      SAL_AMT_PUT DECIMAL(24,6) TITLE '认沽卖出金额',
      END_RIGHT_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '认购持权利仓数量',
      END_OBLG_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '认购持义务仓数量',
      END_RIGHT_PSTN_QTT_PUT DECIMAL(24,0) TITLE '认沽持权利仓数量',
      END_OBLG_PSTN_QTT_PUT DECIMAL(24,0) TITLE '认沽持义务仓数量')
PRIMARY INDEX ( STAT_DATE ,OPT_CNTR_PROD_CDE ,INVST_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SMT_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SMT_BAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      INVST_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类型' NOT NULL,
      FIN_BAL DECIMAL(24,6) TITLE '融资余额' NOT NULL,
      SEC_LN_BAL DECIMAL(24,6) TITLE '融券余额' NOT NULL)
PRIMARY INDEX ( STAT_DATE ,SEC_CDE )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_RIGHT_TB3;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_RIGHT_TB3 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '除权除息日',
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '股权登记日',
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码',
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票名称',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区代码',
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区名称',
      RIGHT_LIST_D DATE FORMAT 'YYYYMMDD' TITLE '配股上市日' NOT NULL,
      EQUITY_REG_D_CLS_PRC DECIMAL(24,6) TITLE '股权登记日收盘价',
      RIGHT_PRC DECIMAL(24,6) TITLE '配股价',
      EXR_PRC DECIMAL(24,6) TITLE '除权价',
      RIGHT_RATE DECIMAL(18,2) TITLE '配股比例')
PRIMARY INDEX ( EXR_EXD_D );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_PPDM_CORR_RLTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_PPDM_CORR_RLTN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PPDM_CDE_INTF VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区代码_接口' NOT NULL,
      PPDM_CDE_SYS_INR CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区代码_系统内' NOT NULL,
      BLNGS_INTF VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '所属接口' NOT NULL)
PRIMARY INDEX ( PPDM_CDE_INTF ,PPDM_CDE_SYS_INR ,BLNGS_INTF );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVSTETF_TRAD_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVSTETF_TRAD_PSTN_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      ETF_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ETF类型',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SMT_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SMT_TRAD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      SEC_LN_SAL_AMT DECIMAL(24,6) TITLE '融券卖出金额',
      BUY_STK_AS_VCR_AMT DECIMAL(24,6) TITLE '买券还券金额',
      SEC_LN_LQD_AMT DECIMAL(24,6) TITLE '融券平仓金额',
      FIN_BUY_AMT DECIMAL(24,6) TITLE '融资买入金额',
      SLCPS_PAYBK_AMT DECIMAL(24,6) TITLE '卖券还款金额',
      FIN_LQD_AMT DECIMAL(24,6) TITLE '融资平仓金额',
      GAGE_BUY_AMT DECIMAL(24,6) TITLE '担保品买入金额',
      GAGE_SAL_AMT DECIMAL(24,6) TITLE '担保品卖出金额',
      SEC_LN_SAL_VOL DECIMAL(24,0) TITLE '融券卖出数量',
      BUY_STK_AS_VCR_VOL DECIMAL(24,0) TITLE '买券还券数量',
      SEC_LN_LQD_VOL DECIMAL(24,0) TITLE '融券平仓数量',
      FIN_BUY_VOL DECIMAL(24,0) TITLE '融资买入数量',
      SLCPS_PAYBK_VOL DECIMAL(24,0) TITLE '卖券还款数量',
      FIN_LQD_VOL DECIMAL(24,0) TITLE '融资平仓数量',
      GAGE_BUY_VOL DECIMAL(24,0) TITLE '担保品买入数量',
      GAGE_SAL_VOL DECIMAL(24,0) TITLE '担保品卖出数量')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE ,SEC_EXCH_CDE ,STK_INVST_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.TFCT_STK_PLG_REPO_RATE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.TFCT_STK_PLG_REPO_RATE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      Stat_Date DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      Rate_CLSF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '比例分类' NOT NULL,
      Rate_LLMT INTEGER TITLE '比例下限' NOT NULL,
      Rate_ULMT INTEGER TITLE '比例上限' NOT NULL,
      ST_RPCHS_AMT DECIMAL(24,6) TITLE '待购回金额',
      CNTR_CNT DECIMAL(24,0) TITLE '合约笔数',
      ACCT_VOL DECIMAL(24,0) TITLE '账户数')
PRIMARY INDEX ( Stat_Date ,Rate_CLSF ,Rate_LLMT ,Rate_ULMT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_SMKT_FS_AVG_MNTNC_GUT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_SMKT_FS_AVG_MNTNC_GUT_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SC_CDE ,INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.mid_fcrs_mgn_invst_sec_pstn;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.mid_fcrs_mgn_invst_sec_pstn ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码 ' NOT NULL,
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户号码' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户号' NOT NULL,
      SEC_EXCH_CDE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_ACCT_SORT VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别' NOT NULL,
      CAP_TYPE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型' NOT NULL,
      SEC_CLSF VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券分类' NOT NULL,
      FCPTL_INVST_ID VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者标识' NOT NULL,
      CRS_MGN_INVST_ID VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '跨市场投资者标识' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '持仓数量',
      PSTN_MKT_VAL DECIMAL(24,6) TITLE '持仓市值')
PRIMARY INDEX ( OAP_ACCT_NBR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_FCUST_BANKRLE_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_FCUST_BANKRLE_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_AFP_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_AFP_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SEC_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户' NOT NULL,
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所代码',
      OAP_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户',
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码',
      AFP_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '申购代码',
      AFP_MODE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '申购方式',
      AFP_DATE DATE FORMAT 'YYYYMMDD' TITLE '申购日期',
      AFP_TIME INTEGER TITLE '申购时间',
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期',
      VLD_AFP_VOL DECIMAL(18,0) TITLE '有效申购数量',
      AFP_PRC DECIMAL(24,6) TITLE '申购价格',
      CHK_MKT_CPT DECIMAL(24,6) TITLE '验股市值')
PRIMARY INDEX ( SEC_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_RES_CHANGE1028;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_RES_CHANGE1028 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所代码',
      LMT_COMP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '限售公司类型',
      LMT_INVST_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '限售投资者类型',
      LAB_VOL DECIMAL(18,0) TITLE '解禁数量',
      LAB_MKT_VAL DECIMAL(22,2) TITLE '解禁市值',
      INCR_HDG_VOL DECIMAL(18,0) TITLE '增持数量',
      INCR_HDG_AMT DECIMAL(22,2) TITLE '增持金额',
      RH_VOL DECIMAL(18,0) TITLE '减持数量',
      RH_AMT DECIMAL(22,2) TITLE '减持金额')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_CRDT_ACCT_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_CRDT_ACCT_TRAD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '成交日期' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_ACCT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      CRDT_TRAD_TYPE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '信用交易类型' NOT NULL,
      TRAD_VOL DECIMAL(24,0) TITLE '成交数量',
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额',
      TRAD_CNT DECIMAL(24,0) TITLE '交易笔数')
PRIMARY INDEX ( TRAD_DATE ,SEC_EXCH_CDE ,SEC_ACCT ,SEC_CDE ,CRDT_TRAD_TYPE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FC_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FC_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '监管辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,REG_JUR ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.TMID_STK_PLG_REPO_TRAD_INVST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.TMID_STK_PLG_REPO_TRAD_INVST ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      STK_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      STK_INVST_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者名称',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '补充质押笔数',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '解除质押笔数',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '初始交易金额',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '初始交易笔数',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '购回交易金额',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '购回交易笔数',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '待购回初始交易金额',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '待购回证券数量',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '待购回证券市值',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '初始质押证券数量',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '初始质押证券市值')
PRIMARY INDEX ( BIZ_DATE ,STK_INVST_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_SC_CDE_CORR_RLTN_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_SC_CDE_CORR_RLTN_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IVST_GUART_SC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投保证券公司代码' NOT NULL,
      IVST_GUART_SC_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投保证券公司名称' NOT NULL,
      CORR_RLTN_TYPE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '对应关系类型' NOT NULL,
      CORR_SEC_ORG_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '对应证券机构代码' NOT NULL,
      CORR_SEC_ORG_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '对应证券机构名称' NOT NULL)
PRIMARY INDEX ( IVST_GUART_SC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SMKT_CRDT_TRAD_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SMKT_CRDT_TRAD_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_CINVST_FUTRS_TRAD_PSTNI;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_CINVST_FUTRS_TRAD_PSTNI ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种代码' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,INVST_SORT ,VART_CDE ,
IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SEC_BANKRL_TRAD_BAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SEC_BANKRL_TRAD_BAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      BANKRL_SORT CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '资金类别' NOT NULL,
      STC_AMT DECIMAL(24,6) TITLE '银转证金额' NOT NULL,
      CTS_AMT DECIMAL(24,6) TITLE '证转银金额' NOT NULL,
      SETL_BANKRL_BAL DECIMAL(24,6) TITLE '结算资金余额')
PRIMARY INDEX ( STAT_DATE ,SC_CDE ,INVST_SORT ,BANKRL_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_CRDT_SEC_OPN_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_CRDT_SEC_OPN_ACCT_VOL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      DOM_FORN_INDC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '境内境外标志' NOT NULL,
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者开户辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_EXCH_CDE ,STK_INVST_SORT ,
DOM_FORN_INDC ,INVST_OPN_ACCT_PPDM ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_ACCT_A_MKT_V_BY_PPDM_IDSTR;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_ACCT_A_MKT_V_BY_PPDM_IDSTR ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业分类' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者开户辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,LSTN_BORD ,IC ,SEC_EXCH_CDE ,
INVST_OPN_ACCT_PPDM ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SMKT_TRAD_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SMKT_TRAD_PSTN_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1' NOT NULL,
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2' NOT NULL,
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3' NOT NULL,
      EXCH_NBR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号' NOT NULL,
      FUTRS_SORT VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货类别' NOT NULL,
      VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种代码' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,FCPTL_INVST_SORT1 ,FCPTL_INVST_SORT2 ,
FCPTL_INVST_SORT3 ,EXCH_NBR ,FUTRS_SORT ,VART_CDE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_ACCT_A_MKT_VAL_BY_INVST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_ACCT_A_MKT_VAL_BY_INVST ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,LSTN_BORD ,SEC_EXCH_CDE ,
STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.TMID_EXCH_RT_INTR_RT_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.TMID_EXCH_RT_INTR_RT_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标代码' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标名称',
      TYP CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '类型',
      IDX_VAL DECIMAL(10,7) TITLE '指标值')
PRIMARY INDEX ( BIZ_DATE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.mid_comp_fina_idx0729;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.mid_comp_fina_idx0729 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      RPT_PRD DATE FORMAT 'YYYYMMDD' TITLE '报告期' NOT NULL,
      COMP_ID VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '公司ID' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_ABBR VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票简称',
      IDSTR_CTGR_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业门类代码',
      IDSTR_CTGR_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业门类名称',
      IDSTR_CLASS_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业大类代码',
      IDSTR_CLASS_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业大类名称',
      PPDM_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区代码',
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区名称',
      TRDT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '传统制造业',
      HIGH_ENERGY CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '高耗能产业',
      MODERN_SRVC CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '现代服务业',
      LIGHT_ASET CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '轻资产行业',
      STRTG_EMERG CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '战略新兴行业',
      OVER_CAPACITY CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '落后产能行业',
      HDGS_CLSF_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '控股分类代码',
      HDGS_CLSF_NAME VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '控股分类名称',
      INVNT DECIMAL(24,6) TITLE '存货',
      ASET_TOT_AMT DECIMAL(24,6) TITLE '资产总额',
      LBLT_TOT DECIMAL(24,6) TITLE '负债合计',
      NAST DECIMAL(24,6) TITLE '净资产',
      CAP DECIMAL(24,6) TITLE '股本',
      BIZ_ENING DECIMAL(24,6) TITLE '营业收入',
      SELL_CHRG DECIMAL(24,6) TITLE '销售费用',
      MNGMT_CHRG DECIMAL(24,6) TITLE '管理费用',
      FINA_CHRG DECIMAL(24,6) TITLE '财务费用',
      BIZ_PRFT DECIMAL(24,6) TITLE '营业利润',
      PRFT_TOT_AMT DECIMAL(24,6) TITLE '利润总额',
      INCM_TAX DECIMAL(24,6) TITLE '所得税',
      BIZ_TOT_ENING DECIMAL(24,6) TITLE '营业总收入',
      NET_PRFT DECIMAL(24,6) TITLE '净利润',
      NET_PRFT_TOT_AMT DECIMAL(24,6) TITLE '净利润总额',
      N_ALLOT_PRFT DECIMAL(24,6) TITLE '未分配利润',
      OA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE '经营活动产生现金流量净额',
      IA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE '投资活动产生的现金流量净额',
      FA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE '筹资活动产生的现金流量净额',
      LIST_INDC CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市标志',
      ASET_LBLT_RATE DECIMAL(24,6) TITLE '资产负债率',
      TOT_ASET_YLD DECIMAL(24,6) TITLE '总资产收益率',
      NAST_YLD DECIMAL(24,6) TITLE '净资产收益率',
      BIZ_ENING_PRFT_RATE DECIMAL(24,6) TITLE '营业收入利润率',
      INVNT_TNOV_RATE DECIMAL(24,6) TITLE '存货周转率（单位：次）',
      ASET_TOT_AMT_EOLY DECIMAL(24,6) TITLE '资产总额_上年末',
      NAST_EOLY DECIMAL(24,6) TITLE '净资产_上年末',
      INVNT_EOLY DECIMAL(24,6) TITLE '存货_上年末')
PRIMARY INDEX ( RPT_PRD ,COMP_ID ,STK_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.SPE_INVST_ACCT_DELT_CLSF_D;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.SPE_INVST_ACCT_DELT_CLSF_D ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '一码通账户号码',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '证券账户号',
      MKT_SORT CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '市场类别',
      CLSF_3_MKT_VAL CHAR(3) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '三级分类（持股市值）')
PRIMARY INDEX ( SEC_ACCT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_A_TRAD_AMT2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_A_TRAD_AMT2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业分类' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,ACCT_TYPE ,LSTN_BORD ,
IC ,SEC_EXCH_CDE ,STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_SHDR_PSTN_RNKG;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_SHDR_PSTN_RNKG ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      RNKG_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '排名类型' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      RNKG INTEGER TITLE '排名' NOT NULL,
      OAP_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户' NOT NULL,
      HOLD_RATE DECIMAL(24,6) TITLE '持有比例',
      HOLD_CAP_VOL DECIMAL(24,6) TITLE '持有股本数量')
PRIMARY INDEX ( STAT_DATE ,RNKG_TYPE ,SEC_CDE ,SEC_EXCH_CDE ,
RNKG ,OAP_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.SPE_INVST_CLSF_PSN_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.SPE_INVST_CLSF_PSN_M ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '一码通账户号码',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户号',
      SEC_ACCT_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户名称',
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别',
      CLSF_1 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '一级分类',
      CLSF_2_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '二级分类（持股市值）',
      CLSF_3_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '三级分类（持股市值）',
      Cmsmc_CLSF_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '中证监测分类（持股市值）',
      CLSF_2_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '二级分类（年龄）',
      CLSF_3_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '三级分类（年龄）',
      END_HOLD_MKT_VAL_MAX DECIMAL(22,2) TITLE '期末持股市值最大值',
      END_HOLD_MKT_VAL_MAX_DATE DATE FORMAT 'YYYYMMDD' TITLE '期末持股市值最大值日期',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户类别')
PRIMARY INDEX ( SEC_ACCT_NBR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '1990-01-01' AND '2050-12-31' EACH INTERVAL '1' MONTH ,
 NO RANGE);


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_PPDM_CDE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_PPDM_CDE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PPDM_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区代码' NOT NULL,
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区名称')
PRIMARY INDEX ( PPDM_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL_Y;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL_Y ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_EXCH_CDE ,ACCT_TYPE ,
STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标名称' NOT NULL,
      IDX_TABLE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标表名' NOT NULL,
      IDX_TABLE_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标表中文名' NOT NULL,
      IDX_VIEW VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标视图名',
      IDX_S_CRIPT VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标脚本名',
      FREQ VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      RMAK VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '备注')
PRIMARY INDEX ( IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.TMID_DOM_IDX_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.TMID_DOM_IDX_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数代码' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数名称',
      OPN_POINT DECIMAL(24,6) TITLE '开盘点数',
      PRE_CLS_POINT DECIMAL(24,6) TITLE '前收盘点数',
      CLS_POINT DECIMAL(24,6) TITLE '收盘点数',
      MAX_POINT DECIMAL(24,6) TITLE '最高点数',
      MIN_POINT DECIMAL(24,6) TITLE '最低点数',
      D_CHG_RATE DECIMAL(24,6) TITLE '日涨跌幅',
      Y_CHG_RATE DECIMAL(24,6) TITLE '年涨跌幅',
      RETN DECIMAL(24,6) TITLE '对数收益率',
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额',
      TRAD_QTT DECIMAL(24,6) TITLE '成交量',
      TCAP DECIMAL(24,6) TITLE '总股本',
      NEGT_CAP DECIMAL(24,6) TITLE '流通股本',
      TOT_MKT_VAL DECIMAL(24,6) TITLE '总市值',
      NEGT_MKT_VAL DECIMAL(24,6) TITLE '流通市值',
      MKT_VAL_TNOV_RATE DECIMAL(24,6) TITLE '市值换手率',
      TRAD_QTT_TNOV_RATE DECIMAL(24,6) TITLE '成交量换手率',
      AVG_STK_PRC DECIMAL(24,6) TITLE '平均股价',
      DATA_SRC_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '数据源类型')
PRIMARY INDEX ( BIZ_DATE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.FCT_UND_PRES_KEEP_GUART_RATE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.FCT_UND_PRES_KEEP_GUART_RATE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      biz_date DATE FORMAT 'YYYYMMDD' TITLE '业务日期',
      PRESS_VAL DECIMAL(18,2) TITLE '压力因子',
      cap_type VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型',
      rate_llmt DECIMAL(30,0) TITLE '履约保障比例下限',
      rate_ulmt DECIMAL(30,0) TITLE '履约保障比例上限',
      st_rpchs_nbr DECIMAL(30,0) TITLE '待购回笔数',
      st_rpchs_sec_mkt_val DECIMAL(30,7) TITLE '待购回金额')
PRIMARY INDEX ( biz_date );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_PE_PB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_PE_PB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      STK_TYPE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股份类型' NOT NULL,
      LSTN_BORD CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IC CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业分类' NOT NULL,
      SEC_EXCH_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      REG_JUR CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '监管辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE ,FREQ ,STK_TYPE ,LSTN_BORD ,IC ,SEC_EXCH_CDE ,
IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_FCPTL_INVST_FUTRS_CR_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_FCPTL_INVST_FUTRS_CR_PSTN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      VART_CNTR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种合约' NOT NULL,
      VART_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种代码' NOT NULL,
      FUTRS_UNFY_OPN_ACCT_CUST_CDE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货统一开户客户编码' NOT NULL,
      EXCH_CUST_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所客户编码' NOT NULL,
      EXCH_NBR VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号' NOT NULL,
      FC_MEMB_NBR VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货公司会员号' NOT NULL,
      TRAD_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '买卖标志' NOT NULL,
      PSTN_AMT DECIMAL(24,6) TITLE '持仓金额' NOT NULL,
      PSTN_QTT DECIMAL(24,0) TITLE '持仓量' NOT NULL,
      TRAD_DPST DECIMAL(24,6) TITLE '交易保证金' NOT NULL)
PRIMARY INDEX ( FUTRS_UNFY_OPN_ACCT_CUST_CDE )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_STK_PLG_REPO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_STK_PLG_REPO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      HDGS_CLSF VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '控股分类' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,LSTN_BORD ,HDGS_CLSF ,
SEC_EXCH_CDE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_SC_ZRT_BIZ_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_SC_ZRT_BIZ_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SC_CDE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_IPO_TRAD_STAT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_IPO_TRAD_STAT ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SEC_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户' NOT NULL,
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所代码',
      OAP_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户',
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码',
      BD_VOL DECIMAL(18,0) TITLE '中签数量',
      IPO_LIST_DAYS DECIMAL(18,0) TITLE '新股上市天数',
      SAL_DATE DATE FORMAT 'YYYYMMDD' TITLE '卖出日期',
      SAL_VOL DECIMAL(18,0) TITLE '卖出数量',
      SAL_AMT DECIMAL(24,6) TITLE '卖出金额',
      ACM_SAL_VOL DECIMAL(18,0) TITLE '累计卖出数量',
      ACM_SAL_AMT DECIMAL(24,6) TITLE '累计卖出金额')
PRIMARY INDEX ( SEC_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_SEC_OPN_ACCT_VOL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_SEC_OPN_ACCT_VOL2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      DOM_FORN_INDC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '境内境外标志' NOT NULL,
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者开户辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_EXCH_CDE ,ACCT_TYPE ,
STK_INVST_SORT ,DOM_FORN_INDC ,INVST_OPN_ACCT_PPDM ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_FUTRS_MKT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_FUTRS_MKT_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDX_NBR VARCHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '序号 ' NOT NULL,
      IDX_CDE VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '指数代码' NOT NULL,
      IDX_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '指数名称' NOT NULL,
      IDX_CLSF VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '指数分类' NOT NULL,
      DATA_SRC_TYPE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '数据源类型' NOT NULL,
      RMAK VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '备注' NOT NULL)
PRIMARY INDEX ( IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_A_MKT_VAL_TNOV_RATE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_A_MKT_VAL_TNOV_RATE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业分类' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '监管辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,LSTN_BORD ,IC ,SEC_EXCH_CDE ,
REG_JUR ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_SPCL_INVST_TRAD_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_SPCL_INVST_TRAD_PSTN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券名称' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      CLSF_ANGLE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '分类角度' NOT NULL,
      INVST_TYPE CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类型' NOT NULL,
      BUY_VOL DECIMAL(24,6) TITLE '买入数量',
      SAL_VOL DECIMAL(24,6) TITLE '卖出数量',
      BUY_AMT DECIMAL(24,6) TITLE '买入金额',
      SAL_AMT DECIMAL(24,6) TITLE '卖出金额',
      BUY_CNT DECIMAL(24,0) TITLE '买入笔数',
      SAL_CNT DECIMAL(24,0) TITLE '卖出笔数',
      PSTN_VOL DECIMAL(24,6) TITLE '持仓数量',
      PSTN_NEGT_VOL DECIMAL(24,6) TITLE '持仓流通数量',
      PSTN_TOT_MKT_VAL DECIMAL(24,6) TITLE '持仓总市值',
      PSTN_NEGT_MKT_VAL DECIMAL(24,6) TITLE '持仓流通市值')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE ,SEC_NAME ,SEC_EXCH_CDE ,CLSF_ANGLE ,
INVST_TYPE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_FC_SYNT_INFO_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_FC_SYNT_INFO_M ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FC_CDE VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货公司代码' NOT NULL,
      FC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货公司名称',
      FC_PPDM_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货公司辖区代码',
      FC_PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货公司辖区名称',
      BRCH_VOL DECIMAL(24,6) TITLE '营业部数量',
      END_FUTRS_PRACT_PSN_VOL DECIMAL(24,0) TITLE '期末期货从业人员数量',
      TOT_ASET DECIMAL(24,6) TITLE '总资产',
      NET_CAP DECIMAL(24,6) TITLE '净资本',
      NAST DECIMAL(24,6) TITLE '净资产',
      BIZ_ENING DECIMAL(24,6) TITLE '营业收入',
      BIZ_EXPDT DECIMAL(24,6) TITLE '营业支出',
      PRFT_TOT_AMT DECIMAL(24,6) TITLE '利润总额',
      NET_PRFT DECIMAL(24,6) TITLE '净利润',
      AVG_FINA_LVRG DECIMAL(24,6) TITLE '平均财务杠杆')
PRIMARY INDEX ( STAT_DATE ,FC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SEC_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SEC_TRAD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '银行标识',
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券分类' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别',
      BUY_VOL DECIMAL(24,0) TITLE '买入数量',
      BUY_AMT DECIMAL(24,6) TITLE '买入金额',
      SAL_VOL DECIMAL(24,0) TITLE '卖出数量',
      SAL_AMT DECIMAL(24,6) TITLE '卖出金额',
      BUY_AMT_MKT_PRC DECIMAL(24,6) TITLE '买入金额_市价',
      SAL_AMT_MKT_PRC DECIMAL(24,6) TITLE '卖出金额_市价',
      BUY_CNT DECIMAL(24,0) TITLE '买入笔数',
      SAL_CNT DECIMAL(24,0) TITLE '卖出笔数')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE ,SEC_EXCH_CDE ,STK_INVST_SORT ,
BNK_ID ,SEC_CLSF ,SEC_ACCT_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.cde_stk_invst_sort;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.cde_stk_invst_sort ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CLSF_1 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一级分类',
      CLSF_1_DESC VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一级分类描述',
      CLSF_2 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '二级分类',
      CLSF_2_DESC VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '二级分类描述',
      CLSF_3 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '三级分类',
      CLSF_3_DESC VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '三级分类描述',
      Cmsmc_CLSF CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '中证监测分类',
      Cmsmc_CLSF_DESC VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '中证监测分类描述')
PRIMARY INDEX ( Cmsmc_CLSF );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_STK_TRAD_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_STK_TRAD_PSTN_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块',
      LIST_COMP_IC VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市公司行业分类',
      APLY_MYRD_IC VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '申万行业分类',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_PTC_BOND_TRAD_ACCT_VOL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_PTC_BOND_TRAD_ACCT_VOL2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      TRAD_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易类型' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_EXCH_CDE ,ACCT_TYPE ,
TRAD_TYPE ,STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数代码' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数名称' NOT NULL,
      BLNGS_AREA VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '所属区域',
      DOM_FORN_INDC VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '境内境外标志' NOT NULL,
      DATA_SRC_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '数据源类型',
      IF_CALC_PE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '是否计算市盈率',
      WDI_IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '万得指数代码')
PRIMARY INDEX ( IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SEC_PSTN2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SEC_PSTN2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '银行标识' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别' NOT NULL,
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型' NOT NULL,
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券分类' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '持仓数量',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '持仓市值_原币')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE ,SEC_EXCH_CDE ,STK_INVST_SORT ,
BNK_ID ,SEC_ACCT_SORT ,CAP_TYPE ,SEC_CLSF );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_SC_SYNT_INFO_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_SC_SYNT_INFO_M ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SC_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      SC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司名称',
      SC_PPDM_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司辖区代码',
      SC_PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司辖区名称',
      BRCH_VOL DECIMAL(24,6) TITLE '营业部数量',
      SUB_COMP_CNT DECIMAL(24,0) TITLE '分公司家数',
      REG_CAP DECIMAL(24,6) TITLE '注册资本',
      IF_JV CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '是否合资',
      IF_HAVE_SMT_QLF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '是否有融资融券资格',
      IF_HAVE_CUST_AM_QLF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '是否有客户资产管理资格',
      REG_DATE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '注册日期',
      RISK_CAP_PREP_TOT_AMT DECIMAL(24,6) TITLE '风险资本准备总额',
      ASET_TOT_AMT DECIMAL(24,6) TITLE '资产总额',
      LBLT_TOT DECIMAL(24,6) TITLE '负债合计',
      OWNER_EQUT_TOT DECIMAL(24,6) TITLE '所有者权益合计',
      NAST DECIMAL(24,6) TITLE '净资产',
      NET_CAP DECIMAL(24,6) TITLE '净资本',
      PRFT_TOT_AMT DECIMAL(24,6) TITLE '利润总额_本年累计',
      NET_PRFT DECIMAL(24,6) TITLE '净利润_本年累计',
      BIZ_ENING DECIMAL(24,6) TITLE '营业收入_本年累计',
      BIZ_PRFT DECIMAL(24,6) TITLE '营业利润_本年累计',
      BIZ_EXPDT DECIMAL(24,6) TITLE '营业支出_本年累计',
      INTR_NET_ENING DECIMAL(24,6) TITLE '利息净收入_本年累计',
      INVSMT_INCM DECIMAL(24,6) TITLE '投资收益_本年累计',
      SEC_BRK_BIZ_NET_ENING DECIMAL(24,6) TITLE '证券经纪业务净收入_本年累计',
      INVSMT_BNK_BIZ_NET_ENING DECIMAL(24,6) TITLE '投资银行业务净收入_本年累计',
      IC_BIZ_NET_ENING DECIMAL(24,6) TITLE '投资咨询业务净收入_本年累计',
      AM_BIZ_NET_ENING DECIMAL(24,6) TITLE '资产管理业务净收入_本年累计',
      PRFT_TOT_AMT_TSM DECIMAL(24,6) TITLE '利润总额_当月',
      NET_PRFT_TSM DECIMAL(24,6) TITLE '净利润_当月',
      BIZ_ENING_TSM DECIMAL(24,6) TITLE '营业收入_当月',
      BIZ_PRFT_TSM DECIMAL(24,6) TITLE '营业利润_当月',
      BIZ_EXPDT_TSM DECIMAL(24,6) TITLE '营业支出_当月',
      INTR_NET_ENING_TSM DECIMAL(24,6) TITLE '利息净收入_当月',
      INVSMT_INCM_TSM DECIMAL(24,6) TITLE '投资收益_当月',
      SEC_BRK_BIZ_NET_ENING_TSM DECIMAL(24,6) TITLE '证券经纪业务净收入_当月',
      INVSMT_BNK_BIZ_NET_ENING_TSM DECIMAL(24,6) TITLE '投资银行业务净收入_当月',
      IC_BIZ_NET_ENING_TSM DECIMAL(24,6) TITLE '投资咨询业务净收入_当月',
      AM_BIZ_NET_ENING_TSM DECIMAL(24,6) TITLE '资产管理业务净收入_当月',
      END_VAL_NET_CAP_NAST DECIMAL(24,6) TITLE '期末值_净资本/净资产',
      ALT_STD_NET_CAP_NAST DECIMAL(24,6) TITLE '预警标准_净资本/净资产',
      SPVS_STD_NET_CAP_NAST DECIMAL(24,6) TITLE '监管标准_净资本/净资产',
      END_VAL_NET_CAP_LBLT DECIMAL(24,6) TITLE '期末值_净资本/负债',
      ALT_STD_NAST_LBLT DECIMAL(24,6) TITLE '预警标准_净资产/负债',
      SPVS_STD_NAST_LBLT DECIMAL(24,6) TITLE '监管标准_净资产/负债',
      END_VAL_RISK_COVER_RATE DECIMAL(24,6) TITLE '期末值_风险覆盖率',
      ALT_STD_RISK_COVER_RATE DECIMAL(24,6) TITLE '预警标准_风险覆盖率',
      SPVS_STD_RISK_COVER_RATE DECIMAL(24,6) TITLE '监管标准_风险覆盖率',
      FLUD_COVER_RATE DECIMAL(24,6) TITLE '流动性覆盖率(%)',
      NET_STAB_BANKRL_RATE DECIMAL(24,6) TITLE '净稳定资金率(%)',
      AVG_FINA_LVRG DECIMAL(24,6) TITLE '平均财务杠杆')
PRIMARY INDEX ( STAT_DATE ,SC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_DOM_IDX_INFO_TEXT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE nsPUBMart.MID_DOM_IDX_INFO_TEXT ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYY-MM-DD',
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      OPN_POINT DECIMAL(24,6),
      PRE_CLS_POINT DECIMAL(24,6),
      CLS_POINT DECIMAL(24,6),
      MAX_POINT DECIMAL(24,6),
      MIN_POINT DECIMAL(24,6),
      D_CHG_RATE DECIMAL(24,6),
      Y_CHG_RATE DECIMAL(24,6),
      RETN DECIMAL(24,6),
      TRAD_AMT DECIMAL(24,6),
      TRAD_QTT DECIMAL(24,6),
      TCAP DECIMAL(24,6),
      NEGT_CAP DECIMAL(24,6),
      TOT_MKT_VAL DECIMAL(24,6),
      NEGT_MKT_VAL DECIMAL(24,6),
      MKT_VAL_TNOV_RATE DECIMAL(24,6),
      TRAD_QTT_TNOV_RATE DECIMAL(24,6),
      AVG_STK_PRC DECIMAL(24,6),
      DATA_SRC_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC,
      educ_level CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( BIZ_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_STK_TRAD_BY_PPDM;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_STK_TRAD_BY_PPDM ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      STK_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股份类型' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      HDGS_CLSF VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '控股分类' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '监管辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,STK_TYPE ,LSTN_BORD ,
HDGS_CLSF ,SEC_EXCH_CDE ,REG_JUR ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_HKST_TRAD_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_HKST_TRAD_PSTN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      BIZ_INDC CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '业务标志' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券名称',
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别',
      BUY_VOL DECIMAL(24,6) TITLE '买入数量',
      SAL_VOL DECIMAL(24,6) TITLE '卖出数量',
      BUY_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '买入金额_原币',
      SAL_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '卖出金额_原币',
      BUY_AMT_RMB DECIMAL(24,6) TITLE '买入金额_人民币',
      SAL_AMT_RMB DECIMAL(24,6) TITLE '卖出金额_人民币',
      BUY_CNT DECIMAL(24,0) TITLE '买入笔数',
      SAL_CNT DECIMAL(24,0) TITLE '卖出笔数',
      PSTN_VOL DECIMAL(24,6) TITLE '持仓数量',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '持仓市值_原币',
      PSTN_MKT_VAL_RMB DECIMAL(24,6) TITLE '持仓市值_人民币')
PRIMARY INDEX ( STAT_DATE ,BIZ_INDC ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.FCT_STK_PLG_REPO_RATE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.FCT_STK_PLG_REPO_RATE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      Stat_Date DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      Rate_CLSF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '比例分类' NOT NULL,
      Rate_LLMT INTEGER TITLE '比例下限' NOT NULL,
      Rate_ULMT INTEGER TITLE '比例上限' NOT NULL,
      ST_RPCHS_AMT DECIMAL(24,6) TITLE '待购回金额',
      CNTR_CNT DECIMAL(24,0) TITLE '合约笔数',
      ACCT_VOL DECIMAL(24,0) TITLE '账户数')
PRIMARY INDEX ( Stat_Date ,Rate_CLSF ,Rate_LLMT ,Rate_ULMT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SMKT_STK_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SMKT_STK_PSTN_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      STK_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票类型',
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块',
      LIST_COMP_IC VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市公司行业分类',
      APLY_MYRD_IC VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '申万行业分类',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.SPE_INVST_ORG_NEW_CLSF;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.SPE_INVST_ORG_NEW_CLSF ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      OAP_ACCT_NBR CHAR(25) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '一码通账户号码',
      INVST_NAME CHAR(128) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '投资者名称',
      CLSF_3_NEW CHAR(3) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '三级分类（新）',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( OAP_ACCT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.COUN_CDE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.COUN_CDE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '代码' NOT NULL,
      THREE_ABBR VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '三位简称' NOT NULL,
      NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '名称' NOT NULL,
      CLSF_TYPE_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '分类类型代码' NOT NULL,
      CLSF_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '分类代码' NOT NULL,
      CLSF_DESC VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '分类描述' NOT NULL)
PRIMARY INDEX ( CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_EXCH_CDE ,ACCT_TYPE ,
STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_STK_MKT_CRDT_TRAD_AMT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_STK_MKT_CRDT_TRAD_AMT_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_CTG VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券类别' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_CTG ,INVST_SORT ,
SEC_EXCH_CDE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.FCT_NTWK_PRESS_IDX_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.FCT_NTWK_PRESS_IDX_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期',
      BIZ_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '业务类型',
      PRESS_FACTOR VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '压力因子',
      FACTOR_VAL VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '因子取值',
      BANKRL_ITP VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '资金融入方',
      BANKRL_RCP VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '资金融出方',
      BANKRL_RCP_OVRAL_LOAN_BANKRL DECIMAL(24,7) TITLE '资金融出方整体融出资金',
      PTY_BTWN_ST_RPCHS_AMT DECIMAL(24,7) TITLE '主体间待购回金额',
      PTY_BTWN_DPST_GAP DECIMAL(24,7) TITLE '主体间保证金缺口',
      BANKRL_RCP_OVRAL_DPST_GAP DECIMAL(24,7) TITLE '资金融出方整体保证金缺口')
PRIMARY INDEX ( BIZ_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CFG_FUTRS_VART_DSPLY_20170214;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CFG_FUTRS_VART_DSPLY_20170214 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      DSPLY_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '展示序号' NOT NULL,
      STD_CNTR_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '标准合约代码' NOT NULL,
      STD_CNTR_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '标准合约名称' NOT NULL,
      DSPLY_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '展示名称' NOT NULL,
      DSPLY_NAME_ENG VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '展示名称_英文' NOT NULL,
      UNIT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '单位' NOT NULL,
      FUTRS_EXCH_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货交易所代码' NOT NULL,
      FUTRS_EXCH_CHN_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货交易所中文名' NOT NULL,
      LIST_DATE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市日期' NOT NULL,
      DELS_DATE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '退市日期' NOT NULL,
      FUTRS_VART_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货品种序号' NOT NULL,
      FUTRS_VART_TYPE_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货品种类型代码' NOT NULL,
      FUTRS_VART_TYPE_CHN VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货品种类型_中文' NOT NULL,
      FUTRS_VART_TYPE_ENG VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货品种类型_英文' NOT NULL)
PRIMARY INDEX ( STD_CNTR_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SMKT_SEC_TRAD_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SMKT_SEC_TRAD_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      SEC_CTG VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券类别',
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块',
      LIST_COMP_IC VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市公司行业分类',
      APLY_MYRD_IC VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '申万行业分类',
      STK_ORETF_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票或ETF类型',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.test123;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE nsPUBMart.test123 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      t1 VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC,
      t2 INTEGER)
PRIMARY INDEX ( t1 );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_RIGHT_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_RIGHT_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '除权除息日' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '股权登记日' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票名称' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区代码' NOT NULL,
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区名称' NOT NULL,
      RIGHT_LIST_D DATE FORMAT 'YYYYMMDD' TITLE '配股上市日' NOT NULL,
      EQUITY_REG_D_CLS_PRC DECIMAL(24,6) TITLE '股权登记日收盘价' NOT NULL,
      RIGHT_PRC DECIMAL(24,6) TITLE '配股价' NOT NULL,
      EXR_PRC DECIMAL(24,6) TITLE '除权价' NOT NULL,
      RIGHT_RATE DECIMAL(18,2) TITLE '配股比例' NOT NULL)
PRIMARY INDEX ( EXR_EXD_D );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_STK_OPT_TRAD_PSTN_ACCT_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_STK_OPT_TRAD_PSTN_ACCT_VOL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      INVST_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类型' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,INVST_TYPE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_TB20161222;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_STK_OPT_TRAD_TB20161222 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期权合约产品代码' NOT NULL,
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      BUY_VOL_SUBSC DECIMAL(24,0) TITLE '认购买入数量' NOT NULL,
      SAL_VOL_SUBSC DECIMAL(24,0) TITLE '认购卖出数量' NOT NULL,
      BUY_VOL_PUT DECIMAL(24,0) TITLE '认沽买入数量' NOT NULL,
      SAL_VOL_PUT DECIMAL(24,0) TITLE '认沽卖出数量' NOT NULL,
      BUY_AMT_SUBSC DECIMAL(24,6) TITLE '认购买入金额' NOT NULL,
      SAL_AMT_SUBSC DECIMAL(24,6) TITLE '认购卖出金额' NOT NULL,
      BUY_AMT_PUT DECIMAL(24,6) TITLE '认沽买入金额' NOT NULL,
      SAL_AMT_PUT DECIMAL(24,6) TITLE '认沽卖出金额' NOT NULL,
      END_RIGHT_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '认购持权利仓数量' NOT NULL,
      END_OBLG_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '认购持义务仓数量' NOT NULL,
      END_RIGHT_PSTN_QTT_PUT DECIMAL(24,0) TITLE '认沽持权利仓数量' NOT NULL,
      END_OBLG_PSTN_QTT_PUT DECIMAL(24,0) TITLE '认沽持义务仓数量' NOT NULL)
PRIMARY INDEX ( STAT_DATE ,OPT_CNTR_PROD_CDE ,INVST_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.TDSUM_adm_region_info;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.TDSUM_adm_region_info ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      rgn_cd VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行政区代码' NOT NULL,
      rgn_name VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行政区名称' NOT NULL)
PRIMARY INDEX ( rgn_cd );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SEC_PSTN_M2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SEC_PSTN_M2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_M DATE FORMAT 'YYYYMMDD' TITLE '统计月份' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '银行标识' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别' NOT NULL,
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型' NOT NULL,
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券分类' NOT NULL,
      INVST_OPN_ACCT_PPDM CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者开户辖区' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '持仓数量',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '持仓市值_原币')
PRIMARY INDEX ( STAT_M ,SEC_CDE ,SEC_EXCH_CDE ,STK_INVST_SORT ,
BNK_ID ,SEC_ACCT_SORT ,CAP_TYPE ,SEC_CLSF ,INVST_OPN_ACCT_PPDM );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_SMKT_OACCT_STAT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_SMKT_OACCT_STAT_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_RIGHT_TB20161222;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_RIGHT_TB20161222 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '除权除息日' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '股权登记日' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票名称' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区代码' NOT NULL,
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '辖区名称' NOT NULL,
      RIGHT_LIST_D DATE FORMAT 'YYYYMMDD' TITLE '配股上市日' NOT NULL,
      EQUITY_REG_D_CLS_PRC DECIMAL(24,6) TITLE '股权登记日收盘价' NOT NULL,
      RIGHT_PRC DECIMAL(24,6) TITLE '配股价' NOT NULL,
      EXR_PRC DECIMAL(24,6) TITLE '除权价' NOT NULL,
      RIGHT_RATE DECIMAL(18,2) TITLE '配股比例' NOT NULL)
PRIMARY INDEX ( EXR_EXD_D );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_FUTRS_CNTR_TRAD_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_FUTRS_CNTR_TRAD_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      VART_CNTR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种合约' NOT NULL,
      VART_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种代码' NOT NULL,
      VART_CHN_NAME VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种中文名' NOT NULL,
      VART_SCND_CLSF VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种二级分类' NOT NULL,
      EXCH_NBR VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号' NOT NULL,
      FC_SETL_MEMB_NBR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货公司结算会员号' NOT NULL,
      FUTRS_INVST_SORT VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货投资者类别' NOT NULL,
      CRS_MGN_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '跨市场投资者类别' NOT NULL,
      TRAD_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '买卖标志' NOT NULL,
      KPWH_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '开平仓标志' NOT NULL,
      CRS_MGN_INVST_ID VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '跨市场投资者标识' NOT NULL,
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额' NOT NULL,
      TRAD_QTT DECIMAL(24,0) TITLE '成交量' NOT NULL)
PRIMARY INDEX ( VART_CNTR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.VT_TTAA;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.VT_TTAA ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD',
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      BUY_AMT DECIMAL(24,6),
      SAL_AMT DECIMAL(24,6),
      TRAD_AMT_FULL_MKT DECIMAL(24,6))
PRIMARY INDEX ( BIZ_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_UOPACCT_CDE_VOL_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_UOPACCT_CDE_VOL_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      VART_ONE_CLSF VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货类别',
      EXCH_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号',
      FUTRS_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货投资者类别',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.VT_022;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.VT_022 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      id CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC,
      age DECIMAL(18,2))
PRIMARY INDEX ( id );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_DVD2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_DVD2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '除权除息日' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '股权登记日',
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票名称',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      DIVD_ABBR VARCHAR(150) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '红利简称',
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '分红年度',
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '现金分红金额（税前）',
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '现金分红金额(税后)',
      DP_RATE_DENOM DECIMAL(24,4) TITLE '派息比例分母',
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '派息比例分子(税前)',
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '派息比例分子（税后）',
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '参与分红总股本',
      CRNC_CDE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '货币代码',
      MDL_PRC DECIMAL(24,6) TITLE '中间价')
PRIMARY INDEX ( EXR_EXD_D ,STK_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_STK_OPT_INVST_VOL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_STK_OPT_INVST_VOL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      INVST_TYPE CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类型' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE ,FREQ ,INVST_TYPE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_ACCT_A_MKT_VAL_BY_INVST2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_ACCT_A_MKT_VAL_BY_INVST2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,LSTN_BORD ,SEC_EXCH_CDE ,
STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_TRAD_AND_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_TRAD_AND_PSTN_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FUTRS_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货投资者类别',
      VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种代码',
      EXCH_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
PRIMARY INDEX ( STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_CINVST_SIFUTRS_ETF_TPSTNI;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_CINVST_SIFUTRS_ETF_TPSTNI ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种代码' NOT NULL,
      LSTN_BORD CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDSTR_CTGR_CDE DECIMAL(24,6) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,INVST_SORT ,SEC_EXCH_CDE ,
VART_CDE ,LSTN_BORD );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_COMP_CNT_CAP_MKT_VAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_COMP_CNT_CAP_MKT_VAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      STK_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股份类型' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行业分类' NOT NULL,
      HDGS_CLSF VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '控股分类' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '监管辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,STK_TYPE ,LSTN_BORD ,
IC ,HDGS_CLSF ,SEC_EXCH_CDE ,REG_JUR ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_SEC_CTG;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_SEC_CTG ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SEC_CTG_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券类别代码' NOT NULL,
      SEC_CTG_DESC VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券类别描述' NOT NULL)
PRIMARY INDEX ( SEC_CTG_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_OAP_ACCT_VOL2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_OAP_ACCT_VOL2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者开户辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,ACCT_TYPE ,STK_INVST_SORT ,
INVST_OPN_ACCT_PPDM ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INTN_IDX_INFO_20161216;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INTN_IDX_INFO_20161216 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数代码' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数名称',
      OPN_POINT DECIMAL(24,6) TITLE '开盘点数',
      CLS_POINT DECIMAL(24,6) TITLE '收盘点数',
      MAX_POINT DECIMAL(24,6) TITLE '最高点数',
      MIN_POINT DECIMAL(24,6) TITLE '最低点数',
      TRAD_QTT DECIMAL(24,6) TITLE '成交量',
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额',
      MKT_VAL DECIMAL(24,6) TITLE '市值',
      PE DECIMAL(24,6) TITLE '市盈率',
      PB DECIMAL(24,6) TITLE '市净率',
      DIVD_RATE DECIMAL(24,6) TITLE '股息率',
      RETN DECIMAL(24,6) TITLE '对数收益率',
      D_CHG_RATE DECIMAL(24,6) TITLE '日涨跌幅',
      W_CHG_RATE DECIMAL(24,6) TITLE '周涨跌幅',
      M_CHG_RATE DECIMAL(24,6) TITLE '月涨跌幅',
      Y_CHG_RATE DECIMAL(24,6) TITLE '年涨跌幅')
PRIMARY INDEX ( BIZ_DATE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_DOM_IDX_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_DOM_IDX_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数代码' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指数名称',
      OPN_POINT DECIMAL(24,6) TITLE '开盘点数',
      PRE_CLS_POINT DECIMAL(24,6) TITLE '前收盘点数',
      CLS_POINT DECIMAL(24,6) TITLE '收盘点数',
      MAX_POINT DECIMAL(24,6) TITLE '最高点数',
      MIN_POINT DECIMAL(24,6) TITLE '最低点数',
      D_CHG_RATE DECIMAL(24,6) TITLE '日涨跌幅',
      Y_CHG_RATE DECIMAL(24,6) TITLE '年涨跌幅',
      RETN DECIMAL(24,6) TITLE '对数收益率',
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额',
      TRAD_QTT DECIMAL(24,6) TITLE '成交量',
      TCAP DECIMAL(24,6) TITLE '总股本',
      NEGT_CAP DECIMAL(24,6) TITLE '流通股本',
      TOT_MKT_VAL DECIMAL(24,6) TITLE '总市值',
      NEGT_MKT_VAL DECIMAL(24,6) TITLE '流通市值',
      MKT_VAL_TNOV_RATE DECIMAL(24,6) TITLE '市值换手率',
      TRAD_QTT_TNOV_RATE DECIMAL(24,6) TITLE '成交量换手率',
      AVG_STK_PRC DECIMAL(24,6) TITLE '平均股价',
      DATA_SRC_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '数据源类型')
PRIMARY INDEX ( BIZ_DATE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.SPE_INVST_CLSF_NEW_ACCT_PSN_D;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.SPE_INVST_CLSF_NEW_ACCT_PSN_D ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '一码通账户号码',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户号',
      SEC_ACCT_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户名称',
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别',
      CLSF_1 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '一级分类',
      CLSF_2_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '二级分类（持股市值）',
      CLSF_3_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '三级分类（持股市值）',
      Cmsmc_CLSF_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '中证监测分类（持股市值）',
      END_HOLD_MKT_VAL_MAX DECIMAL(22,2) TITLE '期末持股市值最大值',
      END_HOLD_MKT_VAL_MAX_DATE DATE FORMAT 'YYYYMMDD' TITLE '期末持股市值最大值日期')
PRIMARY INDEX ( SEC_ACCT_NBR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '1990-01-01' AND '2050-12-31' EACH INTERVAL '1' DAY ,
 NO RANGE);


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_BOND_ISS_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_BOND_ISS_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      BOND_CLSF VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '债券分类' NOT NULL,
      RATE_TYPE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '利率类型' NOT NULL,
      ISSR_IDSTR_CTGR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '发行人行业（门类）' NOT NULL,
      ISSR_ESECTOR VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '发行人经济成分' NOT NULL,
      ISSR_REG_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '发行人注册辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,BOND_CLSF ,RATE_TYPE ,
ISSR_IDSTR_CTGR ,ISSR_ESECTOR ,ISSR_REG_PPDM ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_DVD3;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_DVD3 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '除权除息日' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '股权登记日',
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票名称',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      DIVD_ABBR VARCHAR(150) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '红利简称',
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '分红年度',
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '现金分红金额（税前）',
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '现金分红金额(税后)',
      DP_RATE_DENOM DECIMAL(24,4) TITLE '派息比例分母',
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '派息比例分子(税前)',
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '派息比例分子（税后）',
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '参与分红总股本',
      CRNC_CDE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '货币代码',
      MDL_PRC DECIMAL(24,6) TITLE '中间价')
PRIMARY INDEX ( EXR_EXD_D ,STK_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.TMID_STK_PLG_REPO_TRAD_SC;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.TMID_STK_PLG_REPO_TRAD_SC ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      SC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司名称',
      MANG_CLSF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '经营分类',
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '补充质押笔数',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '解除质押笔数',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '初始交易金额',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '初始交易笔数',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '购回交易金额',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '购回交易笔数',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '待购回初始交易金额',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '待购回证券数量',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '待购回证券市值',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '初始质押证券数量',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '初始质押证券市值')
PRIMARY INDEX ( BIZ_DATE ,SC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_EXCH_BOND_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_EXCH_BOND_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      ISS_B_DATE DATE FORMAT 'YYYYMMDD' TITLE '发行起始日期',
      BOND_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '债券代码' NOT NULL,
      BOND_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '债券名称',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      BOND_CLSF_MIDL_CERTF VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '债券分类_中证' NOT NULL,
      BOND_MKT_VAL DECIMAL(24,6) TITLE '债券市值',
      BOND_PAR_VAL DECIMAL(24,6) TITLE '债券面值',
      CNCTR_TRAD_PAR_VAL DECIMAL(24,6) TITLE '集中交易面值',
      CNCTR_TRAD_AMT DECIMAL(24,6) TITLE '集中交易金额',
      CNCTR_TRAD_CNT DECIMAL(24,0) TITLE '集中交易笔数')
PRIMARY INDEX ( STAT_DATE ,BOND_CDE ,SEC_EXCH_CDE ,BOND_CLSF_MIDL_CERTF );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_FMKT_CUSTE_DW_CNDT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_FMKT_CUSTE_DW_CNDT ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FUTRS_INVST_SORT VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货投资者类别' NOT NULL,
      CUST_WTHDR DECIMAL(24,6) TITLE '客户出金' NOT NULL,
      CUST_DPST DECIMAL(24,6) TITLE '客户入金' NOT NULL,
      CUST_BANKRL_EQUT DECIMAL(24,6) TITLE '客户资金权益' NOT NULL)
PRIMARY INDEX ( STAT_DATE ,FUTRS_INVST_SORT )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_IPO_ISS_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_IPO_ISS_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市板块' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '监管辖区' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,LSTN_BORD ,SEC_EXCH_CDE ,
REG_JUR ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_IPO_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_IPO_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SEC_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户' NOT NULL,
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所代码',
      OAP_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户',
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码',
      BD_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '中签代码',
      AFP_MODE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '申购方式',
      AFP_DATE DATE FORMAT 'YYYYMMDD' TITLE '申购日期',
      VLD_AFP_VOL DECIMAL(18,0) TITLE '有效申购数量',
      BD_DATE DATE FORMAT 'YYYYMMDD' TITLE '中签日期',
      BD_VOL DECIMAL(18,0) TITLE '中签数量')
PRIMARY INDEX ( SEC_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SEC_PSTN_OLD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SEC_PSTN_OLD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '银行标识' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别' NOT NULL,
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型' NOT NULL,
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券分类' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '持仓数量',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '持仓市值_原币')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE ,SEC_EXCH_CDE ,STK_INVST_SORT ,
BNK_ID ,SEC_ACCT_SORT ,CAP_TYPE ,SEC_CLSF );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.FCPTL_INVST_CLSF_TWO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.FCPTL_INVST_CLSF_TWO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      INVST_SORT_CDE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别编码' NOT NULL,
      INVST_SORT_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别名称' NOT NULL)
PRIMARY INDEX ( INVST_SORT_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.CDE_SPE_CDE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.CDE_SPE_CDE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      DIMN VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '维度' NOT NULL,
      DIMN_NAME VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '维度名' NOT NULL,
      CDE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '代码' NOT NULL,
      CODE_VAL VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '码值' NOT NULL)
PRIMARY INDEX ( DIMN );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_SPCL_INVST_TRAD_PSTN2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_SPCL_INVST_TRAD_PSTN2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券名称' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      CLSF_ANGLE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '分类角度' NOT NULL,
      INVST_TYPE CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类型' NOT NULL,
      BUY_VOL DECIMAL(24,6) TITLE '买入数量',
      SAL_VOL DECIMAL(24,6) TITLE '卖出数量',
      BUY_AMT DECIMAL(24,6) TITLE '买入金额',
      SAL_AMT DECIMAL(24,6) TITLE '卖出金额',
      BUY_CNT DECIMAL(24,0) TITLE '买入笔数',
      SAL_CNT DECIMAL(24,0) TITLE '卖出笔数',
      PSTN_VOL DECIMAL(24,6) TITLE '持仓数量',
      PSTN_NEGT_VOL DECIMAL(24,6) TITLE '持仓流通数量',
      PSTN_TOT_MKT_VAL DECIMAL(24,6) TITLE '持仓总市值',
      PSTN_NEGT_MKT_VAL DECIMAL(24,6) TITLE '持仓流通市值')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE ,SEC_NAME ,SEC_EXCH_CDE ,CLSF_ANGLE ,
INVST_TYPE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_FCPTL_CRMGN_INVST_SEC_TRAD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_FCPTL_CRMGN_INVST_SEC_TRAD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户号码' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户号' NOT NULL,
      SEC_EXCH_CDE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_CLSF VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券分类' NOT NULL,
      SEC_ACCT_SORT VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别' NOT NULL,
      FCPTL_INVST_ID VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者标识' NOT NULL,
      CRS_MGN_INVST_ID VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '跨市场投资者标识' NOT NULL,
      BUY_VOL DECIMAL(24,0) TITLE '买入数量' NOT NULL,
      BUY_AMT DECIMAL(24,6) TITLE '买入金额' NOT NULL,
      SAL_VOL DECIMAL(24,0) TITLE '卖出数量' NOT NULL,
      SAL_AMT DECIMAL(24,6) TITLE '卖出金额' NOT NULL,
      BUY_AMT_MKT_PRC DECIMAL(24,6) TITLE '买入金额_市价' NOT NULL,
      SAL_AMT_MKT_PRC DECIMAL(24,6) TITLE '卖出金额_市价' NOT NULL,
      BUY_CNT DECIMAL(24,0) TITLE '买入笔数' NOT NULL,
      SAL_CNT DECIMAL(24,0) TITLE '卖出笔数' NOT NULL,
      ETF_AFP_SHR DECIMAL(24,6) TITLE 'ETF申购份额' NOT NULL,
      ETF_REDEM_SHR DECIMAL(24,6) TITLE 'ETF赎回份额' NOT NULL)
PRIMARY INDEX ( OAP_ACCT_NBR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_DVD1103;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_DVD1103 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '除权除息日' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '股权登记日',
      STK_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '股票名称',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '证券交易所代码',
      DIVD_ABBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '红利简称',
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '分红年度',
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '现金分红金额（税前）',
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '现金分红金额(税后)',
      DP_RATE_DENOM DECIMAL(24,4) TITLE '派息比例分母',
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '派息比例分子(税前)',
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '派息比例分子（税后）',
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '参与分红总股本',
      CRNC_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '货币代码',
      MDL_PRC DECIMAL(24,6) TITLE '中间价')
PRIMARY INDEX ( EXR_EXD_D ,STK_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_ADV_NTC_MKT_VAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_ADV_NTC_MKT_VAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      TCAP DECIMAL(24,6) TITLE '总股本',
      NEGT_CAP DECIMAL(24,6) TITLE '流通股本',
      ADV_NTC_MKT_VAL DECIMAL(24,6) TITLE '预告市值',
      ADV_NTC_NEGT_MKT_VAL DECIMAL(24,6) TITLE '预告流通市值',
      TRAD_QTT DECIMAL(24,6) TITLE '成交量',
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额')
PRIMARY INDEX ( BIZ_DATE ,SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SEC_PSTN_M;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SEC_PSTN_M ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_M DATE FORMAT 'YYYYMMDD' TITLE '统计月份' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '银行标识' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别' NOT NULL,
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型' NOT NULL,
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券分类' NOT NULL,
      INVST_OPN_ACCT_PPDM CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者开户辖区' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '持仓数量',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '持仓市值_原币')
PRIMARY INDEX ( STAT_M ,SEC_CDE ,SEC_EXCH_CDE ,STK_INVST_SORT ,
BNK_ID ,SEC_ACCT_SORT ,CAP_TYPE ,SEC_CLSF ,INVST_OPN_ACCT_PPDM );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_EXCH_RT_INTR_RT_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_EXCH_RT_INTR_RT_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标代码',
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标名称',
      TYP CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '类型',
      IDX_VAL DECIMAL(10,7) TITLE '指标值')
PRIMARY INDEX ( BIZ_DATE ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_CINVSTETF_TRAD_PSTN_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_CINVSTETF_TRAD_PSTN_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE '指标值' NOT NULL)
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,INVST_SORT ,SEC_EXCH_CDE ,
IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SEC_BANKRL_TRAD_BAL3;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SEC_BANKRL_TRAD_BAL3 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司代码' NOT NULL,
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '投资者类别' NOT NULL,
      BANKRL_SORT CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '资金类别' NOT NULL,
      STC_AMT DECIMAL(24,6) TITLE '银转证金额',
      CTS_AMT DECIMAL(24,6) TITLE '证转银金额',
      SETL_BANKRL_BAL DECIMAL(24,6) TITLE '结算资金余额')
PRIMARY INDEX ( STAT_DATE ,SC_CDE ,INVST_SORT ,BANKRL_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_FINVST_OAP_ACCT_STAT_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_FINVST_OAP_ACCT_STAT_IDX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资投资者类别（国别）3',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码',
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,FCPTL_INVST_SORT1 ,FCPTL_INVST_SORT2 ,
FCPTL_INVST_SORT3 ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL_Y2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.KPI_SEC_TRAD_HOLD_ACCT_VOL_Y2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '频度' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户类型' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE '指标值')
UNIQUE PRIMARY INDEX ( STAT_DATE ,FREQ ,SEC_EXCH_CDE ,ACCT_TYPE ,
STK_INVST_SORT ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_FUTRS_CNTR_PSTN_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_FUTRS_CNTR_PSTN_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      VART_CNTR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种合约' NOT NULL,
      VART_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种代码' NOT NULL,
      VART_CHN_NAME VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种中文名' NOT NULL,
      VART_SCND_CLSF VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种二级分类' NOT NULL,
      EXCH_NBR VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号' NOT NULL,
      FC_SETL_MEMB_NBR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货公司结算会员号' NOT NULL,
      FUTRS_INVST_SORT VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货投资者类别' NOT NULL,
      CRS_MGN_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '跨市场投资者类别' NOT NULL,
      TRAD_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '买卖标志' NOT NULL,
      CRS_MGN_INVST_ID VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '跨市场投资者标识' NOT NULL,
      PSTN_AMT DECIMAL(24,6) TITLE '持仓金额' NOT NULL,
      PSTN_QTT DECIMAL(24,0) TITLE '持仓量' NOT NULL,
      TRAD_DPST DECIMAL(24,6) TITLE '交易保证金' NOT NULL)
PRIMARY INDEX ( VART_CNTR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_PLG_REPO_TRAD_INVST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_PLG_REPO_TRAD_INVST ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE '业务日期' NOT NULL,
      STK_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      STK_INVST_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者名称',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '补充质押笔数',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '解除质押笔数',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '初始交易金额',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '初始交易笔数',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '购回交易金额',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '购回交易笔数',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '待购回初始交易金额',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '待购回证券数量',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '待购回证券市值',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '初始质押证券数量',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '初始质押证券市值')
PRIMARY INDEX ( BIZ_DATE ,STK_INVST_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_INVST_SEC_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_INVST_SEC_PSTN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票投资者类别' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '银行标识' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别' NOT NULL,
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型' NOT NULL,
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券分类' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '持仓数量',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '持仓市值_原币')
PRIMARY INDEX ( STAT_DATE ,SEC_CDE ,SEC_EXCH_CDE ,STK_INVST_SORT ,
BNK_ID ,SEC_ACCT_SORT ,CAP_TYPE ,SEC_CLSF );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPUBMart.MID_STK_DVD1028;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPUBMart.MID_STK_DVD1028 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '除权除息日' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '股权登记日',
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股票代码' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码',
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '分红年度' NOT NULL,
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '现金分红金额（税前）',
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '现金分红金额(税后)',
      DP_RATE_DENOM DECIMAL(24,4) TITLE '派息比例分母',
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '派息比例分子(税前)',
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '派息比例分子（税后）',
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '参与分红总股本',
      CRNC_CDE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '货币代码',
      MDL_PRC DECIMAL(24,6) TITLE '中间价')
PRIMARY INDEX ( EXR_EXD_D ,STK_CDE ,DVD_YEARLY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-


.quit
 *** You are now logged off from the DBC.
 *** Exiting BTEQ...
 *** RC (return code) = 0 
