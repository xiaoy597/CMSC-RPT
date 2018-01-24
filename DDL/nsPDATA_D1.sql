BTEQ 15.00.00.00 Wed Jan 17 10:42:31 2018 PID: 28768
 
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



SHOW TABLE nsPDATA_D1.PRD_COUN_MAR_PRO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_COUN_MAR_PRO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      PD_FLAG VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '频度标志' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID_20170818;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID_20170818 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL GENERATED ALWAYS AS IDENTITY
           (START WITH 100000000000 
            INCREMENT BY 1 
            MINVALUE -999999999999 
            MAXVALUE 999999999999 
            NO CYCLE),
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( CERT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PLA_ACCT_PL_TEMP_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PLA_ACCT_PL_TEMP_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '一码通账号' NOT NULL,
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别' NOT NULL,
      SHDR_ACCT CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户' NOT NULL,
      SEC_CODE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '证券代码' NOT NULL,
      S_Date DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      HOLD_VOL DECIMAL(18,0) TITLE '持股数量',
      TDY_PRICE DECIMAL(18,6) TITLE '市值价格',
      INVST_AMT DECIMAL(18,2) TITLE '投入金额',
      profit_loss DECIMAL(18,2) TITLE '盈亏',
      E_Date DATE FORMAT 'YYYYMMDD' TITLE '结束日期',
      use_name VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '操作员' NOT NULL,
      timestemp TIMESTAMP(6) TITLE '操作时间')
PRIMARY INDEX ( OAP_ACCT_NBR ,SHDR_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.ACT_ABNO_ACCT_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.ACT_ABNO_ACCT_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户号' NOT NULL,
      ABNO_RESN VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '异常原因' NOT NULL,
      MTN_DATE DATE FORMAT 'YYYYMMDD' TITLE '维护日期' NOT NULL)
