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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      PD_FLAG VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ƶ�ȱ�־' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL GENERATED ALWAYS AS IDENTITY
           (START WITH 100000000000 
            INCREMENT BY 1 
            MINVALUE -999999999999 
            MAXVALUE 999999999999 
            NO CYCLE),
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ��ͨ�˺�' NOT NULL,
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����' NOT NULL,
      SHDR_ACCT CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻�' NOT NULL,
      SEC_CODE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      S_Date DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      HOLD_VOL DECIMAL(18,0) TITLE '�ֹ�����',
      TDY_PRICE DECIMAL(18,6) TITLE '��ֵ�۸�',
      INVST_AMT DECIMAL(18,2) TITLE 'Ͷ����',
      profit_loss DECIMAL(18,2) TITLE 'ӯ��',
      E_Date DATE FORMAT 'YYYYMMDD' TITLE '��������',
      use_name VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ա' NOT NULL,
      timestemp TIMESTAMP(6) TITLE '����ʱ��')
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
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      ABNO_RESN VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '�쳣ԭ��' NOT NULL,
      MTN_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ά������' NOT NULL)
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
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫ���ʹ���' NOT NULL,
      ROLE_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '���ƥ��ȴ���' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '״̬' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��Ӣ����' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����Ӣ����' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����ֵ' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��������' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ӣ����' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ч��־' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��Ӣ����' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����Ӣ����' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����ֵ' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��������' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ӣ����' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ч��־' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      ACONT_PTY_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      RPT_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      ACONT_YEARLY VARCHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      IDX_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      RPT_FRQU_TYPE VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ƶ�ʴ���' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_TYPE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      CERT_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      START_BAL DECIMAL(22,4) TITLE '�ڳ����' NOT NULL,
      END_BAL DECIMAL(22,4) TITLE '��ĩ���' NOT NULL,
      MERG_RPT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�ϲ������ʶ' NOT NULL,
      AUDIT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ�ʶ' NOT NULL,
      RSRV_FLD1 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�1' NOT NULL,
      RSRV_FLD2 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�2' NOT NULL,
      RSRV_FLD3 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�3' NOT NULL,
      DATA_SRC_TB_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Դ������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      ACONT_PTY_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      RPT_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      ACONT_YEARLY VARCHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      IDX_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      RPT_FRQU_TYPE VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ƶ�ʴ���' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_TYPE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      CERT_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      START_BAL DECIMAL(22,4) TITLE '�ڳ����' NOT NULL,
      END_BAL DECIMAL(22,4) TITLE '��ĩ���' NOT NULL,
      MERG_RPT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�ϲ������ʶ' NOT NULL,
      AUDIT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ�ʶ' NOT NULL,
      RSRV_FLD1 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�1' NOT NULL,
      RSRV_FLD2 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�2' NOT NULL,
      RSRV_FLD3 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�3' NOT NULL,
      DATA_SRC_TB_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Դ������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����' NOT NULL,
      SEC_ACCT_NBR VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      CSTD_UNIT_ID CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '�йܵ�Ԫ��ʶ' NOT NULL,
      SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      CAP_TYPE CHAR(5) CHARACTER SET LATIN CASESPECIFIC TITLE '�ɱ�����' NOT NULL,
      TD_END_HOLD_VOL DECIMAL(18,0) TITLE '���ճ�������',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫ���ʹ���' NOT NULL,
      ROLE_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '���ƥ��ȴ���' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '״̬' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��Ӣ����' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����Ӣ����' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����ֵ' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��������' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ӣ����' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ч��־' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��Ӣ����' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����Ӣ����' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����ֵ' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��������' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ӣ����' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ч��־' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ��ͨ�˺�' NOT NULL,
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����' NOT NULL,
      SHDR_ACCT CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻�' NOT NULL,
      SEC_CODE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      HOLD_VOL DECIMAL(18,0) TITLE '�ֹ�����',
      TDY_PRICE DECIMAL(18,6) TITLE '��ֵ�۸�',
      INVST_AMT DECIMAL(18,2) TITLE 'Ͷ����',
      profit_loss DECIMAL(18,2) TITLE 'ӯ��')
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
      RPT_FRQU_TYPE_CDE VARCHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ƶ�ʴ���' NOT NULL,
      RPT_FRQU_TYPE_DESC VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ƶ������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      MKT_Type CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����' NOT NULL,
      SEC_ACCT CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻�' NOT NULL,
      SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      HLD_VOL DECIMAL(18,0) TITLE '�ֹ�����',
      INVST_AMT DECIMAL(18,2) TITLE 'Ͷ����')
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
      IDX_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'ָ������' NOT NULL,
      FINA_STD_ID CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�Ʊ��ʶ' NOT NULL,
      IDX_CLBR_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'ָ��ھ�����' NOT NULL,
      EFCTV_DATE DATE FORMAT 'YYYYMMDD' TITLE '��Ч����' NOT NULL,
      INVL_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ʧЧ����' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      ACONT_PTY_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      RPT_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      ACONT_YEARLY VARCHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      IDX_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      RPT_FRQU_TYPE VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ƶ�ʴ���' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_TYPE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      CERT_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      START_BAL DECIMAL(22,4) TITLE '�ڳ����' NOT NULL,
      END_BAL DECIMAL(22,4) TITLE '��ĩ���' NOT NULL,
      MERG_RPT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�ϲ������ʶ' NOT NULL,
      AUDIT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ�ʶ' NOT NULL,
      RSRV_FLD1 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�1' NOT NULL,
      RSRV_FLD2 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�2' NOT NULL,
      RSRV_FLD3 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�3' NOT NULL,
      DATA_SRC_TB_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Դ������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ',
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������',
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������',
      CERT_NBR VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������',
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL GENERATED ALWAYS AS IDENTITY
           (START WITH 100000000000 
            INCREMENT BY 1 
            MINVALUE -999999999999 
            MAXVALUE 999999999999 
            NO CYCLE),
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      VART_CDE_SORT VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ������' NOT NULL,
      VART_CDE_SORT_NAME VARCHAR(80) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ����������' NOT NULL,
      VART_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���ֵ' NOT NULL,
      VART_CDE_DESC VARCHAR(80) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ�������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL GENERATED ALWAYS AS IDENTITY
           (START WITH 100000000000 
            INCREMENT BY 1 
            MINVALUE -999999999999 
            MAXVALUE 999999999999 
            NO CYCLE),
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      RLTN_VART_EXCH_CDE CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵƷ�ֽ���������' NOT NULL,
      RLTN_VART_CDE CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵƷ�ִ���' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      SPC_ACCT_TYPE VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ר������' NOT NULL,
      CNTR_FLNG_DATE VARCHAR(600) CHARACTER SET LATIN CASESPECIFIC TITLE '��ͬ��������' NOT NULL,
      CNTR_EFCTV_DATE VARCHAR(600) CHARACTER SET LATIN CASESPECIFIC TITLE '��ͬ��Ч����' NOT NULL,
      CNTR_TLMT VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '��ͬ����' NOT NULL,
      SPVSR VARCHAR(800) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      CSTD_PSN VARCHAR(800) CHARACTER SET LATIN CASESPECIFIC TITLE '�й���' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      PSN_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '���˱�ʶ' NOT NULL,
      NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '����' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      GND_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�Ա����' NOT NULL,
      BORN_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      NTLT VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '����' NOT NULL,
      DUTY VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ְ��' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ͨ�ŵ�ַ' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵ�绰' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '�ֻ�����' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      PLTC_FACE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '������ò����' NOT NULL,
      OCCU_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE 'ְҵ����' NOT NULL,
      NATION_CDE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      EDU_LVL_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '�����̶ȴ���' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�������־' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '������Դ��' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      SEC_ACCT_NAME VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻�����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_ACCT_SORT VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����' NOT NULL,
      FCPTL_SCND_CLSF VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���ʶ�������' NOT NULL,
      COUN_CDE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ҵ���' NOT NULL,
      PS_NORG_ID VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���˻�����ʶ' NOT NULL,
      OAP_SEC_ACCT_STS VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��֤ͨȯ�˻�״̬' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����' NOT NULL,
      SEC_ACCT_NBR VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      CSTD_UNIT_ID CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '�йܵ�Ԫ��ʶ' NOT NULL,
      SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      CAP_TYPE CHAR(5) CHARACTER SET LATIN CASESPECIFIC TITLE '�ɱ�����' NOT NULL,
      TD_END_HOLD_VOL DECIMAL(18,0) TITLE '���ճ�������',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      PSN_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '���˱�ʶ' NOT NULL,
      NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '����' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      GND_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�Ա����' NOT NULL,
      BORN_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      NTLT VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '����' NOT NULL,
      DUTY VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ְ��' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ͨ�ŵ�ַ' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵ�绰' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '�ֻ�����' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      PLTC_FACE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '������ò����' NOT NULL,
      OCCU_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE 'ְҵ����' NOT NULL,
      NATION_CDE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      EDU_LVL_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '�����̶ȴ���' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�������־' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '������Դ��' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫ���ʹ���' NOT NULL,
      ROLE_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '���ƥ��ȴ���' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '״̬' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      CDE_SORT VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      CDE_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CDE_VAL VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      FUND_PAR_VAL DECIMAL(9,2) TITLE '������ֵ' NOT NULL,
      ISSR_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '�����˱�ʶ' NOT NULL,
      FUND_OAT_MODE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '����������ʽ����' NOT NULL,
      GRD_FUND_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�ּ�����������' NOT NULL,
      ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      STK_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ����',
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����������',
      LSTN_BORD VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '���а��',
      SEC_CTG VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ���',
      IF_ISS_PRIO_STK CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�Ƿ������ȹ�',
      STK_PAR_VAL DECIMAL(24,6) TITLE '��Ʊ��ֵ',
      ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      LIST_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      DLST_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ժ������',
      CRNC_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '���ִ���',
      ISSR_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '�����˱�ʶ',
      COMP_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��˾ID',
      WDI_SEC_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '���֤ȯID',
      STK_REG_STS VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ�Ǽ�״̬',
      STK_STS VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ״̬',
      RISK_ALT_INDC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '���վ�ʾ��־',
      IDSTR_CTGR_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ�������',
      IDSTR_CTGR_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ��������',
      IDSTR_CLASS_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ�������',
      IDSTR_CLASS_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ��������',
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ͻ������',
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ͻ������',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      CLCT_MODE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE 'ļ����ʽ����' NOT NULL,
      FUND_TYPE_CDE VARCHAR(18) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ʹ���' NOT NULL,
      FUND_SPVSR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '���������' NOT NULL,
      CSTD_PSN VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '�й���' NOT NULL,
      PD_FLAG VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ƶ�ȱ�־' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      MKT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�г�',
      CNTR_NBR_NBR VARCHAR(22) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ͬ��ţ����',
      ITP_SEC_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���뷽֤ȯ�˻�',
      RCP_SEC_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڳ���֤ȯ�˻�',
      PLG_A_SHR_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ѺA�ɴ���',
      STK_CHRC VARCHAR(14) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɷ�����',
      INIT_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ��������',
      PLG_VOL DECIMAL(18,0) TITLE '��Ѻ����',
      INIT_TRAD_AMT DECIMAL(18,2) TITLE '��ʼ���׽��',
      RPCHS_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '���ؽ�������',
      RPCHS_TRAD_AMT DECIMAL(18,2) TITLE '���ؽ��׽��',
      RMAK VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ע',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      PTY_ID VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫ���ʹ���' NOT NULL,
      ROLE_ID VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '���ƥ��ȴ���' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '״̬' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      MKT_Type CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����' NOT NULL,
      SEC_ACCT CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻�' NOT NULL,
      SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      S_Date DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      HLD_VOL DECIMAL(18,0) TITLE '�ֹ�����',
      INVST_AMT DECIMAL(18,2) TITLE 'Ͷ����',
      E_Date DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      CDE_SORT VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      CDE_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CDE_VAL VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      ACONT_PTY_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      RPT_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      ACONT_YEARLY VARCHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      IDX_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      RPT_FRQU_TYPE VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ƶ�ʴ���' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_TYPE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      CERT_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      START_BAL DECIMAL(22,4) TITLE '�ڳ����' NOT NULL,
      END_BAL DECIMAL(22,4) TITLE '��ĩ���' NOT NULL,
      MERG_RPT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�ϲ������ʶ' NOT NULL,
      AUDIT_ID VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ�ʶ' NOT NULL,
      RSRV_FLD1 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�1' NOT NULL,
      RSRV_FLD2 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�2' NOT NULL,
      RSRV_FLD3 VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ���ֶ�3' NOT NULL,
      DATA_SRC_TB_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Դ������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      EXCH_CUST_CDE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������ͻ�����',
      EXCH_NBR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������',
      FC_MEMB_NBR VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ���˾��Ա��',
      FUTRS_UNFY_OPN_ACCT_CUST_CDE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�ͳһ�����ͻ�����',
      FC_UNFY_CDE VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ���˾ͳһ����',
      INSD_BANKRL_ACCT VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڲ��ʽ��˻�',
      COUN_CDE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ҵ���',
      PSN_ORG_ID VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���˻�����ʶ',
      FUTRS_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ͷ�������',
      FCPTL_SCND_CLSF VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���ʶ�������',
      ACCT_STS VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�״̬',
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      OAP_ACCT_STS_VLD_INDC VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�״̬��Ч��־',
      CRS_MGN_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���г�Ͷ�������',
      CORLT_RLTN_IF_CFRM VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������ϵ�Ƿ�ȷ��',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      TRAD_ODR_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���׶������/��ͬ���',
      INIT_TRAD_ODR_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ʼ���׶������/��ͬ���',
      MKT_TYPE VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�г�����',
      BIZ_TYPE VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ҵ������',
      CAP_TYPE VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����',
      ITP_SHDR_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���뷽�ɶ��˻�',
      RCP_SHDR_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڳ����ɶ��˻�',
      RCP_TRAD_UNIT VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڳ������׵�Ԫ/ϯλ',
      SC_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾',
      PLG_SEC_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ѻ֤ȯ����',
      TRAD_VOL DECIMAL(24,0) TITLE '�ɽ�����',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����')
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      STK_PAR_VAL DECIMAL(15,8) TITLE '��Ʊ��ֵ' NOT NULL,
      PER_LOT_TRAD_VOL DECIMAL(18,0) TITLE 'ÿ�ֽ�������' NOT NULL,
      IDSTR_SORT_CDE VARCHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ������' NOT NULL,
      FRT_ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '�״η�������' NOT NULL,
      SPCL_PRCS_INDC VARCHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '�ر����־' NOT NULL,
      SPL_PRCS_INDC VARCHAR(18) CHARACTER SET LATIN CASESPECIFIC TITLE '���⴦���־' NOT NULL,
      MKT_LVL_CDE CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '�г���δ���' NOT NULL,
      ISSR_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '�����˱�ʶ' NOT NULL,
      ENG_FNAME VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӣ��ȫ��' NOT NULL,
      MAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      CRNC_UNIT CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���ҵ�λ' NOT NULL)
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
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��Ӣ����' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����Ӣ����' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����ֵ' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��������' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ӣ����' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ч��־' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      SEC_ACCT_NAME VARCHAR(120) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻�����',
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻����',
      CLSF_1 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ������',
      CLSF_2 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '��������',
      CLSF_3 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '��������',
      CMSMC_CLSF CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '��֤������',
      CLSF_2_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ���䣩',
      CLSF_3_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ���䣩',
      BNK_ID CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '���б�ʶ',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      list_comp_cd CHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���й�˾����',
      list_comp_name CHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���й�˾ȫ��',
      list_comp_init CHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���й�˾���',
      A_sec_cd CHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'A��֤ȯ����',
      A_sec_name CHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'A��֤ȯ����',
      B_sec_cd CHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'B��֤ȯ����',
      B_sec_name CHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'B��֤ȯ����',
      regi_region_cd CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ע���������',
      regu_region_cd CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������Ͻ������',
      regi_address CHAR(256) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ע���ַ',
      exc CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������',
      data_date DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      VART_NAME VARCHAR(800) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ������' NOT NULL,
      VART_ABBR VARCHAR(2000) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ּ��' NOT NULL,
      VART_SORT_CDE VARCHAR(3000) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ��������' NOT NULL,
      VART_STS_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ��״̬����' NOT NULL,
      ISI_N_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE 'ISIN����' NOT NULL,
      CRNC_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '���ִ���' NOT NULL,
      LIST_DATE VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      DLST_DATE VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE 'ժ������' NOT NULL,
      RMAK VARCHAR(4000) CHARACTER SET LATIN CASESPECIFIC TITLE '��ע' NOT NULL,
      PD_FLAG VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ƶ�ȱ�־' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      SET_UP_DATE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      MAT_DATE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      PROD_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʒ��ʶ' NOT NULL,
      PROD_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʒȫ��' NOT NULL,
      PROD_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʒ���' NOT NULL,
      ENG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӣ��ȫ��' NOT NULL,
      ENG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӣ�ļ��' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      GND_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�Ա����' NOT NULL,
      BORN_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      ORG_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��֯��������' NOT NULL,
      BIZ_LIC_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӫҵִ�պ�' NOT NULL,
      UNFY_SCTY_CRDT_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'ͳһ������ô���' NOT NULL,
      BIZ_REG_REG_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ע��ǼǺ�' NOT NULL,
      CORP_REP VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���' NOT NULL,
      CORP_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      CORP_REP_CERT_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���֤�����ʹ���' NOT NULL,
      CORP_REP_CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���֤������' NOT NULL,
      REG_CAP_CRNC_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE 'ע���ʱ����ִ���' NOT NULL,
      REG_CAP DECIMAL(38,4) TITLE 'ע���ʱ�' NOT NULL,
      REG_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ע���ַ' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ͨ�ŵ�ַ' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CNTC_PSN VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵ��' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵ�绰' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '�ֻ�����' NOT NULL,
      FAX_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      MANG_RANG VARCHAR(4000) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ӫ��Χ' NOT NULL,
      UNIT_CHRC_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '��λ���ʴ���' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�������־' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '������Դ��' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      STK_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ����',
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����������',
      LSTN_BORD VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '���а��',
      SEC_CTG VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ���',
      IF_ISS_PRIO_STK CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�Ƿ������ȹ�',
      STK_PAR_VAL DECIMAL(24,6) TITLE '��Ʊ��ֵ',
      ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      LIST_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      DLST_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ժ������',
      CRNC_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '���ִ���',
      ISSR_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '�����˱�ʶ',
      COMP_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��˾ID',
      WDI_SEC_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '���֤ȯID',
      STK_REG_STS VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ�Ǽ�״̬',
      STK_STS VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ״̬',
      RISK_ALT_INDC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '���վ�ʾ��־',
      IDSTR_CTGR_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ�������',
      IDSTR_CTGR_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ��������',
      IDSTR_CLASS_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ�������',
      IDSTR_CLASS_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ��������',
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ͻ������',
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ͻ������',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      WETN_MODE_CDE VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ȩ��ʽ����' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      MKT_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�г�����',
      SEC_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      SEC_NAME VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ���',
      NEGT_TYPE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ͨ����',
      CAP_VOL DECIMAL(18,0) TITLE '�ɱ�����',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼʱ��',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '����ʱ��')
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
      ORG_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '������ʶ' NOT NULL,
      ORG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '����ȫ��' NOT NULL,
      ORG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      ENG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӣ��ȫ��' NOT NULL,
      ENG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӣ�ļ��' NOT NULL,
      IDSTR_SORT_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      ORG_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��֯��������' NOT NULL,
      BIZ_LIC_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӫҵִ�պ�' NOT NULL,
      UNFY_SCTY_CRDT_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'ͳһ������ô���' NOT NULL,
      BIZ_REG_REG_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ע��ǼǺ�' NOT NULL,
      SET_UP_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      CORP_REP VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���' NOT NULL,
      CORP_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      CORP_REP_CERT_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���֤�����ʹ���' NOT NULL,
      CORP_REP_CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���֤������' NOT NULL,
      REG_CAP_CRNC_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE 'ע���ʱ����ִ���' NOT NULL,
      REG_CAP DECIMAL(38,4) TITLE 'ע���ʱ�' NOT NULL,
      REG_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ע���ַ' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ͨ�ŵ�ַ' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CNTC_PSN VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵ��' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵ�绰' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '�ֻ�����' NOT NULL,
      FAX_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      MANG_RANG VARCHAR(4000) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ӫ��Χ' NOT NULL,
      UNIT_CHRC_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '��λ���ʴ���' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�������־' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '������Դ��' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      FUTRS_CNTR_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '�ڻ���Լ����' NOT NULL,
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      FUTRS_VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '�ڻ�Ʒ�ִ���' NOT NULL,
      S_TRAD_DATE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '��ʼ��������' NOT NULL,
      LAST_TRAD_DATE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���������' NOT NULL,
      CNTR_DLM_M VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '��Լ�����·�' NOT NULL,
      LAST_DLM_DATE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '��󽻸�����' NOT NULL,
      LSTD_REF_PRC DECIMAL(20,4) TITLE '���ƻ�׼�۸�' NOT NULL,
      CNTR_ABBR_ENG VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '��Լ���[Ӣ��]' NOT NULL,
      CNTR_NAME_ENG VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��Լ����[Ӣ��]' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      DUR_B_D VARCHAR(2000) CHARACTER SET LATIN CASESPECIFIC TITLE '������ʼ��' NOT NULL,
      DUR_CNL_D VARCHAR(2000) CHARACTER SET LATIN CASESPECIFIC TITLE '������ֹ��' NOT NULL,
      DUR_TLMT VARCHAR(2000) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      OCR_PLAC VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL GENERATED ALWAYS AS IDENTITY
           (START WITH 100000000000 
            INCREMENT BY 1 
            MINVALUE -999999999999 
            MAXVALUE 999999999999 
            NO CYCLE),
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      OBJ_TYPE VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������' NOT NULL,
      WDI_SEC_ID VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���֤ȯID' NOT NULL,
      COMP_ID VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��˾ID' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      TRAD_PLAC_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��Ӣ����' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����Ӣ����' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����ֵ' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��������' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ӣ����' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ч��־' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫ���ʹ���' NOT NULL,
      ROLE_ID VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '���ƥ��ȴ���' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '״̬' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      BOND_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'ծȯ����' NOT NULL,
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      STK_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_TRAD_PLAC_CDE VARCHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ���׳�������' NOT NULL,
      CONV_RATE DECIMAL(18,9) TITLE 'ת������' NOT NULL,
      CONV_PRC DECIMAL(18,2) TITLE 'ת���۸�' NOT NULL,
      CONV_B_D DATE FORMAT 'YYYYMMDD' TITLE 'ת����ʼ��' NOT NULL,
      CONV_CNL_D DATE FORMAT 'YYYYMMDD' TITLE 'ת����ֹ��' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      MKT_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�г�����',
      SEC_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      SEC_NAME VARCHAR(60) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ���',
      NEGT_TYPE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ͨ����',
      CAP_VOL DECIMAL(18,0) TITLE '�ɱ�����',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼʱ��',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '����ʱ��')
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
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ��ͨ�˻�����' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      SEC_ACCT_NAME VARCHAR(120) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻�����',
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����',
      SEC_ACCT_SORT CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻����',
      CLSF_1 CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ������',
      CLSF_2 CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '��������',
      CLSF_3 CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '��������',
      CLSF_2_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ���䣩',
      CLSF_3_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ���䣩',
      BNK_ID CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '���б�ʶ',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      FUND_COMP_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'TEST_����˾����' NOT NULL,
      FUND_COMP_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'TEST_����˾����',
      FUND_COMP_STS VARCHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE 'TEST_����˾״̬',
      REG_CAP DECIMAL(20,4) TITLE 'TEST_ע���ʱ�',
      SET_UP_DATE DATE FORMAT 'YYYYMMDD' TITLE 'TEST_��������')
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      STK_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      CAP_TYPE_CDE CHAR(5) CHARACTER SET LATIN CASESPECIFIC TITLE '�ɱ����ʹ���' NOT NULL,
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_VOL DECIMAL(19,3) TITLE '֤ȯ����' NOT NULL,
      EQUT_SORT CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ȩ�����' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      CALENDAR_DATE DATE FORMAT 'YYYYMMDD' TITLE '����' NOT NULL,
      YEAR_OF_CALENDAR INTEGER TITLE '��',
      QUARTER_OF_YEAR INTEGER TITLE '��',
      MONTH_OF_YEAR INTEGER TITLE '��',
      DAY_OF_WEEK INTEGER TITLE '��',
      DAY_OF_MONTH INTEGER TITLE '��',
      MON_YEAR_AND_WEEK INTEGER TITLE '���ܣ���һ��׼',
      FRI_YEAR_AND_WEEK INTEGER TITLE '���ܣ������׼',
      SAT_YEAR_AND_WEEK INTEGER TITLE '���ܣ�������׼',
      SUN_YEAR_AND_WEEK INTEGER TITLE '���ܣ����ձ�׼',
      IF_TRADDAY INTEGER TITLE '�Ƿ����մ���',
      LAST_TRADDAY DATE FORMAT 'YYYYMMDD' TITLE '��һ��������',
      W_TRADDAY INTEGER TITLE '���ܵڼ���������',
      M_TRADDAY INTEGER TITLE '���µڼ���������',
      Q_TRADDAY INTEGER TITLE '�����ڼ���������',
      Y_TRADDAY INTEGER TITLE '����ڼ���������',
      EOM_SIGN INTEGER TITLE '��ĩ��־����',
      EOQ_SIGN INTEGER TITLE '��ĩ��־����',
      EOY_SIGN INTEGER TITLE '��ĩ��־����',
      TRADDAY_EOM_SIGN INTEGER TITLE '��������ĩ��־����',
      TRADDAY_EOQ_SIGN INTEGER TITLE '�����ռ�ĩ��־����',
      TRADDAY_EOY_SIGN INTEGER TITLE '��������ĩ��־����',
      TRADDAY_EOW_SIGN INTEGER TITLE '��������ĩ��־����',
      EOW_SIGN INTEGER TITLE '��ĩ ��־����')
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      STK_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      CAP_TYPE_CDE CHAR(5) CHARACTER SET LATIN CASESPECIFIC TITLE '�ɱ����ʹ���' NOT NULL,
      CHG_DATE DATE FORMAT 'YYYYMMDD' TITLE '�䶯����' NOT NULL,
      CAP_CHG_RESN_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '�ɱ��䶯ԭ�����' NOT NULL,
      CHG_VOL DECIMAL(18,2) TITLE '�䶯����' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      rgn_cd VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������' NOT NULL,
      rgn_name VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������' NOT NULL)
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
      rgn_cd VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ͻ������' NOT NULL,
      rgn_name VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ͻ������' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      CLSF_3 CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '��������',
      MKT_TYPE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г�����',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻����',
      NEGT_ID CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '��ͨ��ʶ',
      HOLD_VOL DECIMAL(22,0) TITLE '��������',
      HOLD_AMT DECIMAL(22,0) TITLE '���н�Ԫ��',
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      ORG_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '������ʶ' NOT NULL,
      ORG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '����ȫ��' NOT NULL,
      ORG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      ENG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӣ��ȫ��' NOT NULL,
      ENG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӣ�ļ��' NOT NULL,
      IDSTR_SORT_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      ORG_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��֯��������' NOT NULL,
      BIZ_LIC_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӫҵִ�պ�' NOT NULL,
      UNFY_SCTY_CRDT_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'ͳһ������ô���' NOT NULL,
      BIZ_REG_REG_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ע��ǼǺ�' NOT NULL,
      SET_UP_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      CORP_REP VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���' NOT NULL,
      CORP_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      CORP_REP_CERT_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���֤�����ʹ���' NOT NULL,
      CORP_REP_CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���֤������' NOT NULL,
      REG_CAP_CRNC_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE 'ע���ʱ����ִ���' NOT NULL,
      REG_CAP DECIMAL(38,4) TITLE 'ע���ʱ�' NOT NULL,
      REG_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ע���ַ' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ͨ�ŵ�ַ' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CNTC_PSN VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵ��' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵ�绰' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '�ֻ�����' NOT NULL,
      FAX_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      MANG_RANG VARCHAR(4000) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ӫ��Χ' NOT NULL,
      UNIT_CHRC_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '��λ���ʴ���' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�������־' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '������Դ��' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_CTG VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ���',
      TRAD_PLAC_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������',
      STD_COMP_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��׼��˾����',
      WDI_COMP_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��ù�˾����',
      EXCH_COMP_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��������˾����',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      EXCH_NBR CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������',
      VART_CNTR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ֺ�Լ',
      VART_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ִ���',
      VART_CHN_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ��������',
      VART_AAGT_CLSF VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ��һ������',
      VART_SCND_CLSF VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ֶ�������',
      MAIN_CNTR_INDC VARCHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������Լ��־',
      OPN_PRC DECIMAL(24,6) TITLE '���̼�',
      CLS_PRC DECIMAL(24,6) TITLE '���̼�',
      TOP_PRC DECIMAL(24,6) TITLE '��߼�',
      MIN_PRC DECIMAL(24,6) TITLE '��ͼ�',
      YDY_SETL_PRC DECIMAL(24,6) TITLE '������',
      TS_SETL_PRC DECIMAL(24,6) TITLE '������',
      S_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ��������',
      TRAD_QTT DECIMAL(24,0) TITLE '�ɽ���',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ���',
      PSTN_QTT DECIMAL(24,0) TITLE '�ֲ���',
      CNTR_MLTPR VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Լ����',
      PSTN_AMT DECIMAL(24,6) TITLE '�ֲֽ��')
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      SPVSR VARCHAR(3000) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      CSTD_PSN VARCHAR(800) CHARACTER SET LATIN CASESPECIFIC TITLE '�й���' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL GENERATED BY DEFAULT AS IDENTITY
           (START WITH 100000000000 
            INCREMENT BY 1 
            MINVALUE -999999999999 
            MAXVALUE 999999999999 
            NO CYCLE),
      PTY_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(60) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      FUND_CNTR DECIMAL(18,0) TITLE '�����ͬ' NOT NULL,
      FUND_CLCT_DATE TIMESTAMP(0) FORMAT 'YYYYMMDDBHH:MI:SS' TITLE '����ļ������' NOT NULL,
      FUND_MAT_DATE TIMESTAMP(0) FORMAT 'YYYYMMDDBHH:MI:SS' TITLE '����������' NOT NULL,
      PROD_NAME VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʒ����' NOT NULL,
      PROD_STS DECIMAL(18,0) TITLE '��Ʒ״̬' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      PROD_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʒ��ʶ' NOT NULL,
      PROD_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʒȫ��' NOT NULL,
      PROD_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʒ���' NOT NULL,
      ENG_FNAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӣ��ȫ��' NOT NULL,
      ENG_ABBR VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӣ�ļ��' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      GND_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�Ա����' NOT NULL,
      BORN_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      ORG_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��֯��������' NOT NULL,
      BIZ_LIC_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӫҵִ�պ�' NOT NULL,
      UNFY_SCTY_CRDT_CDE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'ͳһ������ô���' NOT NULL,
      BIZ_REG_REG_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ע��ǼǺ�' NOT NULL,
      CORP_REP VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���' NOT NULL,
      CORP_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      CORP_REP_CERT_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���֤�����ʹ���' NOT NULL,
      CORP_REP_CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '���˴���֤������' NOT NULL,
      REG_CAP_CRNC_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE 'ע���ʱ����ִ���' NOT NULL,
      REG_CAP DECIMAL(38,4) TITLE 'ע���ʱ�' NOT NULL,
      REG_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ע���ַ' NOT NULL,
      COMM_ADDR VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE 'ͨ�ŵ�ַ' NOT NULL,
      PSTL_CDE VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CNTC_PSN VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵ��' NOT NULL,
      CNTC_TEL VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ϵ�绰' NOT NULL,
      MOB_NBR VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '�ֻ�����' NOT NULL,
      FAX_NBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      EMAIL VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      MANG_RANG VARCHAR(4000) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ӫ��Χ' NOT NULL,
      UNIT_CHRC_CDE VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '��λ���ʴ���' NOT NULL,
      DOM_ABR_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�������־' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      DATA_SRC_TB VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '������Դ��' NOT NULL,
      RSRV1 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��1' NOT NULL,
      RSRV2 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��2' NOT NULL,
      RSRV3 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��3' NOT NULL,
      RSRV4 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��4' NOT NULL,
      RSRV5 VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ԥ��5' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      PROD_TYPE VARCHAR(3000) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʒ����' NOT NULL,
      CRT_DATE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      MAT_DATE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��Ӣ����' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����Ӣ����' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����ֵ' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��������' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ӣ����' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ч��־' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��Ӣ����' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����Ӣ����' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����ֵ' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��������' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ӣ����' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ч��־' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      CONS_SEC_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '�ɷ�֤ȯ����' NOT NULL,
      EFCTV_DATE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ч����' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫ���ʹ���' NOT NULL,
      ROLE_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '���ƥ��ȴ���' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '״̬' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      STK_PAR_VAL DECIMAL(15,8) TITLE '��Ʊ��ֵ' NOT NULL,
      FRT_ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '�״η�������' NOT NULL,
      MKT_LVL_CDE CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '�г���δ���' NOT NULL,
      ISSR_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '�����˱�ʶ' NOT NULL,
      ENG_FNAME VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ӣ��ȫ��' NOT NULL,
      MAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      CRNC_UNIT CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���ҵ�λ' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      MKT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�г�',
      CNTR_NBR_NBR VARCHAR(22) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ͬ��ţ����',
      ITP_SEC_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���뷽֤ȯ�˻�',
      RCP_SEC_ACCT VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڳ���֤ȯ�˻�',
      PLG_A_SHR_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ѺA�ɴ���',
      STK_CHRC VARCHAR(14) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɷ�����',
      INIT_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ��������',
      PLG_VOL DECIMAL(18,0) TITLE '��Ѻ����',
      INIT_TRAD_AMT DECIMAL(18,2) TITLE '��ʼ���׽��',
      RPCHS_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '���ؽ�������',
      RPCHS_TRAD_AMT DECIMAL(18,2) TITLE '���ؽ��׽��',
      RMAK VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ע',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����������',
      SEC_ID VARCHAR(12) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯID',
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����',
      IC_TYPE VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ��������' NOT NULL,
      IDSTR_ID VARCHAR(38) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵID',
      IDSTR_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ҵ����',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      FUTRS_VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '�ڻ�Ʒ�ִ���' NOT NULL,
      FUTRS_VART_ABBR VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE '�ڻ�Ʒ�ּ��' NOT NULL,
      MIN_TRAD_DPST_RATE DECIMAL(20,4) TITLE '��ͽ��ױ�֤����' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      BOND_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'ծȯ����' NOT NULL,
      RTAG_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����������ʶ' NOT NULL,
      RATN_DATE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      DEBT_RATN VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'ծ������' NOT NULL,
      BOND_LVL VARCHAR(40) CHARACTER SET LATIN CASESPECIFIC TITLE 'ծȯ�ȼ�' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      VART_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      ROLE_TYPE_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫ���ʹ���' NOT NULL,
      ROLE_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��ɫID' NOT NULL,
      PTY_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����ID' NOT NULL,
      PTY_SORT_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '����������' NOT NULL,
      PTY_NAME VARCHAR(400) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CERT_SORT_CDE CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '֤��������' NOT NULL,
      CERT_NBR VARCHAR(64) CHARACTER SET LATIN CASESPECIFIC TITLE '֤������' NOT NULL,
      IDNTF_INFO_UNIQ_ID DECIMAL(12,0) TITLE '������ϢΨһ��ʶ' NOT NULL,
      IDNT_MATCH_DGRE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '���ƥ��ȴ���' NOT NULL,
      STS CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '״̬' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      TRAD_PLAC_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      OPT_CNTR_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ȩ��Լ����' NOT NULL,
      EXEC_MODE_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ȩ��ʽ����' NOT NULL,
      EXCT_PRC DECIMAL(15,10) TITLE 'ִ�м۸�' NOT NULL,
      UND_SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '���֤ȯ����' NOT NULL,
      UND_SEC_ABBR VARCHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '���֤ȯ���' NOT NULL,
      OPT_EXEC_PRC DECIMAL(15,10) TITLE '��Ȩ��Ȩ�۸�' NOT NULL,
      FST_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '�׸���������' NOT NULL,
      LAST_TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '���������' NOT NULL,
      OPT_EXEC_DATE DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ȩ����' NOT NULL,
      OPT_DLM_DATE DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��������' NOT NULL,
      OPT_MAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��������' NOT NULL,
      PROD_VRSN CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʒ�汾' NOT NULL,
      UNIT_DPST DECIMAL(18,3) TITLE '��λ��֤��' NOT NULL,
      WHL_HAND_VOL DECIMAL(16,0) TITLE '��������' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      TRAD_PLAC_CDE CHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '���׳�������' NOT NULL,
      BOND_CDE VARCHAR(200) CHARACTER SET LATIN CASESPECIFIC TITLE 'ծȯ����' NOT NULL,
      ISSR_ID VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '�����˱�ʶ' NOT NULL,
      BOND_PAR_VAL DECIMAL(18,2) TITLE 'ծȯ��ֵ' NOT NULL,
      ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      ISS_PRC DECIMAL(18,4) TITLE '���м۸�' NOT NULL,
      MAT_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL,
      PAR_RATE VARCHAR(500) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʊ������' NOT NULL,
      MIDL_SML_ENTRP_DEBT_INDC VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��С��ҵծ��־' NOT NULL,
      BOND_LVL VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'ծȯ�ȼ�' NOT NULL,
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����' NOT NULL,
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      VART_CDE_SORT VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ������' NOT NULL,
      VART_CDE_SORT_NAME VARCHAR(80) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ����������' NOT NULL,
      VART_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ���ֵ' NOT NULL,
      VART_CDE_DESC VARCHAR(80) CHARACTER SET LATIN CASESPECIFIC TITLE 'Ʒ�ִ�������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      SRC_TB_NBR VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����' NOT NULL,
      SRC_TB_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��Ӣ����' NOT NULL,
      SRC_CDE_ENAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����Ӣ����' NOT NULL,
      SRC_CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ����ֵ' NOT NULL,
      SRC_CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'Դ��������' NOT NULL,
      CDE_ENG_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '����Ӣ����' NOT NULL,
      CDE_VAL VARCHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      VLD_INDC CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ч��־' NOT NULL,
      SUBJECT CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
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
      CDE_SORT VARCHAR(30) CHARACTER SET LATIN CASESPECIFIC TITLE '�������' NOT NULL,
      CDE_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      CDE_VAL VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE '����ֵ' NOT NULL,
      CDE_DESC VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��������' NOT NULL,
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������' NOT NULL)
PRIMARY INDEX ( CDE_SORT );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-

.quit
 *** You are now logged off from the DBC.
 *** Exiting BTEQ...
 *** RC (return code) = 0 