PRIMARY INDEX ( SEC_ACCT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_170918;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_170918 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '角色类型代码' NOT NULL,
      ROLE_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '角色ID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '身份匹配度代码' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '状态' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( ROLE_TYPE_CDE ,ROLE_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_CONV_MAPN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_CONV_MAPN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '源表编号' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源表英文名' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码英文名' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码值' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码描述' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '代码英文名' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '有效标志' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '主题域' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( SRC_TB_ENAME ,SRC_CDE_ENAME ,SRC_CDE_VAL ,SRC_CDE_DESC );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_CONV_MAPN_170921;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_CONV_MAPN_170921 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '源表编号' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源表英文名' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码英文名' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码值' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码描述' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '代码英文名' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '有效标志' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '主题域' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( SRC_TB_ENAME ,SRC_CDE_ENAME ,SRC_CDE_VAL ,SRC_CDE_DESC );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.FIN_CASH_FLOW_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.FIN_CASH_FLOW_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ACONT_PTY_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '主体代码' NOT NULL,
      RPT_DATE DATE FORMAT 'YYYYMMDD' TITLE '报表日期' NOT NULL,
      ACONT_YEARLY VARCHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '会计年度' NOT NULL,
      IDX_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '指标编码' NOT NULL,
      RPT_FRQU_TYPE VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '报表频率代码' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_TYPE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类型' NOT NULL,
      CERT_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      START_BAL DECIMAL(22,4) TITLE '期初余额' NOT NULL,
      END_BAL DECIMAL(22,4) TITLE '期末余额' NOT NULL,
      MERG_RPT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '合并报表标识' NOT NULL,
      AUDIT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '审计标识' NOT NULL,
      RSRV_FLD1 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段1' NOT NULL,
      RSRV_FLD2 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段2' NOT NULL,
      RSRV_FLD3 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段3' NOT NULL,
      DATA_SRC_TB_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '数据源表名称' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( ACONT_PTY_CDE ,ACONT_YEARLY ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.FIN_PRFT_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.FIN_PRFT_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ACONT_PTY_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '主体代码' NOT NULL,
      RPT_DATE DATE FORMAT 'YYYYMMDD' TITLE '报表日期' NOT NULL,
      ACONT_YEARLY VARCHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '会计年度' NOT NULL,
      IDX_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '指标编码' NOT NULL,
      RPT_FRQU_TYPE VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '报表频率代码' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_TYPE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类型' NOT NULL,
      CERT_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      START_BAL DECIMAL(22,4) TITLE '期初余额' NOT NULL,
      END_BAL DECIMAL(22,4) TITLE '期末余额' NOT NULL,
      MERG_RPT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '合并报表标识' NOT NULL,
      AUDIT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '审计标识' NOT NULL,
      RSRV_FLD1 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段1' NOT NULL,
      RSRV_FLD2 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段2' NOT NULL,
      RSRV_FLD3 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段3' NOT NULL,
      DATA_SRC_TB_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '数据源表名称' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( ACONT_PTY_CDE ,ACONT_YEARLY ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.ACT_SEC_HOLD_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.ACT_SEC_HOLD_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别' NOT NULL,
      SEC_ACCT_NBR VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户号' NOT NULL,
      CSTD_UNIT_ID CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '托管单元标识' NOT NULL,
      SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '证券代码' NOT NULL,
      CAP_TYPE CHAR(5) CHARACTER SET LATIN CASESPECIFIC TITLE '股本类型' NOT NULL,
      TD_END_HOLD_VOL DECIMAL(18,0) TITLE '日终持有数量',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( SEC_ACCT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_20170818;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_20170818 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '角色类型代码' NOT NULL,
      ROLE_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '角色ID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '身份匹配度代码' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '状态' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( ROLE_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_CONV_MAPN_20170802_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_CONV_MAPN_20170802_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '源表编号' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源表英文名' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码英文名' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码值' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码描述' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '代码英文名' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '有效标志' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( SRC_TB_ENAME ,SRC_CDE_ENAME ,SRC_CDE_VAL );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_CONV_MAPN_20170808;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_CONV_MAPN_20170808 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '源表编号' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源表英文名' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码英文名' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码值' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码描述' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '代码英文名' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '有效标志' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( SRC_TB_ENAME ,SRC_CDE_ENAME ,SRC_CDE_VAL );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_20170818;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_20170818 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( CERT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PLA_ACCT_PL_TEMP;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PLA_ACCT_PL_TEMP ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '一码通账号' NOT NULL,
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别' NOT NULL,
      SHDR_ACCT CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户' NOT NULL,
      SEC_CODE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '证券代码' NOT NULL,
      HOLD_VOL DECIMAL(18,0) TITLE '持股数量',
      TDY_PRICE DECIMAL(18,6) TITLE '市值价格',
      INVST_AMT DECIMAL(18,2) TITLE '投入金额',
      profit_loss DECIMAL(18,2) TITLE '盈亏')
PRIMARY INDEX ( OAP_ACCT_NBR ,SHDR_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.FIN_RPT_FRQU;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.FIN_RPT_FRQU ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      RPT_FRQU_TYPE_CDE VARCHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '报表频率代码' NOT NULL,
      RPT_FRQU_TYPE_DESC VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '报表频率描述' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( RPT_FRQU_TYPE_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PLA_ACCT_PL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PLA_ACCT_PL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      MKT_Type CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别' NOT NULL,
      SEC_ACCT CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户' NOT NULL,
      SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '证券代码' NOT NULL,
      HLD_VOL DECIMAL(18,0) TITLE '持股数量',
      INVST_AMT DECIMAL(18,2) TITLE '投入金额')
PRIMARY INDEX ( SEC_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.employee;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE nsPDATA_D1.employee ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      empid INTEGER,
      deptid INTEGER,
      salary DECIMAL(10,2))
PRIMARY INDEX ( empid );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.FIN_DX_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.FIN_DX_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDX_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '指标编码' NOT NULL,
      IDX_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '指标名称' NOT NULL,
      FINA_STD_ID CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '财标标识' NOT NULL,
      IDX_CLBR_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '指标口径描述' NOT NULL,
      EFCTV_DATE DATE FORMAT 'YYYYMMDD' TITLE '生效日期' NOT NULL,
      INVL_DATE DATE FORMAT 'YYYYMMDD' TITLE '失效日期' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.tmpcll_fin;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.tmpcll_fin ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ACONT_PTY_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '主体代码' NOT NULL,
      RPT_DATE DATE FORMAT 'YYYYMMDD' TITLE '报表日期' NOT NULL,
      ACONT_YEARLY VARCHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '会计年度' NOT NULL,
      IDX_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '指标编码' NOT NULL,
      RPT_FRQU_TYPE VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '报表频率代码' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_TYPE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类型' NOT NULL,
      CERT_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      START_BAL DECIMAL(22,4) TITLE '期初余额' NOT NULL,
      END_BAL DECIMAL(22,4) TITLE '期末余额' NOT NULL,
      MERG_RPT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '合并报表标识' NOT NULL,
      AUDIT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '审计标识' NOT NULL,
      RSRV_FLD1 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段1' NOT NULL,
      RSRV_FLD2 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段2' NOT NULL,
      RSRV_FLD3 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段3' NOT NULL,
      DATA_SRC_TB_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '数据源表名称' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( ACONT_PTY_CDE ,ACONT_YEARLY ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.test;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE nsPDATA_D1.test ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      sec_cde VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC,
      name VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC,
      s_date DATE FORMAT 'YYYYMMDD',
      E_DATE DATE FORMAT 'YYYYMMDD')
PRIMARY INDEX ( sec_cde );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID_161125;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID_161125 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识',
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称',
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码',
      CERT_NBR VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码',
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( CERT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL GENERATED ALWAYS AS IDENTITY
           (START WITH 100000000000 
            INCREMENT BY 1 
            MINVALUE -999999999999 
            MAXVALUE 999999999999 
            NO CYCLE),
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( IDNTF_INFO_UNIQ_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_INFO_CODE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_INFO_CODE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      VART_CDE_SORT VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码类别' NOT NULL,
      VART_CDE_SORT_NAME VARCHAR(80) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码类别名称' NOT NULL,
      VART_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码值' NOT NULL,
      VART_CDE_DESC VARCHAR(80) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码描述' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( VART_CDE_SORT ,VART_CDE_VAL );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID_170105;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID_170105 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL GENERATED ALWAYS AS IDENTITY
           (START WITH 100000000000 
            INCREMENT BY 1 
            MINVALUE -999999999999 
            MAXVALUE 999999999999 
            NO CYCLE),
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( CERT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_RELATION;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_RELATION ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      RLTN_VART_EXCH_CDE CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '关系品种交易所代码' NOT NULL,
      RLTN_VART_CDE CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '关系品种代码' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE ,RLTN_VART_EXCH_CDE ,
RLTN_VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_FUNDS_SPE_ACC;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_FUNDS_SPE_ACC ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      SPC_ACCT_TYPE VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '专户类型' NOT NULL,
      CNTR_FLNG_DATE VARCHAR(600) CHARACTER SET LATIN CASESPECIFIC TITLE '合同备案日期' NOT NULL,
      CNTR_EFCTV_DATE VARCHAR(600) CHARACTER SET LATIN CASESPECIFIC TITLE '合同生效日期' NOT NULL,
      CNTR_TLMT VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '合同期限' NOT NULL,
      SPVSR VARCHAR(800) CHARACTER SET LATIN CASESPECIFIC TITLE '管理人' NOT NULL,
      CSTD_PSN VARCHAR(800) CHARACTER SET LATIN CASESPECIFIC TITLE '托管人' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PSN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PSN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PSN_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '个人标识' NOT NULL,
      NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '姓名' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      GND_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '性别代码' NOT NULL,
      BORN_DATE DATE FORMAT 'YYYYMMDD' TITLE '出生日期' NOT NULL,
      NTLT VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '国籍' NOT NULL,
      DUTY VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '职务' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '通信地址' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '邮政编码' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '联系电话' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '手机号码' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '电子邮箱' NOT NULL,
      PLTC_FACE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '政治面貌代码' NOT NULL,
      OCCU_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '职业代码' NOT NULL,
      NATION_CDE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '民族代码' NOT NULL,
      EDU_LVL_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '教育程度代码' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '境内外标志' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '数据来源表' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( PSN_ID ,DATA_SRC_TB );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.ACT_STK_FORN_INVST_CLSF_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.ACT_STK_FORN_INVST_CLSF_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户号码' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户号' NOT NULL,
      SEC_ACCT_NAME VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户名称' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_ACCT_SORT VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券账户类别' NOT NULL,
      FCPTL_SCND_CLSF VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资二级分类' NOT NULL,
      COUN_CDE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '国家代码' NOT NULL,
      PS_NORG_ID VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '个人机构标识' NOT NULL,
      OAP_SEC_ACCT_STS VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通证券账户状态' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( OAP_ACCT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.ACT_SEC_HOLD_HIS111;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.ACT_SEC_HOLD_HIS111 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别' NOT NULL,
      SEC_ACCT_NBR VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户号' NOT NULL,
      CSTD_UNIT_ID CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '托管单元标识' NOT NULL,
      SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '证券代码' NOT NULL,
      CAP_TYPE CHAR(5) CHARACTER SET LATIN CASESPECIFIC TITLE '股本类型' NOT NULL,
      TD_END_HOLD_VOL DECIMAL(18,0) TITLE '日终持有数量',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( SEC_ACCT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PSN_170918;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PSN_170918 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PSN_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '个人标识' NOT NULL,
      NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '姓名' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      GND_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '性别代码' NOT NULL,
      BORN_DATE DATE FORMAT 'YYYYMMDD' TITLE '出生日期' NOT NULL,
      NTLT VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '国籍' NOT NULL,
      DUTY VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '职务' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '通信地址' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '邮政编码' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '联系电话' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '手机号码' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '电子邮箱' NOT NULL,
      PLTC_FACE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '政治面貌代码' NOT NULL,
      OCCU_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '职业代码' NOT NULL,
      NATION_CDE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '民族代码' NOT NULL,
      EDU_LVL_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '教育程度代码' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '境内外标志' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '数据来源表' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( PSN_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_170921;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_170921 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( PTY_ID ,PTY_SORT_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '角色类型代码' NOT NULL,
      ROLE_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '角色ID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '身份匹配度代码' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '状态' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( ROLE_TYPE_CDE ,ROLE_ID ,IDNTF_INFO_UNIQ_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_FIN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_FIN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CDE_SORT VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '代码类别' NOT NULL,
      CDE_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '代码名称' NOT NULL,
      CDE_VAL VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( CDE_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_PUB_FUNDS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_PUB_FUNDS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      FUND_PAR_VAL DECIMAL(9,2) TITLE '基金面值' NOT NULL,
      ISSR_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '发行人标识' NOT NULL,
      FUND_OAT_MODE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '基金运作方式代码' NOT NULL,
      GRD_FUND_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '分级基金类别代码' NOT NULL,
      ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '发行日期' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( PTY_ID ,PTY_SORT_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_170105;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_170105 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( CERT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_STK_BSC_INFO_HIS_bak;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_STK_BSC_INFO_HIS_bak ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STK_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '股票名称',
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证券交易所代码',
      LSTN_BORD VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '上市板块',
      SEC_CTG VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '证券类别',
      IF_ISS_PRIO_STK CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '是否发行优先股',
      STK_PAR_VAL DECIMAL(24,6) TITLE '股票面值',
      ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '发行日期',
      LIST_DATE DATE FORMAT 'YYYYMMDD' TITLE '上市日期',
      DLST_DATE DATE FORMAT 'YYYYMMDD' TITLE '摘牌日期',
      CRNC_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '币种代码',
      ISSR_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '发行人标识',
      COMP_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '公司ID',
      WDI_SEC_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '万得证券ID',
      STK_REG_STS VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '股票登记状态',
      STK_STS VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '股票状态',
      RISK_ALT_INDC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '风险警示标志',
      IDSTR_CTGR_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '行业门类代码',
      IDSTR_CTGR_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '行业门类名称',
      IDSTR_CLASS_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '行业大类代码',
      IDSTR_CLASS_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '行业大类名称',
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '辖区代码',
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '辖区名称',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( STK_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_FUND;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_FUND ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      CLCT_MODE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '募集方式代码' NOT NULL,
      FUND_TYPE_CDE VARCHAR(18) CHARACTER SET LATIN CASESPECIFIC TITLE '基金类型代码' NOT NULL,
      FUND_SPVSR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '基金管理人' NOT NULL,
      CSTD_PSN VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '托管人' NOT NULL,
      PD_FLAG VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '频度标志' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.TRD_STOCK_PLG_REPO_CL_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.TRD_STOCK_PLG_REPO_CL_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      MKT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '市场',
      CNTR_NBR_NBR VARCHAR(22) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '合同编号／编号',
      ITP_SEC_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '融入方证券账户',
      RCP_SEC_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '融出方证券账户',
      PLG_A_SHR_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '质押A股代码',
      STK_CHRC VARCHAR(14) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股份性质',
      INIT_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '初始交易日期',
      PLG_VOL DECIMAL(18,0) TITLE '质押数量',
      INIT_TRAD_AMT DECIMAL(18,2) TITLE '初始交易金额',
      RPCHS_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '购回交易日期',
      RPCHS_TRAD_AMT DECIMAL(18,2) TITLE '购回交易金额',
      RMAK VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '备注',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( MKT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_161125;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_161125 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PTY_ID VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( CERT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_170105;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_170105 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '角色类型代码' NOT NULL,
      ROLE_ID VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '角色ID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '身份匹配度代码' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '状态' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( ROLE_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PLA_ACCT_PL_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PLA_ACCT_PL_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      MKT_Type CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别' NOT NULL,
      SEC_ACCT CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户' NOT NULL,
      SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '证券代码' NOT NULL,
      S_Date DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      HLD_VOL DECIMAL(18,0) TITLE '持股数量',
      INVST_AMT DECIMAL(18,2) TITLE '投入金额',
      E_Date DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( SEC_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_PTY;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_PTY ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CDE_SORT VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '代码类别' NOT NULL,
      CDE_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '代码名称' NOT NULL,
      CDE_VAL VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( CDE_SORT ,CDE_VAL );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.FIN_ASET_LBLT_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.FIN_ASET_LBLT_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ACONT_PTY_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '主体代码' NOT NULL,
      RPT_DATE DATE FORMAT 'YYYYMMDD' TITLE '报表日期' NOT NULL,
      ACONT_YEARLY VARCHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '会计年度' NOT NULL,
      IDX_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '指标编码' NOT NULL,
      RPT_FRQU_TYPE VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '报表频率代码' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_TYPE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类型' NOT NULL,
      CERT_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      START_BAL DECIMAL(22,4) TITLE '期初余额' NOT NULL,
      END_BAL DECIMAL(22,4) TITLE '期末余额' NOT NULL,
      MERG_RPT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '合并报表标识' NOT NULL,
      AUDIT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '审计标识' NOT NULL,
      RSRV_FLD1 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段1' NOT NULL,
      RSRV_FLD2 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段2' NOT NULL,
      RSRV_FLD3 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '预留字段3' NOT NULL,
      DATA_SRC_TB_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '数据源表名称' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( ACONT_PTY_CDE ,ACONT_YEARLY ,IDX_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.ACT_FUTRS_INVST_CLSF_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.ACT_FUTRS_INVST_CLSF_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      EXCH_CUST_CDE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所客户编码',
      EXCH_NBR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号',
      FC_MEMB_NBR VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货公司会员号',
      FUTRS_UNFY_OPN_ACCT_CUST_CDE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货统一开户客户编码',
      FC_UNFY_CDE VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货公司统一编码',
      INSD_BANKRL_ACCT VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '内部资金账户',
      COUN_CDE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '国家代码',
      PSN_ORG_ID VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '个人机构标识',
      FUTRS_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '期货投资者类别',
      FCPTL_SCND_CLSF VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '外资二级分类',
      ACCT_STS VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '账户状态',
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户号码',
      OAP_ACCT_STS_VLD_INDC VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '一码通账户状态有效标志',
      CRS_MGN_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '跨市场投资者类别',
      CORLT_RLTN_IF_CFRM VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '关联关系是否确认',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( FUTRS_UNFY_OPN_ACCT_CUST_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.ACT_STK_PLG_TRAD_DTL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE nsPDATA_D1.ACT_STK_PLG_TRAD_DTL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '交易日期',
      TRAD_ODR_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易订单编号/合同编号',
      INIT_TRAD_ODR_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '初始交易订单编号/合同编号',
      MKT_TYPE VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '市场类型',
      BIZ_TYPE VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '业务类型',
      CAP_TYPE VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股本类型',
      ITP_SHDR_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '融入方股东账户',
      RCP_SHDR_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '融出方股东账户',
      RCP_TRAD_UNIT VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '融出方交易单元/席位',
      SC_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券公司',
      PLG_SEC_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '质押证券代码',
      TRAD_VOL DECIMAL(24,0) TITLE '成交数量',
      TRAD_AMT DECIMAL(24,6) TITLE '成交金额')
PRIMARY INDEX ( TRAD_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.tj_test;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE nsPDATA_D1.tj_test ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      id NUMBER,
      nam VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC,
      age NUMBER)
PRIMARY INDEX ( id );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_STOCK_20170801;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_STOCK_20170801 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      STK_PAR_VAL DECIMAL(15,8) TITLE '股票面值' NOT NULL,
      PER_LOT_TRAD_VOL DECIMAL(18,0) TITLE '每手交易数量' NOT NULL,
      IDSTR_SORT_CDE VARCHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '行业类别代码' NOT NULL,
      FRT_ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '首次发行日期' NOT NULL,
      SPCL_PRCS_INDC VARCHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '特别处理标志' NOT NULL,
      SPL_PRCS_INDC VARCHAR(18) CHARACTER SET LATIN CASESPECIFIC TITLE '特殊处理标志' NOT NULL,
      MKT_LVL_CDE CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '市场层次代码' NOT NULL,
      ISSR_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '发行人标识' NOT NULL,
      ENG_FNAME VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '英文全称' NOT NULL,
      MAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '到期日期' NOT NULL,
      CRNC_UNIT CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '货币单位' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_CONV_MAPN_170830_1;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_CONV_MAPN_170830_1 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '源表编号' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源表英文名' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码英文名' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码值' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码描述' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '代码英文名' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '有效标志' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '主题域' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( SRC_TB_ENAME ,SRC_CDE_ENAME ,SRC_CDE_VAL );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.ACT_STK_INVST_CLSF_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.ACT_STK_INVST_CLSF_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '一码通账户号码',
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户号' NOT NULL,
      SEC_ACCT_NAME VARCHAR(120) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户名称',
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户类别',
      CLSF_1 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '一级分类',
      CLSF_2 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '二级分类',
      CLSF_3 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '三级分类',
      CMSMC_CLSF CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '中证监测分类',
      CLSF_2_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '二级分类（年龄）',
      CLSF_3_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '三级分类（年龄）',
      BNK_ID CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '银行标识',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( SEC_ACCT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_161125_1;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_161125_1 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( CERT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.SDC_LIST_COMP_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.SDC_LIST_COMP_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      list_comp_cd CHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市公司代码',
      list_comp_name CHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市公司全称',
      list_comp_init CHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '上市公司简称',
      A_sec_cd CHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'A股证券代码',
      A_sec_name CHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'A股证券名称',
      B_sec_cd CHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'B股证券代码',
      B_sec_name CHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'B股证券名称',
      regi_region_cd CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '注册地区代码',
      regu_region_cd CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '所属监管辖区代码',
      regi_address CHAR(256) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '注册地址',
      exc CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所',
      data_date DATE FORMAT 'YYYYMMDD' TITLE '数据日期')
PRIMARY INDEX ( list_comp_cd ,exc );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_PRODUCT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_PRODUCT ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      VART_NAME VARCHAR(800) CHARACTER SET LATIN CASESPECIFIC TITLE '品种名称' NOT NULL,
      VART_ABBR VARCHAR(2000) CHARACTER SET LATIN CASESPECIFIC TITLE '品种简称' NOT NULL,
      VART_SORT_CDE VARCHAR(3000) CHARACTER SET LATIN CASESPECIFIC TITLE '品种类别代码' NOT NULL,
      VART_STS_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '品种状态代码' NOT NULL,
      ISI_N_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE 'ISIN编码' NOT NULL,
      CRNC_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '币种代码' NOT NULL,
      LIST_DATE VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '上市日期' NOT NULL,
      DLST_DATE VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '摘牌日期' NOT NULL,
      RMAK VARCHAR(4000) CHARACTER SET LATIN CASESPECIFIC TITLE '备注' NOT NULL,
      PD_FLAG VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '频度标志' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_FUTURES_ACC_MAN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_FUTURES_ACC_MAN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      SET_UP_DATE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '成立日期' NOT NULL,
      MAT_DATE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '到期日期' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PROD;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PROD ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PROD_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '产品标识' NOT NULL,
      PROD_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '产品全称' NOT NULL,
      PROD_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '产品简称' NOT NULL,
      ENG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '英文全称' NOT NULL,
      ENG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '英文简称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      GND_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '性别代码' NOT NULL,
      BORN_DATE DATE FORMAT 'YYYYMMDD' TITLE '出生日期' NOT NULL,
      ORG_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '组织机构代码' NOT NULL,
      BIZ_LIC_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '营业执照号' NOT NULL,
      UNFY_SCTY_CRDT_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '统一社会信用代码' NOT NULL,
      BIZ_REG_REG_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '工商注册登记号' NOT NULL,
      CORP_REP VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表' NOT NULL,
      CORP_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '法人类别代码' NOT NULL,
      CORP_REP_CERT_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表证件类型代码' NOT NULL,
      CORP_REP_CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表证件号码' NOT NULL,
      REG_CAP_CRNC_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '注册资本币种代码' NOT NULL,
      REG_CAP DECIMAL(38,4) TITLE '注册资本' NOT NULL,
      REG_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '注册地址' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '通信地址' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '邮政编码' NOT NULL,
      CNTC_PSN VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '联系人' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '联系电话' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '手机号码' NOT NULL,
      FAX_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '传真号码' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '电子邮箱' NOT NULL,
      MANG_RANG VARCHAR(4000) CHARACTER SET LATIN CASESPECIFIC TITLE '经营范围' NOT NULL,
      UNIT_CHRC_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '单位性质代码' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '境内外标志' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '数据来源表' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( PROD_ID ,PROD_FNAME ,CERT_NBR ,DATA_SRC_TB );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_STK_BSC_INFO_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_STK_BSC_INFO_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STK_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '股票名称',
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证券交易所代码',
      LSTN_BORD VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '上市板块',
      SEC_CTG VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '证券类别',
      IF_ISS_PRIO_STK CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '是否发行优先股',
      STK_PAR_VAL DECIMAL(24,6) TITLE '股票面值',
      ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '发行日期',
      LIST_DATE DATE FORMAT 'YYYYMMDD' TITLE '上市日期',
      DLST_DATE DATE FORMAT 'YYYYMMDD' TITLE '摘牌日期',
      CRNC_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '币种代码',
      ISSR_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '发行人标识',
      COMP_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '公司ID',
      WDI_SEC_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '万得证券ID',
      STK_REG_STS VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '股票登记状态',
      STK_STS VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '股票状态',
      RISK_ALT_INDC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '风险警示标志',
      IDSTR_CTGR_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '行业门类代码',
      IDSTR_CTGR_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '行业门类名称',
      IDSTR_CLASS_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '行业大类代码',
      IDSTR_CLASS_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '行业大类名称',
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '辖区代码',
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '辖区名称',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( STK_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_EXPONENT;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_EXPONENT ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      WETN_MODE_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '加权方式代码' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( VART_CDE ,TRAD_PLAC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_STOCK_PLG_REPO_GB_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_STOCK_PLG_REPO_GB_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      MKT_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '市场类型',
      SEC_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码',
      SEC_NAME VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券简称',
      NEGT_TYPE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '流通类型',
      CAP_VOL DECIMAL(18,0) TITLE '股本数量',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始时间',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束时间')
PRIMARY INDEX ( MKT_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_ORG_170918;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_ORG_170918 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ORG_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '机构标识' NOT NULL,
      ORG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '机构全称' NOT NULL,
      ORG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '机构简称' NOT NULL,
      ENG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '英文全称' NOT NULL,
      ENG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '英文简称' NOT NULL,
      IDSTR_SORT_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '行业类别代码' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      ORG_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '组织机构代码' NOT NULL,
      BIZ_LIC_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '营业执照号' NOT NULL,
      UNFY_SCTY_CRDT_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '统一社会信用代码' NOT NULL,
      BIZ_REG_REG_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '工商注册登记号' NOT NULL,
      SET_UP_DATE DATE FORMAT 'YYYYMMDD' TITLE '成立日期' NOT NULL,
      CORP_REP VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表' NOT NULL,
      CORP_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '法人类别代码' NOT NULL,
      CORP_REP_CERT_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表证件类型代码' NOT NULL,
      CORP_REP_CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表证件号码' NOT NULL,
      REG_CAP_CRNC_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '注册资本币种代码' NOT NULL,
      REG_CAP DECIMAL(38,4) TITLE '注册资本' NOT NULL,
      REG_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '注册地址' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '通信地址' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '邮政编码' NOT NULL,
      CNTC_PSN VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '联系人' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '联系电话' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '手机号码' NOT NULL,
      FAX_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '传真号码' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '电子邮箱' NOT NULL,
      MANG_RANG VARCHAR(4000) CHARACTER SET LATIN CASESPECIFIC TITLE '经营范围' NOT NULL,
      UNIT_CHRC_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '单位性质代码' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '境内外标志' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '数据来源表' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( ORG_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_FUTURES;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_FUTURES ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      FUTRS_CNTR_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '期货合约代码' NOT NULL,
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      FUTRS_VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '期货品种代码' NOT NULL,
      S_TRAD_DATE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '开始交易日期' NOT NULL,
      LAST_TRAD_DATE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '最后交易日期' NOT NULL,
      CNTR_DLM_M VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '合约交割月份' NOT NULL,
      LAST_DLM_DATE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '最后交割日期' NOT NULL,
      LSTD_REF_PRC DECIMAL(20,4) TITLE '挂牌基准价格' NOT NULL,
      CNTR_ABBR_ENG VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '合约简称[英文]' NOT NULL,
      CNTR_NAME_ENG VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '合约名称[英文]' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( FUTRS_CNTR_CDE ,TRAD_PLAC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_ASSET_BACKED;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_ASSET_BACKED ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      DUR_B_D VARCHAR(2000) CHARACTER SET LATIN CASESPECIFIC TITLE '存续起始日' NOT NULL,
      DUR_CNL_D VARCHAR(2000) CHARACTER SET LATIN CASESPECIFIC TITLE '存续终止日' NOT NULL,
      DUR_TLMT VARCHAR(2000) CHARACTER SET LATIN CASESPECIFIC TITLE '存续期限' NOT NULL,
      OCR_PLAC VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '发生场所' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.SHDR_ACCT_LIST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE nsPDATA_D1.SHDR_ACCT_LIST ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      USER_ID VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC,
      SHDR_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( USER_ID ,SHDR_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID_170921;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID_170921 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL GENERATED ALWAYS AS IDENTITY
           (START WITH 100000000000 
            INCREMENT BY 1 
            MINVALUE -999999999999 
            MAXVALUE 999999999999 
            NO CYCLE),
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( IDNTF_INFO_UNIQ_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_OBJ_STK_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_OBJ_STK_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券交易所代码' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券名称' NOT NULL,
      OBJ_TYPE VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '标的类型' NOT NULL,
      WDI_SEC_ID VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '万得证券ID' NOT NULL,
      COMP_ID VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '公司ID' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_TRADING_RING;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_TRADING_RING ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      TRAD_PLAC_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所描述' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_CONV_MAPN_170105;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_CONV_MAPN_170105 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '源表编号' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源表英文名' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码英文名' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码值' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码描述' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '代码英文名' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '有效标志' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( SRC_TB_ENAME ,SRC_CDE_ENAME ,SRC_CDE_VAL );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_161125_1;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_161125_1 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '角色类型代码' NOT NULL,
      ROLE_ID VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '角色ID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '身份匹配度代码' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '状态' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( ROLE_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_CONVER_BOND;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_CONVER_BOND ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BOND_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '债券代码' NOT NULL,
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      STK_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '股票代码' NOT NULL,
      STK_TRAD_PLAC_CDE VARCHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '股票交易场所代码' NOT NULL,
      CONV_RATE DECIMAL(18,9) TITLE '转换比例' NOT NULL,
      CONV_PRC DECIMAL(18,2) TITLE '转换价格' NOT NULL,
      CONV_B_D DATE FORMAT 'YYYYMMDD' TITLE '转股起始日' NOT NULL,
      CONV_CNL_D DATE FORMAT 'YYYYMMDD' TITLE '转股终止日' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( BOND_CDE ,TRAD_PLAC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_STOCK_PLG_REPO_GB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_STOCK_PLG_REPO_GB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      MKT_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '市场类型',
      SEC_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券代码',
      SEC_NAME VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '证券简称',
      NEGT_TYPE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '流通类型',
      CAP_VOL DECIMAL(18,0) TITLE '股本数量',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始时间',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束时间')
PRIMARY INDEX ( MKT_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.ACT_STK_INVST_CLSF_HIS_0530;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.ACT_STK_INVST_CLSF_HIS_0530 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '一码通账户号码' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户号' NOT NULL,
      SEC_ACCT_NAME VARCHAR(120) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户名称',
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类别',
      SEC_ACCT_SORT CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户类别',
      CLSF_1 CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '一级分类',
      CLSF_2 CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '二级分类',
      CLSF_3 CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '三级分类',
      CLSF_2_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '二级分类（年龄）',
      CLSF_3_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '三级分类（年龄）',
      BNK_ID CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '银行标识',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( OAP_ACCT_NBR ,SEC_ACCT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.TEST_FUND_COMP_BSC_INFO;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.TEST_FUND_COMP_BSC_INFO ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      FUND_COMP_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'TEST_基金公司代码' NOT NULL,
      FUND_COMP_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'TEST_基金公司名称',
      FUND_COMP_STS VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE 'TEST_基金公司状态',
      REG_CAP DECIMAL(20,4) TITLE 'TEST_注册资本',
      SET_UP_DATE DATE FORMAT 'YYYYMMDD' TITLE 'TEST_成立日期')
PRIMARY INDEX ( FUND_COMP_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_EQUITY_STR;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_EQUITY_STR ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      STK_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '股票代码' NOT NULL,
      CAP_TYPE_CDE CHAR(5) CHARACTER SET LATIN CASESPECIFIC TITLE '股本类型代码' NOT NULL,
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期' NOT NULL,
      SEC_VOL DECIMAL(19,3) TITLE '证券数量' NOT NULL,
      EQUT_SORT CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '权益类别' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,STK_CDE ,CAP_TYPE_CDE ,STAT_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_TRAD_CLND;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_TRAD_CLND ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CALENDAR_DATE DATE FORMAT 'YYYYMMDD' TITLE '日期' NOT NULL,
      YEAR_OF_CALENDAR INTEGER TITLE '年',
      QUARTER_OF_YEAR INTEGER TITLE '季',
      MONTH_OF_YEAR INTEGER TITLE '月',
      DAY_OF_WEEK INTEGER TITLE '周',
      DAY_OF_MONTH INTEGER TITLE '日',
      MON_YEAR_AND_WEEK INTEGER TITLE '年周：周一标准',
      FRI_YEAR_AND_WEEK INTEGER TITLE '年周：周五标准',
      SAT_YEAR_AND_WEEK INTEGER TITLE '年周：周六标准',
      SUN_YEAR_AND_WEEK INTEGER TITLE '年周：周日标准',
      IF_TRADDAY INTEGER TITLE '是否交易日代码',
      LAST_TRADDAY DATE FORMAT 'YYYYMMDD' TITLE '上一个交易日',
      W_TRADDAY INTEGER TITLE '本周第几个交易日',
      M_TRADDAY INTEGER TITLE '本月第几个交易日',
      Q_TRADDAY INTEGER TITLE '本季第几个交易日',
      Y_TRADDAY INTEGER TITLE '本年第几个交易日',
      EOM_SIGN INTEGER TITLE '月末标志代码',
      EOQ_SIGN INTEGER TITLE '季末标志代码',
      EOY_SIGN INTEGER TITLE '年末标志代码',
      TRADDAY_EOM_SIGN INTEGER TITLE '交易日月末标志代码',
      TRADDAY_EOQ_SIGN INTEGER TITLE '交易日季末标志代码',
      TRADDAY_EOY_SIGN INTEGER TITLE '交易日年末标志代码',
      TRADDAY_EOW_SIGN INTEGER TITLE '交易日周末标志代码',
      EOW_SIGN INTEGER TITLE '周末 标志代码')
PRIMARY INDEX ( CALENDAR_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_EQUITY_CHN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_EQUITY_CHN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      STK_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '股票代码' NOT NULL,
      CAP_TYPE_CDE CHAR(5) CHARACTER SET LATIN CASESPECIFIC TITLE '股本类型代码' NOT NULL,
      CHG_DATE DATE FORMAT 'YYYYMMDD' TITLE '变动日期' NOT NULL,
      CAP_CHG_RESN_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '股本变动原因代码' NOT NULL,
      CHG_VOL DECIMAL(18,2) TITLE '变动数量' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,STK_CDE ,CAP_TYPE_CDE ,CHG_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.TDSUM_adm_region_info;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.TDSUM_adm_region_info ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      rgn_cd VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行政区代码' NOT NULL,
      rgn_name VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '行政区名称' NOT NULL)
PRIMARY INDEX ( rgn_cd );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.SHDR_ACCT_LIST_20170928;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE nsPDATA_D1.SHDR_ACCT_LIST_20170928 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SHDR_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( SHDR_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.TDSUM_region_info;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.TDSUM_region_info ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      rgn_cd VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '管辖区代码' NOT NULL,
      rgn_name VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '管辖区名称' NOT NULL)
PRIMARY INDEX ( rgn_cd );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.ACT_INV_CLS_HOLD_MKT_VAL;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.ACT_INV_CLS_HOLD_MKT_VAL ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      CLSF_3 CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '三级分类',
      MKT_TYPE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '市场类型',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '证券账户类别',
      NEGT_ID CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '流通标识',
      HOLD_VOL DECIMAL(22,0) TITLE '持有数量',
      HOLD_AMT DECIMAL(22,0) TITLE '持有金额（元）',
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( CLSF_3 );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

SHOW TABLE nsPDATA_D1.PTY_ORG;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_ORG ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ORG_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '机构标识' NOT NULL,
      ORG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '机构全称' NOT NULL,
      ORG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '机构简称' NOT NULL,
      ENG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '英文全称' NOT NULL,
      ENG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '英文简称' NOT NULL,
      IDSTR_SORT_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '行业类别代码' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      ORG_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '组织机构代码' NOT NULL,
      BIZ_LIC_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '营业执照号' NOT NULL,
      UNFY_SCTY_CRDT_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '统一社会信用代码' NOT NULL,
      BIZ_REG_REG_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '工商注册登记号' NOT NULL,
      SET_UP_DATE DATE FORMAT 'YYYYMMDD' TITLE '成立日期' NOT NULL,
      CORP_REP VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表' NOT NULL,
      CORP_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '法人类别代码' NOT NULL,
      CORP_REP_CERT_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表证件类型代码' NOT NULL,
      CORP_REP_CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表证件号码' NOT NULL,
      REG_CAP_CRNC_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '注册资本币种代码' NOT NULL,
      REG_CAP DECIMAL(38,4) TITLE '注册资本' NOT NULL,
      REG_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '注册地址' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '通信地址' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '邮政编码' NOT NULL,
      CNTC_PSN VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '联系人' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '联系电话' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '手机号码' NOT NULL,
      FAX_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '传真号码' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '电子邮箱' NOT NULL,
      MANG_RANG VARCHAR(4000) CHARACTER SET LATIN CASESPECIFIC TITLE '经营范围' NOT NULL,
      UNIT_CHRC_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '单位性质代码' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '境内外标志' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '数据来源表' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( ORG_ID ,DATA_SRC_TB );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_SEC_CDE_COMP_CDE_CORR_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_SEC_CDE_COMP_CDE_CORR_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_CTG VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '证券类别',
      TRAD_PLAC_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码',
      STD_COMP_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '标准公司代码',
      WDI_COMP_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '万得公司代码',
      EXCH_COMP_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '交易所公司代码',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( SEC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.ACT_FUTRS_CNTR_QUOT_TB;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.ACT_FUTRS_CNTR_QUOT_TB ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '统计日期',
      EXCH_NBR CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '交易所编号',
      VART_CNTR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种合约',
      VART_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种代码',
      VART_CHN_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种中文名',
      VART_AAGT_CLSF VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种一级分类',
      VART_SCND_CLSF VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '品种二级分类',
      MAIN_CNTR_INDC VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '主力合约标志',
      OPN_PRC DECIMAL(24,6) TITLE '开盘价',
      CLS_PRC DECIMAL(24,6) TITLE '收盘价',
      TOP_PRC DECIMAL(24,6) TITLE '最高价',
      MIN_PRC DECIMAL(24,6) TITLE '最低价',
      YDY_SETL_PRC DECIMAL(24,6) TITLE '昨结算价',
      TS_SETL_PRC DECIMAL(24,6) TITLE '今结算价',
      S_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始交易日期',
      TRAD_QTT DECIMAL(24,0) TITLE '成交量',
      TRAD_AMT DECIMAL(24,6) TITLE '成交额',
      PSTN_QTT DECIMAL(24,0) TITLE '持仓量',
      CNTR_MLTPR VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '合约乘数',
      PSTN_AMT DECIMAL(24,6) TITLE '持仓金额')
PRIMARY INDEX ( VART_CNTR )
PARTITION BY RANGE_N(STAT_DATE  BETWEEN DATE '2000-01-01' AND DATE '2050-12-31' EACH INTERVAL '1' DAY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.TFSUM_MKT_SECT_PERF;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.TFSUM_MKT_SECT_PERF ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      BUS_DATE DATE FORMAT 'YY/MM/DD',
      MKT_SECT_CODE VARCHAR(10) CHARACTER SET UNICODE NOT CASESPECIFIC,
      MKT_SECT_NAME VARCHAR(100) CHARACTER SET UNICODE NOT CASESPECIFIC,
      SECURITY_CODE VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC,
      SECURITY_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC,
      STATUS VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( BUS_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_ASS_MAN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_ASS_MAN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      SPVSR VARCHAR(3000) CHARACTER SET LATIN CASESPECIFIC TITLE '管理人' NOT NULL,
      CSTD_PSN VARCHAR(800) CHARACTER SET LATIN CASESPECIFIC TITLE '托管人' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID_161125_1;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_IDNTF_INFO_ID_161125_1 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL GENERATED BY DEFAULT AS IDENTITY
           (START WITH 100000000000 
            INCREMENT BY 1 
            MINVALUE -999999999999 
            MAXVALUE 999999999999 
            NO CYCLE),
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( CERT_NBR );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_PRI_FUNDS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_PRI_FUNDS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      FUND_CNTR DECIMAL(18,0) TITLE '基金合同' NOT NULL,
      FUND_CLCT_DATE TIMESTAMP(0) FORMAT 'YYYYMMDDBHH:MI:SS' TITLE '基金募集日期' NOT NULL,
      FUND_MAT_DATE TIMESTAMP(0) FORMAT 'YYYYMMDDBHH:MI:SS' TITLE '基金到期日期' NOT NULL,
      PROD_NAME VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '产品名称' NOT NULL,
      PROD_STS DECIMAL(18,0) TITLE '产品状态' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PROD_170918;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PROD_170918 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      PROD_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '产品标识' NOT NULL,
      PROD_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '产品全称' NOT NULL,
      PROD_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '产品简称' NOT NULL,
      ENG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '英文全称' NOT NULL,
      ENG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '英文简称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      GND_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '性别代码' NOT NULL,
      BORN_DATE DATE FORMAT 'YYYYMMDD' TITLE '出生日期' NOT NULL,
      ORG_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '组织机构代码' NOT NULL,
      BIZ_LIC_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '营业执照号' NOT NULL,
      UNFY_SCTY_CRDT_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '统一社会信用代码' NOT NULL,
      BIZ_REG_REG_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '工商注册登记号' NOT NULL,
      CORP_REP VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表' NOT NULL,
      CORP_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '法人类别代码' NOT NULL,
      CORP_REP_CERT_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表证件类型代码' NOT NULL,
      CORP_REP_CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '法人代表证件号码' NOT NULL,
      REG_CAP_CRNC_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '注册资本币种代码' NOT NULL,
      REG_CAP DECIMAL(38,4) TITLE '注册资本' NOT NULL,
      REG_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '注册地址' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '通信地址' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '邮政编码' NOT NULL,
      CNTC_PSN VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '联系人' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '联系电话' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '手机号码' NOT NULL,
      FAX_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '传真号码' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '电子邮箱' NOT NULL,
      MANG_RANG VARCHAR(4000) CHARACTER SET LATIN CASESPECIFIC TITLE '经营范围' NOT NULL,
      UNIT_CHRC_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '单位性质代码' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '境内外标志' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '数据来源表' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '预留5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( PROD_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_BROKER_ACC_MAN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_BROKER_ACC_MAN ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      PROD_TYPE VARCHAR(3000) CHARACTER SET LATIN CASESPECIFIC TITLE '产品类型' NOT NULL,
      CRT_DATE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '设立日期' NOT NULL,
      MAT_DATE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '到期日期' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_CONV_MAPN_170830;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_CONV_MAPN_170830 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '源表编号' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源表英文名' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码英文名' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码值' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码描述' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '代码英文名' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '有效标志' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '主题域' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( SRC_TB_ENAME ,SRC_CDE_ENAME ,SRC_CDE_VAL );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_CONV_MAPN_0810;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_CONV_MAPN_0810 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '源表编号' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源表英文名' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码英文名' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码值' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码描述' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '代码英文名' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '有效标志' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '主题域' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( SRC_TB_ENAME ,SRC_CDE_ENAME ,SRC_CDE_VAL );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_EXPON_ELEM;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_EXPON_ELEM ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CONS_SEC_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '成分证券代码' NOT NULL,
      EFCTV_DATE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '生效日期' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( CONS_SEC_CDE ,EFCTV_DATE ,VART_CDE ,TRAD_PLAC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_161125;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_161125 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '角色类型代码' NOT NULL,
      ROLE_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '角色ID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '身份匹配度代码' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '状态' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( ROLE_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_STOCK;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_STOCK ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      STK_PAR_VAL DECIMAL(15,8) TITLE '股票面值' NOT NULL,
      FRT_ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '首次发行日期' NOT NULL,
      MKT_LVL_CDE CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '市场层次代码' NOT NULL,
      ISSR_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '发行人标识' NOT NULL,
      ENG_FNAME VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '英文全称' NOT NULL,
      MAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '到期日期' NOT NULL,
      CRNC_UNIT CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '货币单位' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_STOCK_PLG_REPO_CL_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_STOCK_PLG_REPO_CL_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      MKT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '市场',
      CNTR_NBR_NBR VARCHAR(22) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '合同编号／编号',
      ITP_SEC_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '融入方证券账户',
      RCP_SEC_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '融出方证券账户',
      PLG_A_SHR_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '质押A股代码',
      STK_CHRC VARCHAR(14) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '股份性质',
      INIT_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '初始交易日期',
      PLG_VOL DECIMAL(18,0) TITLE '质押数量',
      INIT_TRAD_AMT DECIMAL(18,2) TITLE '初始交易金额',
      RPCHS_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '购回交易日期',
      RPCHS_TRAD_AMT DECIMAL(18,2) TITLE '购回交易金额',
      RMAK VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '备注',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( MKT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_SEC_IDSTR_RLTN_HIS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_SEC_IDSTR_RLTN_HIS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '证券代码' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证券交易所代码',
      SEC_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '证券ID',
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '证券名称',
      IC_TYPE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '行业分类类型' NOT NULL,
      IDSTR_ID VARCHAR(38) CHARACTER SET LATIN CASESPECIFIC TITLE '行业ID',
      IDSTR_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '行业名称',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期')
PRIMARY INDEX ( SEC_CDE ,IC_TYPE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.SHDR_ACCT_LIST_201709220001;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE SET TABLE nsPDATA_D1.SHDR_ACCT_LIST_201709220001 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SHDR_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC)
PRIMARY INDEX ( SHDR_ACCT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_FUTURES_GODS;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_FUTURES_GODS ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      FUTRS_VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '期货品种代码' NOT NULL,
      FUTRS_VART_ABBR VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '期货品种简称' NOT NULL,
      MIN_TRAD_DPST_RATE DECIMAL(20,4) TITLE '最低交易保证金率' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( FUTRS_VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_BOND_GRADE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_BOND_GRADE ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      BOND_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '债券代码' NOT NULL,
      RTAG_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '评级机构标识' NOT NULL,
      RATN_DATE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '评级日期' NOT NULL,
      DEBT_RATN VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '债项评级' NOT NULL,
      BOND_LVL VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '债券等级' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,BOND_CDE ,RTAG_ID ,RATN_DATE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_SUG_FIN_INST;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_SUG_FIN_INST ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,VART_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_170921;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PTY_PTY_ROLE_RLTN_170921 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '角色类型代码' NOT NULL,
      ROLE_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '角色ID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '主体ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '主体类别代码' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '主体名称' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '证件类别代码' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '证件号码' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '鉴别信息唯一标识' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '身份匹配度代码' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '状态' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( ROLE_TYPE_CDE ,ROLE_ID ,IDNTF_INFO_UNIQ_ID );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.FYX_TEST3;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.FYX_TEST3 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      TRAD_PLAC_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所描述' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_SHARE_OPTION;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_SHARE_OPTION ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      OPT_CNTR_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '期权合约代码' NOT NULL,
      EXEC_MODE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '行权方式代码' NOT NULL,
      EXCT_PRC DECIMAL(15,10) TITLE '执行价格' NOT NULL,
      UND_SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '标的证券代码' NOT NULL,
      UND_SEC_ABBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '标的证券简称' NOT NULL,
      OPT_EXEC_PRC DECIMAL(15,10) TITLE '期权行权价格' NOT NULL,
      FST_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '首个交易日期' NOT NULL,
      LAST_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '最后交易日期' NOT NULL,
      OPT_EXEC_DATE DATE FORMAT 'YYYYMMDD' TITLE '期权行权日期' NOT NULL,
      OPT_DLM_DATE DATE FORMAT 'YYYYMMDD' TITLE '期权交割日期' NOT NULL,
      OPT_MAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '期权到期日期' NOT NULL,
      PROD_VRSN CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '产品版本' NOT NULL,
      UNIT_DPST DECIMAL(18,3) TITLE '单位保证金' NOT NULL,
      WHL_HAND_VOL DECIMAL(16,0) TITLE '整手数量' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,OPT_CNTR_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_BOND;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_BOND ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '交易场所代码' NOT NULL,
      BOND_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '债券代码' NOT NULL,
      ISSR_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '发行人标识' NOT NULL,
      BOND_PAR_VAL DECIMAL(18,2) TITLE '债券面值' NOT NULL,
      ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '发行日期' NOT NULL,
      ISS_PRC DECIMAL(18,4) TITLE '发行价格' NOT NULL,
      MAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '到期日期' NOT NULL,
      PAR_RATE VARCHAR(500) CHARACTER SET LATIN CASESPECIFIC TITLE '票面利率' NOT NULL,
      MIDL_SML_ENTRP_DEBT_INDC VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '中小企业债标志' NOT NULL,
      BOND_LVL VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '债券等级' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '开始日期' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '结束日期' NOT NULL)
PRIMARY INDEX ( TRAD_PLAC_CDE ,BOND_CDE );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.PRD_INFO_CODE_FYX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.PRD_INFO_CODE_FYX ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      VART_CDE_SORT VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码类别' NOT NULL,
      VART_CDE_SORT_NAME VARCHAR(80) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码类别名称' NOT NULL,
      VART_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码值' NOT NULL,
      VART_CDE_DESC VARCHAR(80) CHARACTER SET LATIN CASESPECIFIC TITLE '品种代码描述' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( VART_CDE_SORT ,VART_CDE_VAL );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.FYX_TEST2;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.FYX_TEST2 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '源表编号' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源表英文名' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码英文名' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码值' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '源代码描述' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '代码英文名' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '有效标志' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '主题域' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( SRC_TB_ENAME ,SRC_CDE_ENAME ,SRC_CDE_VAL ,SRC_CDE_DESC );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW TABLE nsPDATA_D1.CDE_PTY_170829;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
CREATE MULTISET TABLE nsPDATA_D1.CDE_PTY_170829 ,NO FALLBACK ,
     NO BEFORE JOURNAL,
     NO AFTER JOURNAL,
     CHECKSUM = DEFAULT,
     DEFAULT MERGEBLOCKRATIO
     (
      CDE_SORT VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '代码类别' NOT NULL,
      CDE_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '代码名称' NOT NULL,
      CDE_VAL VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '代码值' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '代码描述' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '数据日期' NOT NULL)
PRIMARY INDEX ( CDE_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

.quit
 *** You are now logged off from the DBC.
 *** Exiting BTEQ...
 *** RC (return code) = 0 
