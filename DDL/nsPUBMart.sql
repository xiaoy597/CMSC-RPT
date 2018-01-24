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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������',
      OPN_POINT DECIMAL(24,6) TITLE '���̵���',
      PRE_CLS_POINT DECIMAL(24,6) TITLE 'ǰ���̵���',
      CLS_POINT DECIMAL(24,6) TITLE '���̵���',
      MAX_POINT DECIMAL(24,6) TITLE '��ߵ���',
      MIN_POINT DECIMAL(24,6) TITLE '��͵���',
      D_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      Y_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      RETN DECIMAL(24,6) TITLE '����������',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����',
      TRAD_QTT DECIMAL(24,6) TITLE '�ɽ���',
      TCAP DECIMAL(24,6) TITLE '�ܹɱ�',
      NEGT_CAP DECIMAL(24,6) TITLE '��ͨ�ɱ�',
      TOT_MKT_VAL DECIMAL(24,6) TITLE '����ֵ',
      NEGT_MKT_VAL DECIMAL(24,6) TITLE '��ͨ��ֵ',
      MKT_VAL_TNOV_RATE DECIMAL(24,6) TITLE '��ֵ������',
      TRAD_QTT_TNOV_RATE DECIMAL(24,6) TITLE '�ɽ���������',
      AVG_STK_PRC DECIMAL(24,6) TITLE 'ƽ���ɼ�',
      DATA_SRC_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Դ����')
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
      biz_date DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������',
      cap_type VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����',
      PRESS_VAL DECIMAL(18,2) TITLE 'ѹ������',
      st_rpchs_plg_gap DECIMAL(30,7) TITLE '��֤��ȱ��',
      init_cntr_nbr_ini DECIMAL(30,0) TITLE 'ǿ�ƽ��ױ�������',
      init_cntr_nbr_tot DECIMAL(30,0) TITLE 'ǿ�ƽ��ױ�����ĸ',
      itp_sec_acct_ini DECIMAL(30,0) TITLE '��������Ѻ�˻�������',
      itp_sec_acct_tot DECIMAL(30,0) TITLE '��������Ѻ�˻�����ĸ',
      forc_lqd_nbr_ini DECIMAL(30,0) TITLE 'ǿ��ƽ�ֽ���������',
      forc_lqd_nbr_TOT DECIMAL(30,0) TITLE 'ǿ��ƽ�ֽ�������ĸ',
      forc_lqd_val_ini DECIMAL(30,7) TITLE 'ǿ��ƽ�ֽ��׽�����',
      forc_lqd_val_TOT DECIMAL(30,7) TITLE 'ǿ��ƽ�ֽ��׽���ĸ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IDSTR_CTGR_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ' NOT NULL)
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      CLS_PRC DECIMAL(24,6) TITLE '���̼�',
      PRE_CLS_PRC DECIMAL(24,6) TITLE 'ǰ���̼�',
      RETN DECIMAL(24,6) TITLE '����������',
      TCAP_EXCH DECIMAL(24,6) TITLE '�ܹɱ�_������',
      LSTN_NEGT_CAP_EXCH DECIMAL(24,6) TITLE '��������ͨ�ɱ�_������',
      TOT_MKT_VAL_EXCH DECIMAL(24,6) TITLE '����ֵ_������',
      LSTN_NEGT_MKT_VAL_EXCH DECIMAL(24,6) TITLE '��������ͨ��ֵ_������',
      TCAP_CSDC DECIMAL(24,6) TITLE '�ܹɱ�_�е�',
      LSTN_NEGT_CAP_CSDC DECIMAL(24,6) TITLE '��������ͨ�ɱ�_�е�',
      TOT_MKT_VAL_CSDC DECIMAL(24,6) TITLE '����ֵ_�е�',
      LSTN_NEGT_MKT_VAL_CSDC DECIMAL(24,6) TITLE '��������ͨ��ֵ_�е�',
      TRAD_QTT DECIMAL(24,6) TITLE '�ɽ���',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����',
      STK_STS CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ״̬')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ���߿���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ϣ��' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ�Ǽ���' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      DIVD_ABBR VARCHAR(150) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������' NOT NULL,
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '�ֺ����' NOT NULL,
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ��˰ǰ��' NOT NULL,
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ���(˰��)' NOT NULL,
      DP_RATE_DENOM DECIMAL(24,4) TITLE '��Ϣ������ĸ' NOT NULL,
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '��Ϣ��������(˰ǰ)' NOT NULL,
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '��Ϣ�������ӣ�˰��' NOT NULL,
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '����ֺ��ܹɱ�' NOT NULL,
      CRNC_CDE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ҵ���' NOT NULL,
      MDL_PRC DECIMAL(24,6) TITLE '�м��' NOT NULL)
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '������Ѻ����',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '�����Ѻ����',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '��ʼ���׽��',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '��ʼ���ױ���',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '���ؽ��׽��',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '���ؽ��ױ���',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '�����س�ʼ���׽��',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '������֤ȯ����',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '������֤ȯ��ֵ',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '��ʼ��Ѻ֤ȯ����',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '������Ѻ����',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '�����Ѻ����',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '��ʼ���׽��',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '��ʼ���ױ���',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '���ؽ��׽��',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '���ؽ��ױ���',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '�����س�ʼ���׽��',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '������֤ȯ����',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '������֤ȯ��ֵ',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '��ʼ��Ѻ֤ȯ����',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      RISK_ALT_INDC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���վ�ʾ��־' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ȩ��Լ��Ʒ����' NOT NULL,
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      BUY_VOL_SUBSC DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      SAL_VOL_SUBSC DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      BUY_VOL_PUT DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      SAL_VOL_PUT DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      BUY_AMT_SUBSC DECIMAL(24,6) TITLE '�Ϲ�������' NOT NULL,
      SAL_AMT_SUBSC DECIMAL(24,6) TITLE '�Ϲ��������' NOT NULL,
      BUY_AMT_PUT DECIMAL(24,6) TITLE '�Ϲ�������' NOT NULL,
      SAL_AMT_PUT DECIMAL(24,6) TITLE '�Ϲ��������' NOT NULL,
      END_RIGHT_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������' NOT NULL,
      END_OBLG_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '�Ϲ������������' NOT NULL,
      END_RIGHT_PSTN_QTT_PUT DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������' NOT NULL,
      END_OBLG_PSTN_QTT_PUT DECIMAL(24,0) TITLE '�Ϲ������������' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻���',
      SEC_ACCT_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻�����',
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����',
      CLSF_1 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ������',
      CLSF_2_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ�ֹ���ֵ��',
      CLSF_3_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ�ֹ���ֵ��',
      Cmsmc_CLSF_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '��֤�����ࣨ�ֹ���ֵ��',
      CLSF_2_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ���䣩',
      CLSF_3_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ���䣩',
      END_HOLD_MKT_VAL_MAX DECIMAL(22,2) TITLE '��ĩ�ֹ���ֵ���ֵ',
      END_HOLD_MKT_VAL_MAX_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ĩ�ֹ���ֵ���ֵ����',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻����')
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
      INVST_SORT_CDE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ����������' NOT NULL,
      INVST_SORT_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�����������' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ȩ��Լ��Ʒ����',
      INVST_TYPE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ��������',
      SUBSC_BUY_VOL DECIMAL(24,0) TITLE '�Ϲ���������',
      SUBSC_SAL_VOL DECIMAL(24,0) TITLE '�Ϲ���������',
      PUT_BUY_VOL DECIMAL(24,0) TITLE '�Ϲ���������',
      PUT_SAL_VOL DECIMAL(24,0) TITLE '�Ϲ���������',
      SUBSC_BUY_AMT DECIMAL(24,6) TITLE '�Ϲ�������',
      SUBSC_SAL_AMT DECIMAL(24,6) TITLE '�Ϲ��������',
      PUT_BUY_AMT DECIMAL(24,6) TITLE '�Ϲ�������',
      PUT_SAL_AMT DECIMAL(24,6) TITLE '�Ϲ��������',
      SUBSC_RIGHT_PSTN_QTT DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������',
      SUBSC_OBLG_PSTN_QTT DECIMAL(24,0) TITLE '�Ϲ������������',
      PUT_RIGHT_PSTN_QTT DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������',
      PUT_OBLG_PSTN_QTT DECIMAL(24,0) TITLE '�Ϲ������������')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      GUART_VOL DECIMAL(24,0) TITLE '��������',
      GUART_MKT_VAL DECIMAL(24,6) TITLE '������ֵ')
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
      DB_NAME VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����' NOT NULL,
      TB_NAME VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����' NOT NULL,
      PK_COLUMN VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�����ֶ�' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      BIZ_INDC CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ҵ���־' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������',
      BUY_VOL DECIMAL(24,6) TITLE '��������',
      SAL_VOL DECIMAL(24,6) TITLE '��������',
      BUY_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '������_ԭ��',
      SAL_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '�������_ԭ��',
      BUY_AMT_RMB DECIMAL(24,6) TITLE '������_�����',
      SAL_AMT_RMB DECIMAL(24,6) TITLE '�������_�����',
      BUY_CNT DECIMAL(24,0) TITLE '�������',
      SAL_CNT DECIMAL(24,0) TITLE '��������',
      PSTN_VOL DECIMAL(24,6) TITLE '�ֲ�����',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '�ֲ���ֵ_ԭ��',
      PSTN_MKT_VAL_RMB DECIMAL(24,6) TITLE '�ֲ���ֵ_�����')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      SC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����',
      MANG_CLSF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ӫ����',
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '������Ѻ����',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '�����Ѻ����',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '��ʼ���׽��',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '��ʼ���ױ���',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '���ؽ��׽��',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '���ؽ��ױ���',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '�����س�ʼ���׽��',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '������֤ȯ����',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '������֤ȯ��ֵ',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '��ʼ��Ѻ֤ȯ����',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      CLS_PRC DECIMAL(24,6) TITLE '���̼�',
      PRE_CLS_PRC DECIMAL(24,6) TITLE 'ǰ���̼�',
      RETN DECIMAL(24,6) TITLE '����������',
      TCAP_EXCH DECIMAL(24,6) TITLE '�ܹɱ�_������',
      LSTN_NEGT_CAP_EXCH DECIMAL(24,6) TITLE '��������ͨ�ɱ�_������',
      TOT_MKT_VAL_EXCH DECIMAL(24,6) TITLE '����ֵ_������',
      LSTN_NEGT_MKT_VAL_EXCH DECIMAL(24,6) TITLE '��������ͨ��ֵ_������',
      TCAP_CSDC DECIMAL(24,6) TITLE '�ܹɱ�_�е�',
      LSTN_NEGT_CAP_CSDC DECIMAL(24,6) TITLE '��������ͨ�ɱ�_�е�',
      TOT_MKT_VAL_CSDC DECIMAL(24,6) TITLE '����ֵ_�е�',
      LSTN_NEGT_MKT_VAL_CSDC DECIMAL(24,6) TITLE '��������ͨ��ֵ_�е�',
      TRAD_QTT DECIMAL(24,6) TITLE '�ɽ���',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����',
      STK_STS CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ״̬')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����',
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������',
      DOM_FORN_INDC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���ھ����־',
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ���߿���Ͻ��',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ȩ��Լ��Ʒ����' NOT NULL,
      INVST_TYPE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ��������' NOT NULL,
      SUBSC_BUY_VOL DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      SUBSC_SAL_VOL DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      PUT_BUY_VOL DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      PUT_SAL_VOL DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      SUBSC_BUY_AMT DECIMAL(24,6) TITLE '�Ϲ�������' NOT NULL,
      SUBSC_SAL_AMT DECIMAL(24,6) TITLE '�Ϲ��������' NOT NULL,
      PUT_BUY_AMT DECIMAL(24,6) TITLE '�Ϲ�������' NOT NULL,
      PUT_SAL_AMT DECIMAL(24,6) TITLE '�Ϲ��������' NOT NULL,
      SUBSC_RIGHT_PSTN_QTT DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������' NOT NULL,
      SUBSC_OBLG_PSTN_QTT DECIMAL(24,0) TITLE '�Ϲ������������' NOT NULL,
      PUT_RIGHT_PSTN_QTT DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������' NOT NULL,
      PUT_OBLG_PSTN_QTT DECIMAL(24,0) TITLE '�Ϲ������������' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      EXCH_NBR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      sql_file_name VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ű���' NOT NULL,
      tar_table_name VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ŀ�����' NOT NULL,
      sou_db_name VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Դ�����' NOT NULL,
      sou_table_name VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Դ�����' NOT NULL)
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      GUART_VOL DECIMAL(24,0) TITLE '��������',
      GUART_MKT_VAL DECIMAL(24,6) TITLE '������ֵ')
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
      IDSTR_CDE VARCHAR(38) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      IDSTR_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL)
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
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      ISS_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      LIST_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      LSTN_BORD CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��',
      SEC_CTG CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ���',
      CAP DECIMAL(24,6) TITLE '�ɱ�',
      ISS_PRC DECIMAL(24,6) TITLE '���м۸�',
      FD_OPN_PRC DECIMAL(24,6) TITLE '���տ��̼�',
      FD_CLS_PRC DECIMAL(24,6) TITLE '�������̼�',
      OLN_ISS_LTRT DECIMAL(24,6) TITLE '���Ϸ�����ǩ��',
      ISS_PE DECIMAL(24,6) TITLE '������ӯ��',
      IPO_VOL DECIMAL(24,6) TITLE '�׷�����',
      IPO_FUND_RSN_AMT DECIMAL(24,6) TITLE '�׷����ʽ��',
      FD_OPN_CHG_RATE DECIMAL(24,6) TITLE '���տ����ǵ���',
      FD_CLS_CHG_RATE DECIMAL(24,6) TITLE '���������ǵ���',
      FD_CHG_RATE DECIMAL(24,6) TITLE '�����ǵ���',
      FD_TNOV_RATE DECIMAL(24,6) TITLE '���ջ�����',
      IF_BREK CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�Ƿ��Ʒ�',
      CLCT_BANKRL_TOT DECIMAL(24,6) TITLE 'ļ���ʽ�ϼ�',
      EST_CLCT_BANKRL DECIMAL(24,6) TITLE 'Ԥ��ļ���ʽ�',
      OSUB_RATE DECIMAL(24,6) TITLE '��ļ����')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      STK_INDX_FUTRS_VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ָ�ڻ�Ʒ�ִ���',
      IDX_CDE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������',
      OPN_POINT DECIMAL(24,6) TITLE '���̵���',
      CLS_POINT DECIMAL(24,6) TITLE '���̵���',
      MAX_POINT DECIMAL(24,6) TITLE '��ߵ���',
      MIN_POINT DECIMAL(24,6) TITLE '��͵���',
      TRAD_QTT DECIMAL(24,6) TITLE '�ɽ���',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����',
      MKT_VAL DECIMAL(24,6) TITLE '��ֵ',
      PE DECIMAL(24,6) TITLE '��ӯ��',
      PB DECIMAL(24,6) TITLE '�о���',
      DIVD_RATE DECIMAL(24,6) TITLE '��Ϣ��',
      RETN DECIMAL(24,6) TITLE '����������',
      D_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      W_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      M_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      Y_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      BIZ_INDC CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ҵ���־' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������',
      BUY_VOL DECIMAL(24,6) TITLE '��������',
      SAL_VOL DECIMAL(24,6) TITLE '��������',
      BUY_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '������_ԭ��',
      SAL_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '�������_ԭ��',
      BUY_AMT_RMB DECIMAL(24,6) TITLE '������_�����',
      SAL_AMT_RMB DECIMAL(24,6) TITLE '�������_�����',
      BUY_CNT DECIMAL(24,0) TITLE '�������',
      SAL_CNT DECIMAL(24,0) TITLE '��������',
      PSTN_VOL DECIMAL(24,6) TITLE '�ֲ�����',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '�ֲ���ֵ_ԭ��',
      PSTN_MKT_VAL_RMB DECIMAL(24,6) TITLE '�ֲ���ֵ_�����')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      STK_INDX_FUTRS_VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ָ�ڻ�Ʒ�ִ���',
      IDX_CDE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���б�ʶ',
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����',
      BUY_VOL DECIMAL(24,0) TITLE '��������',
      BUY_AMT DECIMAL(24,6) TITLE '������',
      SAL_VOL DECIMAL(24,0) TITLE '��������',
      SAL_AMT DECIMAL(24,6) TITLE '�������',
      BUY_AMT_MKT_PRC DECIMAL(24,6) TITLE '������_�м�',
      SAL_AMT_MKT_PRC DECIMAL(24,6) TITLE '�������_�м�',
      BUY_CNT DECIMAL(24,0) TITLE '�������',
      SAL_CNT DECIMAL(24,0) TITLE '��������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ȩ��Լ��Ʒ����',
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������',
      BUY_VOL_SUBSC DECIMAL(24,0) TITLE '�Ϲ���������',
      SAL_VOL_SUBSC DECIMAL(24,0) TITLE '�Ϲ���������',
      BUY_VOL_PUT DECIMAL(24,0) TITLE '�Ϲ���������',
      SAL_VOL_PUT DECIMAL(24,0) TITLE '�Ϲ���������',
      BUY_AMT_SUBSC DECIMAL(24,6) TITLE '�Ϲ�������',
      SAL_AMT_SUBSC DECIMAL(24,6) TITLE '�Ϲ��������',
      BUY_AMT_PUT DECIMAL(24,6) TITLE '�Ϲ�������',
      SAL_AMT_PUT DECIMAL(24,6) TITLE '�Ϲ��������',
      END_RIGHT_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������',
      END_OBLG_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '�Ϲ������������',
      END_RIGHT_PSTN_QTT_PUT DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������',
      END_OBLG_PSTN_QTT_PUT DECIMAL(24,0) TITLE '�Ϲ������������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      BOND_CLSF VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ծȯ����' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      SEC_LN_SAL_AMT DECIMAL(24,6) TITLE '��ȯ�������',
      BUY_STK_AS_VCR_AMT DECIMAL(24,6) TITLE '��ȯ��ȯ���',
      SEC_LN_LQD_AMT DECIMAL(24,6) TITLE '��ȯƽ�ֽ��',
      FIN_BUY_AMT DECIMAL(24,6) TITLE '����������',
      SLCPS_PAYBK_AMT DECIMAL(24,6) TITLE '��ȯ������',
      FIN_LQD_AMT DECIMAL(24,6) TITLE '����ƽ�ֽ��',
      GAGE_BUY_AMT DECIMAL(24,6) TITLE '����Ʒ������',
      GAGE_SAL_AMT DECIMAL(24,6) TITLE '����Ʒ�������',
      SEC_LN_SAL_VOL DECIMAL(24,0) TITLE '��ȯ��������',
      BUY_STK_AS_VCR_VOL DECIMAL(24,0) TITLE '��ȯ��ȯ����',
      SEC_LN_LQD_VOL DECIMAL(24,0) TITLE '��ȯƽ������',
      FIN_BUY_VOL DECIMAL(24,0) TITLE '������������',
      SLCPS_PAYBK_VOL DECIMAL(24,0) TITLE '��ȯ��������',
      FIN_LQD_VOL DECIMAL(24,0) TITLE '����ƽ������',
      GAGE_BUY_VOL DECIMAL(24,0) TITLE '����Ʒ��������',
      GAGE_SAL_VOL DECIMAL(24,0) TITLE '����Ʒ��������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      BANKRL_SORT VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ʽ����' NOT NULL,
      STC_AMT DECIMAL(24,6) TITLE '��ת֤���' NOT NULL,
      CTS_AMT DECIMAL(24,6) TITLE '֤ת�����' NOT NULL,
      SETL_BANKRL_BAL DECIMAL(24,6) TITLE '�����ʽ����' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FUTRS_UNFY_OPN_ACCT_CUST_CDE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�ͳһ�����ͻ�����' NOT NULL,
      CUST_WTHDR DECIMAL(24,6) TITLE '�ͻ�����' NOT NULL,
      CUST_DPST DECIMAL(24,6) TITLE '�ͻ����' NOT NULL,
      CUST_BANKRL_EQUT DECIMAL(24,6) TITLE '�ͻ��ʽ�Ȩ��' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      ETF_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ETF����',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      SEC_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻�' NOT NULL,
      TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������',
      OAP_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�',
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      LIST_DAYS DECIMAL(18,0) TITLE '��������',
      BUY_VOL DECIMAL(18,0) TITLE '��������',
      BUY_AMT DECIMAL(24,6) TITLE '������',
      BUY_CNT DECIMAL(18,0) TITLE '�������',
      SAL_VOL DECIMAL(18,0) TITLE '��������',
      SAL_AMT DECIMAL(24,6) TITLE '�������',
      SAL_CNT DECIMAL(18,0) TITLE '��������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      STK_CDE VARCHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      CLSF_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������',
      IC_NAME VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ��������',
      DATA_TIME TIMESTAMP(6) FORMAT 'YYYYMMDDBHH:MI:SS' TITLE '����ʱ��')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      STK_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɷ�����' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      STK_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɷ�����' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FUTRS_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ͷ�������',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻���',
      MKT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�г����',
      SEC_ACCT_SORT CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����',
      NEGT_TYPE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ͨ����',
      END_HOLD_STK_MKT_VAL DECIMAL(22,2) TITLE 'ͳ�����ڵ���ĩ���й�Ʊ��ֵ',
      CRNC CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����',
      EXCH_RT DECIMAL(18,6) TITLE '����')
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
      RPT_PRD DATE FORMAT 'YYYYMMDD' TITLE '������' NOT NULL,
      COMP_ID VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��˾ID' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_ABBR VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ���',
      IDSTR_CTGR_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ�������',
      IDSTR_CTGR_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ��������',
      IDSTR_CLASS_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ�������',
      IDSTR_CLASS_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ��������',
      PPDM_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������',
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������',
      TRDT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ͳ����ҵ',
      HIGH_ENERGY CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ߺ��ܲ�ҵ',
      MODERN_SRVC CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ִ�����ҵ',
      LIGHT_ASET CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���ʲ���ҵ',
      STRTG_EMERG CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ս��������ҵ',
      OVER_CAPACITY CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������ҵ',
      HDGS_CLSF_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�عɷ������',
      HDGS_CLSF_NAME VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�عɷ�������',
      INVNT DECIMAL(24,6) TITLE '���',
      ASET_TOT_AMT DECIMAL(24,6) TITLE '�ʲ��ܶ�',
      LBLT_TOT DECIMAL(24,6) TITLE '��ծ�ϼ�',
      NAST DECIMAL(24,6) TITLE '���ʲ�',
      CAP DECIMAL(24,6) TITLE '�ɱ�',
      BIZ_ENING DECIMAL(24,6) TITLE 'Ӫҵ����',
      SELL_CHRG DECIMAL(24,6) TITLE '���۷���',
      MNGMT_CHRG DECIMAL(24,6) TITLE '�������',
      FINA_CHRG DECIMAL(24,6) TITLE '�������',
      BIZ_PRFT DECIMAL(24,6) TITLE 'Ӫҵ����',
      PRFT_TOT_AMT DECIMAL(24,6) TITLE '�����ܶ�',
      INCM_TAX DECIMAL(24,6) TITLE '����˰',
      BIZ_TOT_ENING DECIMAL(24,6) TITLE 'Ӫҵ������',
      NET_PRFT DECIMAL(24,6) TITLE '������',
      NET_PRFT_TOT_AMT DECIMAL(24,6) TITLE '�������ܶ�',
      N_ALLOT_PRFT DECIMAL(24,6) TITLE 'δ��������',
      OA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE '��Ӫ������ֽ���������',
      IA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE 'Ͷ�ʻ�������ֽ���������',
      FA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE '���ʻ�������ֽ���������',
      LIST_INDC CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���б�־',
      ASET_LBLT_RATE DECIMAL(24,6) TITLE '�ʲ���ծ��',
      TOT_ASET_YLD DECIMAL(24,6) TITLE '���ʲ�������',
      NAST_YLD DECIMAL(24,6) TITLE '���ʲ�������',
      BIZ_ENING_PRFT_RATE DECIMAL(24,6) TITLE 'Ӫҵ����������',
      INVNT_TNOV_RATE DECIMAL(24,6) TITLE '�����ת�ʣ���λ���Σ�',
      ASET_TOT_AMT_EOLY DECIMAL(24,6) TITLE '�ʲ��ܶ�_����ĩ',
      NAST_EOLY DECIMAL(24,6) TITLE '���ʲ�_����ĩ',
      INVNT_EOLY DECIMAL(24,6) TITLE '���_����ĩ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      HDGS_CLSF VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�عɷ���' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      SC_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      SC_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      FIN_BAL DECIMAL(24,6) TITLE '�������' NOT NULL,
      SEC_LN_BAL DECIMAL(24,6) TITLE '��ȯ���' NOT NULL)
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
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ϣ��' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ�Ǽ���' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      DIVD_ABBR VARCHAR(150) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������' NOT NULL,
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '�ֺ����' NOT NULL,
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ��˰ǰ��' NOT NULL,
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ���(˰��)' NOT NULL,
      DP_RATE_DENOM DECIMAL(24,4) TITLE '��Ϣ������ĸ' NOT NULL,
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '��Ϣ��������(˰ǰ)' NOT NULL,
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '��Ϣ�������ӣ�˰��' NOT NULL,
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '����ֺ��ܹɱ�' NOT NULL,
      CRNC_CDE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ҵ���' NOT NULL,
      MDL_PRC DECIMAL(24,6) TITLE '�м��' NOT NULL)
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
      MKT_Type CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����' NOT NULL,
      TRAD_NBR VARCHAR(18) CHARACTER SET LATIN CASESPECIFIC TITLE '�ɽ����' NOT NULL,
      TRAD_Date DATE FORMAT 'YYYYMMDD' TITLE '�ɽ�����' NOT NULL,
      SEC_ACCT CHAR(10) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻�' NOT NULL,
      SEC_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      CRDT_TRAD_Type CHAR(2) CHARACTER SET LATIN CASESPECIFIC TITLE '����' NOT NULL,
      TRAD_Time INTEGER TITLE '�ɽ�ʱ��' NOT NULL,
      CSTD_Unit_ID CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '�й�ID' NOT NULL,
      TRAD_VOL DECIMAL(18,0) TITLE '�ɽ�����' NOT NULL,
      TRAD_Price DECIMAL(18,6) TITLE '�ɽ��۸�' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      VART_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IDSTR_CTGR_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      FIN_BAL DECIMAL(24,6) TITLE '�������',
      SEC_LN_BAL DECIMAL(24,6) TITLE '��ȯ���',
      SEC_LN_VOL DECIMAL(24,0) TITLE '��ȯ����',
      SEC_LN_MKT_VAL DECIMAL(24,6) TITLE '��ȯ��ֵ')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      BIZ_INDC CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ҵ���־' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      AH_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'A+H��ʶ' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      PRE_CLS_PRC DECIMAL(24,6) TITLE 'ǰ���̼�',
      CLS_PRC DECIMAL(24,6) TITLE '���̼�',
      TCAP DECIMAL(24,6) TITLE '�ܹɱ�',
      LSTN_NEGT_CAP DECIMAL(24,6) TITLE '��������ͨ�ɱ�',
      TOT_MKT_VAL DECIMAL(24,6) TITLE '����ֵ',
      LSTN_NEGT_MKT_VAL DECIMAL(24,6) TITLE '��������ͨ��ֵ',
      MKT_VAL_TNOV_RATE DECIMAL(24,6) TITLE '��ֵ������',
      CNVT_PREM_RATE DECIMAL(24,6) TITLE '�������',
      D_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      BUY_QTT DECIMAL(24,6) TITLE '������',
      SQTT DECIMAL(24,6) TITLE '������',
      BUY_AMT DECIMAL(24,6) TITLE '������',
      SAL_AMT DECIMAL(24,6) TITLE '�������',
      TRAD_QTT_FULL_MKT DECIMAL(24,6) TITLE '�ɽ���_ȫ�г�',
      TRAD_AMT_FULL_MKT DECIMAL(24,6) TITLE '�ɽ����_ȫ�г�',
      OVRS_TRAD_QTT DECIMAL(24,6) TITLE '���ճɽ���',
      OVRS_AMT DECIMAL(24,6) TITLE '���ս��')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      END_HOLD_MKT_VAL_MAX DECIMAL(22,2) TITLE '��ĩ�ֹ���ֵ���ֵ',
      END_HOLD_MKT_VAL_MAX_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ĩ�ֹ���ֵ���ֵ����')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������' NOT NULL,
      IDX_TABLE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_TABLE_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ���������' NOT NULL,
      IDX_VIEW VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ����ͼ��',
      IDX_S_CRIPT VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ��ű���',
      FREQ VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      RMAK VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ע')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      EXCH_NBR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      BOND_CLSF VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ծȯ����' NOT NULL,
      STK_INVST_SORT VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      FIN_BAL DECIMAL(24,6) TITLE '�������',
      SEC_LN_BAL DECIMAL(24,6) TITLE '��ȯ���',
      SEC_LN_VOL DECIMAL(24,0) TITLE '��ȯ����',
      SEC_LN_MKT_VAL DECIMAL(24,6) TITLE '��ȯ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ' NOT NULL)
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
      IDSTR_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      IDSTR_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����')
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
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ϣ��' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ�Ǽ���' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������' NOT NULL,
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������' NOT NULL,
      RIGHT_LIST_D DATE FORMAT 'YYYYMMDD' TITLE '���������' NOT NULL,
      EQUITY_REG_D_CLS_PRC DECIMAL(24,6) TITLE '��Ȩ�Ǽ������̼�' NOT NULL,
      RIGHT_PRC DECIMAL(24,6) TITLE '��ɼ�' NOT NULL,
      EXR_PRC DECIMAL(24,6) TITLE '��Ȩ��' NOT NULL,
      RIGHT_RATE DECIMAL(18,2) TITLE '��ɱ���' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻���',
      SEC_ACCT_NAME VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻�����',
      MKT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�г����',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����',
      CLSF_1 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����׼��һ������',
      CLSF_2 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����׼����������',
      CLSF_3 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����׼����������',
      Cmsmc_CLSF CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��֤������',
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���б�ʶ',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻���',
      MKT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�г����',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����',
      SEC_ACCT_STS CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻�״̬',
      SEC_ACCT_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻�����',
      BORN_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������',
      LMT_COMP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���۹�˾����',
      LMT_INVST_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ��������',
      LAB_VOL DECIMAL(18,0) TITLE '�������',
      LAB_MKT_VAL DECIMAL(22,2) TITLE '�����ֵ',
      INCR_HDG_VOL DECIMAL(18,0) TITLE '��������',
      INCR_HDG_AMT DECIMAL(22,2) TITLE '���ֽ��',
      RH_VOL DECIMAL(18,0) TITLE '��������',
      RH_AMT DECIMAL(22,2) TITLE '���ֽ��')
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
      AAGT_CLSF VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ������' NOT NULL,
      AAGT_CLSF_DESC VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ����������' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      SEC_EXCH_CDE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_ACCT_SORT VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����' NOT NULL,
      CAP_TYPE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����' NOT NULL,
      SEC_CLSF VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      FCPTL_INVST_ID VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ���߱�ʶ' NOT NULL,
      CRS_MGN_INVST_ID VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���г�Ͷ���߱�ʶ' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '�ֲ�����' NOT NULL,
      PSTN_MKT_VAL DECIMAL(24,6) TITLE '�ֲ���ֵ' NOT NULL)
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      STAT_ANGLE_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ͳ�ƽǶȱ���' NOT NULL,
      STAT_ANGLE_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ͳ�ƽǶ�����',
      STC_PE DECIMAL(24,6) TITLE '��̬��ӯ��',
      ROLN_PE DECIMAL(24,6) TITLE '������ӯ��',
      FORC_PE DECIMAL(24,6) TITLE 'Ԥ����ӯ��',
      PB DECIMAL(24,6) TITLE '�о���',
      DIVD_RATE DECIMAL(24,6) TITLE '��Ϣ��')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      TRAD_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1' NOT NULL,
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2' NOT NULL,
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ' NOT NULL)
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
      STAT_ANGLE_CLASS_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ͳ�ƽǶȴ������' NOT NULL,
      STAT_ANGLE_CLASS_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ͳ�ƽǶȴ�������',
      STAT_ANGLE_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ͳ�ƽǶȱ���' NOT NULL,
      STAT_ANGLE_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ͳ�ƽǶ�����')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������',
      TYP CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����' NOT NULL,
      IDX_VAL DECIMAL(10,7) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      VART_CNTR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ֺ�Լ' NOT NULL,
      VART_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      FUTRS_UNFY_OPN_ACCT_CUST_CDE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�ͳһ�����ͻ�����' NOT NULL,
      EXCH_CUST_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������ͻ�����' NOT NULL,
      EXCH_NBR VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������' NOT NULL,
      FC_MEMB_NBR VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ���˾��Ա��' NOT NULL,
      TRAD_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������־' NOT NULL,
      KPWH_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƽ�ֱ�־' NOT NULL,
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����' NOT NULL,
      TRAD_QTT DECIMAL(24,0) TITLE '�ɽ���' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      INVST_TYPE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ��������',
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������',
      AFP_SHR DECIMAL(24,6) TITLE '�깺�ݶ�',
      REDEM_SHR DECIMAL(24,6) TITLE '��طݶ�',
      BUY_AMT DECIMAL(24,6) TITLE '������',
      SAL_AMT DECIMAL(24,6) TITLE '�������',
      AFP_CNT DECIMAL(24,0) TITLE '�깺����',
      REDEM_CNT DECIMAL(24,0) TITLE '��ر���',
      BUY_CNT DECIMAL(24,0) TITLE '�������',
      SAL_CNT DECIMAL(24,0) TITLE '��������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      BANKRL_SORT CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ʽ����' NOT NULL,
      STC_AMT DECIMAL(24,6) TITLE '��ת֤���' NOT NULL,
      CTS_AMT DECIMAL(24,6) TITLE '֤ת�����' NOT NULL,
      SETL_BANKRL_BAL DECIMAL(24,6) TITLE '�����ʽ����')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      CRS_MGN_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���г�Ͷ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ' NOT NULL)
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
      DSPLY_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'չʾ���' NOT NULL,
      STD_CNTR_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��׼��Լ����' NOT NULL,
      STD_CNTR_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��׼��Լ����' NOT NULL,
      DSPLY_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'չʾ����' NOT NULL,
      DSPLY_NAME_ENG VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'չʾ����_Ӣ��' NOT NULL,
      UNIT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��λ' NOT NULL,
      FUTRS_EXCH_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�����������' NOT NULL,
      FUTRS_EXCH_CHN_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�������������' NOT NULL,
      LIST_DATE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL,
      DELS_DATE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL,
      FUTRS_VART_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ʒ�����' NOT NULL,
      FUTRS_VART_TYPE_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ʒ�����ʹ���' NOT NULL,
      FUTRS_VART_TYPE_CHN VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ʒ������_����' NOT NULL,
      FUTRS_VART_TYPE_ENG VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ʒ������_Ӣ��' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ȩ��Լ��Ʒ����',
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������',
      BUY_VOL_SUBSC DECIMAL(24,0) TITLE '�Ϲ���������',
      SAL_VOL_SUBSC DECIMAL(24,0) TITLE '�Ϲ���������',
      BUY_VOL_PUT DECIMAL(24,0) TITLE '�Ϲ���������',
      SAL_VOL_PUT DECIMAL(24,0) TITLE '�Ϲ���������',
      BUY_AMT_SUBSC DECIMAL(24,6) TITLE '�Ϲ�������',
      SAL_AMT_SUBSC DECIMAL(24,6) TITLE '�Ϲ��������',
      BUY_AMT_PUT DECIMAL(24,6) TITLE '�Ϲ�������',
      SAL_AMT_PUT DECIMAL(24,6) TITLE '�Ϲ��������',
      END_RIGHT_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������',
      END_OBLG_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '�Ϲ������������',
      END_RIGHT_PSTN_QTT_PUT DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������',
      END_OBLG_PSTN_QTT_PUT DECIMAL(24,0) TITLE '�Ϲ������������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      INVST_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ��������' NOT NULL,
      FIN_BAL DECIMAL(24,6) TITLE '�������' NOT NULL,
      SEC_LN_BAL DECIMAL(24,6) TITLE '��ȯ���' NOT NULL)
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
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ϣ��',
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ�Ǽ���',
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����',
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������',
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������',
      RIGHT_LIST_D DATE FORMAT 'YYYYMMDD' TITLE '���������' NOT NULL,
      EQUITY_REG_D_CLS_PRC DECIMAL(24,6) TITLE '��Ȩ�Ǽ������̼�',
      RIGHT_PRC DECIMAL(24,6) TITLE '��ɼ�',
      EXR_PRC DECIMAL(24,6) TITLE '��Ȩ��',
      RIGHT_RATE DECIMAL(18,2) TITLE '��ɱ���')
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
      PPDM_CDE_INTF VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������_�ӿ�' NOT NULL,
      PPDM_CDE_SYS_INR CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������_ϵͳ��' NOT NULL,
      BLNGS_INTF VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�����ӿ�' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      ETF_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ETF����',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      SEC_LN_SAL_AMT DECIMAL(24,6) TITLE '��ȯ�������',
      BUY_STK_AS_VCR_AMT DECIMAL(24,6) TITLE '��ȯ��ȯ���',
      SEC_LN_LQD_AMT DECIMAL(24,6) TITLE '��ȯƽ�ֽ��',
      FIN_BUY_AMT DECIMAL(24,6) TITLE '����������',
      SLCPS_PAYBK_AMT DECIMAL(24,6) TITLE '��ȯ������',
      FIN_LQD_AMT DECIMAL(24,6) TITLE '����ƽ�ֽ��',
      GAGE_BUY_AMT DECIMAL(24,6) TITLE '����Ʒ������',
      GAGE_SAL_AMT DECIMAL(24,6) TITLE '����Ʒ�������',
      SEC_LN_SAL_VOL DECIMAL(24,0) TITLE '��ȯ��������',
      BUY_STK_AS_VCR_VOL DECIMAL(24,0) TITLE '��ȯ��ȯ����',
      SEC_LN_LQD_VOL DECIMAL(24,0) TITLE '��ȯƽ������',
      FIN_BUY_VOL DECIMAL(24,0) TITLE '������������',
      SLCPS_PAYBK_VOL DECIMAL(24,0) TITLE '��ȯ��������',
      FIN_LQD_VOL DECIMAL(24,0) TITLE '����ƽ������',
      GAGE_BUY_VOL DECIMAL(24,0) TITLE '����Ʒ��������',
      GAGE_SAL_VOL DECIMAL(24,0) TITLE '����Ʒ��������')
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
      Stat_Date DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      Rate_CLSF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL,
      Rate_LLMT INTEGER TITLE '��������' NOT NULL,
      Rate_ULMT INTEGER TITLE '��������' NOT NULL,
      ST_RPCHS_AMT DECIMAL(24,6) TITLE '�����ؽ��',
      CNTR_CNT DECIMAL(24,0) TITLE '��Լ����',
      ACCT_VOL DECIMAL(24,0) TITLE '�˻���')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ���� ' NOT NULL,
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      SEC_EXCH_CDE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_ACCT_SORT VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����' NOT NULL,
      CAP_TYPE VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����' NOT NULL,
      SEC_CLSF VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      FCPTL_INVST_ID VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ���߱�ʶ' NOT NULL,
      CRS_MGN_INVST_ID VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���г�Ͷ���߱�ʶ' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '�ֲ�����',
      PSTN_MKT_VAL DECIMAL(24,6) TITLE '�ֲ���ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      SEC_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻�' NOT NULL,
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������',
      OAP_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�',
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      AFP_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�깺����',
      AFP_MODE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�깺��ʽ',
      AFP_DATE DATE FORMAT 'YYYYMMDD' TITLE '�깺����',
      AFP_TIME INTEGER TITLE '�깺ʱ��',
      DATA_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      VLD_AFP_VOL DECIMAL(18,0) TITLE '��Ч�깺����',
      AFP_PRC DECIMAL(24,6) TITLE '�깺�۸�',
      CHK_MKT_CPT DECIMAL(24,6) TITLE '�����ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������',
      LMT_COMP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���۹�˾����',
      LMT_INVST_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ��������',
      LAB_VOL DECIMAL(18,0) TITLE '�������',
      LAB_MKT_VAL DECIMAL(22,2) TITLE '�����ֵ',
      INCR_HDG_VOL DECIMAL(18,0) TITLE '��������',
      INCR_HDG_AMT DECIMAL(22,2) TITLE '���ֽ��',
      RH_VOL DECIMAL(18,0) TITLE '��������',
      RH_AMT DECIMAL(22,2) TITLE '���ֽ��')
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
      TRAD_DATE DATE FORMAT 'YYYYMMDD' TITLE '�ɽ�����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_ACCT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻�' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      CRDT_TRAD_TYPE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���ý�������' NOT NULL,
      TRAD_VOL DECIMAL(24,0) TITLE '�ɽ�����',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����',
      TRAD_CNT DECIMAL(24,0) TITLE '���ױ���')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      STK_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      STK_INVST_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ��������',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '������Ѻ����',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '�����Ѻ����',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '��ʼ���׽��',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '��ʼ���ױ���',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '���ؽ��׽��',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '���ؽ��ױ���',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '�����س�ʼ���׽��',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '������֤ȯ����',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '������֤ȯ��ֵ',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '��ʼ��Ѻ֤ȯ����',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
      IVST_GUART_SC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ��֤ȯ��˾����' NOT NULL,
      IVST_GUART_SC_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ��֤ȯ��˾����' NOT NULL,
      CORR_RLTN_TYPE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ӧ��ϵ����' NOT NULL,
      CORR_SEC_ORG_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ӧ֤ȯ��������' NOT NULL,
      CORR_SEC_ORG_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ӧ֤ȯ��������' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      BANKRL_SORT CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ʽ����' NOT NULL,
      STC_AMT DECIMAL(24,6) TITLE '��ת֤���' NOT NULL,
      CTS_AMT DECIMAL(24,6) TITLE '֤ת�����' NOT NULL,
      SETL_BANKRL_BAL DECIMAL(24,6) TITLE '�����ʽ����')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      DOM_FORN_INDC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���ھ����־' NOT NULL,
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ���߿���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ���߿���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1' NOT NULL,
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2' NOT NULL,
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3' NOT NULL,
      EXCH_NBR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������' NOT NULL,
      FUTRS_SORT VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ����' NOT NULL,
      VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������',
      TYP CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����',
      IDX_VAL DECIMAL(10,7) TITLE 'ָ��ֵ')
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
      RPT_PRD DATE FORMAT 'YYYYMMDD' TITLE '������' NOT NULL,
      COMP_ID VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��˾ID' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_ABBR VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ���',
      IDSTR_CTGR_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ�������',
      IDSTR_CTGR_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ��������',
      IDSTR_CLASS_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ�������',
      IDSTR_CLASS_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ��������',
      PPDM_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������',
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������',
      TRDT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ͳ����ҵ',
      HIGH_ENERGY CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ߺ��ܲ�ҵ',
      MODERN_SRVC CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ִ�����ҵ',
      LIGHT_ASET CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���ʲ���ҵ',
      STRTG_EMERG CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ս��������ҵ',
      OVER_CAPACITY CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������ҵ',
      HDGS_CLSF_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�عɷ������',
      HDGS_CLSF_NAME VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�عɷ�������',
      INVNT DECIMAL(24,6) TITLE '���',
      ASET_TOT_AMT DECIMAL(24,6) TITLE '�ʲ��ܶ�',
      LBLT_TOT DECIMAL(24,6) TITLE '��ծ�ϼ�',
      NAST DECIMAL(24,6) TITLE '���ʲ�',
      CAP DECIMAL(24,6) TITLE '�ɱ�',
      BIZ_ENING DECIMAL(24,6) TITLE 'Ӫҵ����',
      SELL_CHRG DECIMAL(24,6) TITLE '���۷���',
      MNGMT_CHRG DECIMAL(24,6) TITLE '�������',
      FINA_CHRG DECIMAL(24,6) TITLE '�������',
      BIZ_PRFT DECIMAL(24,6) TITLE 'Ӫҵ����',
      PRFT_TOT_AMT DECIMAL(24,6) TITLE '�����ܶ�',
      INCM_TAX DECIMAL(24,6) TITLE '����˰',
      BIZ_TOT_ENING DECIMAL(24,6) TITLE 'Ӫҵ������',
      NET_PRFT DECIMAL(24,6) TITLE '������',
      NET_PRFT_TOT_AMT DECIMAL(24,6) TITLE '�������ܶ�',
      N_ALLOT_PRFT DECIMAL(24,6) TITLE 'δ��������',
      OA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE '��Ӫ������ֽ���������',
      IA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE 'Ͷ�ʻ�������ֽ���������',
      FA_CASH_FLOW_NET_AMT DECIMAL(24,6) TITLE '���ʻ�������ֽ���������',
      LIST_INDC CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���б�־',
      ASET_LBLT_RATE DECIMAL(24,6) TITLE '�ʲ���ծ��',
      TOT_ASET_YLD DECIMAL(24,6) TITLE '���ʲ�������',
      NAST_YLD DECIMAL(24,6) TITLE '���ʲ�������',
      BIZ_ENING_PRFT_RATE DECIMAL(24,6) TITLE 'Ӫҵ����������',
      INVNT_TNOV_RATE DECIMAL(24,6) TITLE '�����ת�ʣ���λ���Σ�',
      ASET_TOT_AMT_EOLY DECIMAL(24,6) TITLE '�ʲ��ܶ�_����ĩ',
      NAST_EOLY DECIMAL(24,6) TITLE '���ʲ�_����ĩ',
      INVNT_EOLY DECIMAL(24,6) TITLE '���_����ĩ')
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
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '֤ȯ�˻���',
      MKT_SORT CHAR(1) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '�г����',
      CLSF_3_MKT_VAL CHAR(3) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '�������ࣨ�ֹ���ֵ��')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      RNKG_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      RNKG INTEGER TITLE '����' NOT NULL,
      OAP_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�' NOT NULL,
      HOLD_RATE DECIMAL(24,6) TITLE '���б���',
      HOLD_CAP_VOL DECIMAL(24,6) TITLE '���йɱ�����')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻���',
      SEC_ACCT_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻�����',
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����',
      CLSF_1 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ������',
      CLSF_2_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ�ֹ���ֵ��',
      CLSF_3_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ�ֹ���ֵ��',
      Cmsmc_CLSF_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '��֤�����ࣨ�ֹ���ֵ��',
      CLSF_2_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ���䣩',
      CLSF_3_AGE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ���䣩',
      END_HOLD_MKT_VAL_MAX DECIMAL(22,2) TITLE '��ĩ�ֹ���ֵ���ֵ',
      END_HOLD_MKT_VAL_MAX_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ĩ�ֹ���ֵ���ֵ����',
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻����')
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
      PPDM_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������' NOT NULL,
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������' NOT NULL,
      IDX_TABLE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_TABLE_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ���������' NOT NULL,
      IDX_VIEW VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ����ͼ��',
      IDX_S_CRIPT VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ��ű���',
      FREQ VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      RMAK VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ע')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������',
      OPN_POINT DECIMAL(24,6) TITLE '���̵���',
      PRE_CLS_POINT DECIMAL(24,6) TITLE 'ǰ���̵���',
      CLS_POINT DECIMAL(24,6) TITLE '���̵���',
      MAX_POINT DECIMAL(24,6) TITLE '��ߵ���',
      MIN_POINT DECIMAL(24,6) TITLE '��͵���',
      D_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      Y_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      RETN DECIMAL(24,6) TITLE '����������',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����',
      TRAD_QTT DECIMAL(24,6) TITLE '�ɽ���',
      TCAP DECIMAL(24,6) TITLE '�ܹɱ�',
      NEGT_CAP DECIMAL(24,6) TITLE '��ͨ�ɱ�',
      TOT_MKT_VAL DECIMAL(24,6) TITLE '����ֵ',
      NEGT_MKT_VAL DECIMAL(24,6) TITLE '��ͨ��ֵ',
      MKT_VAL_TNOV_RATE DECIMAL(24,6) TITLE '��ֵ������',
      TRAD_QTT_TNOV_RATE DECIMAL(24,6) TITLE '�ɽ���������',
      AVG_STK_PRC DECIMAL(24,6) TITLE 'ƽ���ɼ�',
      DATA_SRC_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Դ����')
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
      biz_date DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������',
      PRESS_VAL DECIMAL(18,2) TITLE 'ѹ������',
      cap_type VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����',
      rate_llmt DECIMAL(30,0) TITLE '��Լ���ϱ�������',
      rate_ulmt DECIMAL(30,0) TITLE '��Լ���ϱ�������',
      st_rpchs_nbr DECIMAL(30,0) TITLE '�����ر���',
      st_rpchs_sec_mkt_val DECIMAL(30,7) TITLE '�����ؽ��')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      STK_TYPE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɷ�����' NOT NULL,
      LSTN_BORD CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IC CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      SEC_EXCH_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      REG_JUR CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      VART_CNTR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ֺ�Լ' NOT NULL,
      VART_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      FUTRS_UNFY_OPN_ACCT_CUST_CDE VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�ͳһ�����ͻ�����' NOT NULL,
      EXCH_CUST_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������ͻ�����' NOT NULL,
      EXCH_NBR VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������' NOT NULL,
      FC_MEMB_NBR VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ���˾��Ա��' NOT NULL,
      TRAD_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������־' NOT NULL,
      PSTN_AMT DECIMAL(24,6) TITLE '�ֲֽ��' NOT NULL,
      PSTN_QTT DECIMAL(24,0) TITLE '�ֲ���' NOT NULL,
      TRAD_DPST DECIMAL(24,6) TITLE '���ױ�֤��' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      HDGS_CLSF VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�عɷ���' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ' NOT NULL)
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
      SEC_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻�' NOT NULL,
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������',
      OAP_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�',
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      BD_VOL DECIMAL(18,0) TITLE '��ǩ����',
      IPO_LIST_DAYS DECIMAL(18,0) TITLE '�¹���������',
      SAL_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������',
      SAL_VOL DECIMAL(18,0) TITLE '��������',
      SAL_AMT DECIMAL(24,6) TITLE '�������',
      ACM_SAL_VOL DECIMAL(18,0) TITLE '�ۼ���������',
      ACM_SAL_AMT DECIMAL(24,6) TITLE '�ۼ��������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      DOM_FORN_INDC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���ھ����־' NOT NULL,
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ���߿���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      IDX_NBR VARCHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '��� ' NOT NULL,
      IDX_CDE VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE 'ָ������' NOT NULL,
      IDX_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'ָ������' NOT NULL,
      IDX_CLSF VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE 'ָ������' NOT NULL,
      DATA_SRC_TYPE VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '����Դ����' NOT NULL,
      RMAK VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '��ע' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      CLSF_ANGLE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ƕ�' NOT NULL,
      INVST_TYPE CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ��������' NOT NULL,
      BUY_VOL DECIMAL(24,6) TITLE '��������',
      SAL_VOL DECIMAL(24,6) TITLE '��������',
      BUY_AMT DECIMAL(24,6) TITLE '������',
      SAL_AMT DECIMAL(24,6) TITLE '�������',
      BUY_CNT DECIMAL(24,0) TITLE '�������',
      SAL_CNT DECIMAL(24,0) TITLE '��������',
      PSTN_VOL DECIMAL(24,6) TITLE '�ֲ�����',
      PSTN_NEGT_VOL DECIMAL(24,6) TITLE '�ֲ���ͨ����',
      PSTN_TOT_MKT_VAL DECIMAL(24,6) TITLE '�ֲ�����ֵ',
      PSTN_NEGT_MKT_VAL DECIMAL(24,6) TITLE '�ֲ���ͨ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FC_CDE VARCHAR(20) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ���˾����' NOT NULL,
      FC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ���˾����',
      FC_PPDM_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ���˾Ͻ������',
      FC_PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ���˾Ͻ������',
      BRCH_VOL DECIMAL(24,6) TITLE 'Ӫҵ������',
      END_FUTRS_PRACT_PSN_VOL DECIMAL(24,0) TITLE '��ĩ�ڻ���ҵ��Ա����',
      TOT_ASET DECIMAL(24,6) TITLE '���ʲ�',
      NET_CAP DECIMAL(24,6) TITLE '���ʱ�',
      NAST DECIMAL(24,6) TITLE '���ʲ�',
      BIZ_ENING DECIMAL(24,6) TITLE 'Ӫҵ����',
      BIZ_EXPDT DECIMAL(24,6) TITLE 'Ӫҵ֧��',
      PRFT_TOT_AMT DECIMAL(24,6) TITLE '�����ܶ�',
      NET_PRFT DECIMAL(24,6) TITLE '������',
      AVG_FINA_LVRG DECIMAL(24,6) TITLE 'ƽ������ܸ�')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���б�ʶ',
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����',
      BUY_VOL DECIMAL(24,0) TITLE '��������',
      BUY_AMT DECIMAL(24,6) TITLE '������',
      SAL_VOL DECIMAL(24,0) TITLE '��������',
      SAL_AMT DECIMAL(24,6) TITLE '�������',
      BUY_AMT_MKT_PRC DECIMAL(24,6) TITLE '������_�м�',
      SAL_AMT_MKT_PRC DECIMAL(24,6) TITLE '�������_�м�',
      BUY_CNT DECIMAL(24,0) TITLE '�������',
      SAL_CNT DECIMAL(24,0) TITLE '��������')
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
      CLSF_1 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ������',
      CLSF_1_DESC VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ����������',
      CLSF_2 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������',
      CLSF_2_DESC VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������������',
      CLSF_3 CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������',
      CLSF_3_DESC VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������������',
      Cmsmc_CLSF CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��֤������',
      Cmsmc_CLSF_DESC VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��֤����������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��',
      LIST_COMP_IC VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���й�˾��ҵ����',
      APLY_MYRD_IC VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������ҵ����',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      TRAD_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������' NOT NULL,
      BLNGS_AREA VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������',
      DOM_FORN_INDC VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���ھ����־' NOT NULL,
      DATA_SRC_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Դ����',
      IF_CALC_PE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�Ƿ������ӯ��',
      WDI_IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���ָ������')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���б�ʶ' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����' NOT NULL,
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����' NOT NULL,
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '�ֲ�����',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '�ֲ���ֵ_ԭ��')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SC_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      SC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����',
      SC_PPDM_CDE CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾Ͻ������',
      SC_PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾Ͻ������',
      BRCH_VOL DECIMAL(24,6) TITLE 'Ӫҵ������',
      SUB_COMP_CNT DECIMAL(24,0) TITLE '�ֹ�˾����',
      REG_CAP DECIMAL(24,6) TITLE 'ע���ʱ�',
      IF_JV CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�Ƿ����',
      IF_HAVE_SMT_QLF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�Ƿ���������ȯ�ʸ�',
      IF_HAVE_CUST_AM_QLF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�Ƿ��пͻ��ʲ������ʸ�',
      REG_DATE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ע������',
      RISK_CAP_PREP_TOT_AMT DECIMAL(24,6) TITLE '�����ʱ�׼���ܶ�',
      ASET_TOT_AMT DECIMAL(24,6) TITLE '�ʲ��ܶ�',
      LBLT_TOT DECIMAL(24,6) TITLE '��ծ�ϼ�',
      OWNER_EQUT_TOT DECIMAL(24,6) TITLE '������Ȩ��ϼ�',
      NAST DECIMAL(24,6) TITLE '���ʲ�',
      NET_CAP DECIMAL(24,6) TITLE '���ʱ�',
      PRFT_TOT_AMT DECIMAL(24,6) TITLE '�����ܶ�_�����ۼ�',
      NET_PRFT DECIMAL(24,6) TITLE '������_�����ۼ�',
      BIZ_ENING DECIMAL(24,6) TITLE 'Ӫҵ����_�����ۼ�',
      BIZ_PRFT DECIMAL(24,6) TITLE 'Ӫҵ����_�����ۼ�',
      BIZ_EXPDT DECIMAL(24,6) TITLE 'Ӫҵ֧��_�����ۼ�',
      INTR_NET_ENING DECIMAL(24,6) TITLE '��Ϣ������_�����ۼ�',
      INVSMT_INCM DECIMAL(24,6) TITLE 'Ͷ������_�����ۼ�',
      SEC_BRK_BIZ_NET_ENING DECIMAL(24,6) TITLE '֤ȯ����ҵ������_�����ۼ�',
      INVSMT_BNK_BIZ_NET_ENING DECIMAL(24,6) TITLE 'Ͷ������ҵ������_�����ۼ�',
      IC_BIZ_NET_ENING DECIMAL(24,6) TITLE 'Ͷ����ѯҵ������_�����ۼ�',
      AM_BIZ_NET_ENING DECIMAL(24,6) TITLE '�ʲ�����ҵ������_�����ۼ�',
      PRFT_TOT_AMT_TSM DECIMAL(24,6) TITLE '�����ܶ�_����',
      NET_PRFT_TSM DECIMAL(24,6) TITLE '������_����',
      BIZ_ENING_TSM DECIMAL(24,6) TITLE 'Ӫҵ����_����',
      BIZ_PRFT_TSM DECIMAL(24,6) TITLE 'Ӫҵ����_����',
      BIZ_EXPDT_TSM DECIMAL(24,6) TITLE 'Ӫҵ֧��_����',
      INTR_NET_ENING_TSM DECIMAL(24,6) TITLE '��Ϣ������_����',
      INVSMT_INCM_TSM DECIMAL(24,6) TITLE 'Ͷ������_����',
      SEC_BRK_BIZ_NET_ENING_TSM DECIMAL(24,6) TITLE '֤ȯ����ҵ������_����',
      INVSMT_BNK_BIZ_NET_ENING_TSM DECIMAL(24,6) TITLE 'Ͷ������ҵ������_����',
      IC_BIZ_NET_ENING_TSM DECIMAL(24,6) TITLE 'Ͷ����ѯҵ������_����',
      AM_BIZ_NET_ENING_TSM DECIMAL(24,6) TITLE '�ʲ�����ҵ������_����',
      END_VAL_NET_CAP_NAST DECIMAL(24,6) TITLE '��ĩֵ_���ʱ�/���ʲ�',
      ALT_STD_NET_CAP_NAST DECIMAL(24,6) TITLE 'Ԥ����׼_���ʱ�/���ʲ�',
      SPVS_STD_NET_CAP_NAST DECIMAL(24,6) TITLE '��ܱ�׼_���ʱ�/���ʲ�',
      END_VAL_NET_CAP_LBLT DECIMAL(24,6) TITLE '��ĩֵ_���ʱ�/��ծ',
      ALT_STD_NAST_LBLT DECIMAL(24,6) TITLE 'Ԥ����׼_���ʲ�/��ծ',
      SPVS_STD_NAST_LBLT DECIMAL(24,6) TITLE '��ܱ�׼_���ʲ�/��ծ',
      END_VAL_RISK_COVER_RATE DECIMAL(24,6) TITLE '��ĩֵ_���ո�����',
      ALT_STD_RISK_COVER_RATE DECIMAL(24,6) TITLE 'Ԥ����׼_���ո�����',
      SPVS_STD_RISK_COVER_RATE DECIMAL(24,6) TITLE '��ܱ�׼_���ո�����',
      FLUD_COVER_RATE DECIMAL(24,6) TITLE '�����Ը�����(%)',
      NET_STAB_BANKRL_RATE DECIMAL(24,6) TITLE '���ȶ��ʽ���(%)',
      AVG_FINA_LVRG DECIMAL(24,6) TITLE 'ƽ������ܸ�')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      STK_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɷ�����' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      HDGS_CLSF VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�عɷ���' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      BIZ_INDC CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ҵ���־' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������',
      BUY_VOL DECIMAL(24,6) TITLE '��������',
      SAL_VOL DECIMAL(24,6) TITLE '��������',
      BUY_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '������_ԭ��',
      SAL_AMT_ORIG_CRNC DECIMAL(24,6) TITLE '�������_ԭ��',
      BUY_AMT_RMB DECIMAL(24,6) TITLE '������_�����',
      SAL_AMT_RMB DECIMAL(24,6) TITLE '�������_�����',
      BUY_CNT DECIMAL(24,0) TITLE '�������',
      SAL_CNT DECIMAL(24,0) TITLE '��������',
      PSTN_VOL DECIMAL(24,6) TITLE '�ֲ�����',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '�ֲ���ֵ_ԭ��',
      PSTN_MKT_VAL_RMB DECIMAL(24,6) TITLE '�ֲ���ֵ_�����')
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
      Stat_Date DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      Rate_CLSF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL,
      Rate_LLMT INTEGER TITLE '��������' NOT NULL,
      Rate_ULMT INTEGER TITLE '��������' NOT NULL,
      ST_RPCHS_AMT DECIMAL(24,6) TITLE '�����ؽ��',
      CNTR_CNT DECIMAL(24,0) TITLE '��Լ����',
      ACCT_VOL DECIMAL(24,0) TITLE '�˻���')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      STK_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����',
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��',
      LIST_COMP_IC VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���й�˾��ҵ����',
      APLY_MYRD_IC VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������ҵ����',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      OAP_ACCT_NBR CHAR(25) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      INVST_NAME CHAR(128) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE 'Ͷ��������',
      CLSF_3_NEW CHAR(3) CHARACTER SET UNICODE NOT CASESPECIFIC TITLE '�������ࣨ�£�',
      S_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ʼ����',
      E_DATE DATE FORMAT 'YYYYMMDD' TITLE '��������')
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
      CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����' NOT NULL,
      THREE_ABBR VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��λ���' NOT NULL,
      NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����' NOT NULL,
      CLSF_TYPE_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������ʹ���' NOT NULL,
      CLSF_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������' NOT NULL,
      CLSF_DESC VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_CTG VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ���' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ' NOT NULL)
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������',
      BIZ_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ҵ������',
      PRESS_FACTOR VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ѹ������',
      FACTOR_VAL VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����ȡֵ',
      BANKRL_ITP VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ʽ����뷽',
      BANKRL_RCP VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ʽ��ڳ���',
      BANKRL_RCP_OVRAL_LOAN_BANKRL DECIMAL(24,7) TITLE '�ʽ��ڳ��������ڳ��ʽ�',
      PTY_BTWN_ST_RPCHS_AMT DECIMAL(24,7) TITLE '���������ؽ��',
      PTY_BTWN_DPST_GAP DECIMAL(24,7) TITLE '����䱣֤��ȱ��',
      BANKRL_RCP_OVRAL_DPST_GAP DECIMAL(24,7) TITLE '�ʽ��ڳ������屣֤��ȱ��')
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
      DSPLY_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'չʾ���' NOT NULL,
      STD_CNTR_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��׼��Լ����' NOT NULL,
      STD_CNTR_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��׼��Լ����' NOT NULL,
      DSPLY_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'չʾ����' NOT NULL,
      DSPLY_NAME_ENG VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'չʾ����_Ӣ��' NOT NULL,
      UNIT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��λ' NOT NULL,
      FUTRS_EXCH_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�����������' NOT NULL,
      FUTRS_EXCH_CHN_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�������������' NOT NULL,
      LIST_DATE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL,
      DELS_DATE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL,
      FUTRS_VART_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ʒ�����' NOT NULL,
      FUTRS_VART_TYPE_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ʒ�����ʹ���' NOT NULL,
      FUTRS_VART_TYPE_CHN VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ʒ������_����' NOT NULL,
      FUTRS_VART_TYPE_ENG VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ʒ������_Ӣ��' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      SEC_CTG VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ���',
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��',
      LIST_COMP_IC VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���й�˾��ҵ����',
      APLY_MYRD_IC VARCHAR(40) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������ҵ����',
      STK_ORETF_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ��ETF����',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ϣ��' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ�Ǽ���' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������' NOT NULL,
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������' NOT NULL,
      RIGHT_LIST_D DATE FORMAT 'YYYYMMDD' TITLE '���������' NOT NULL,
      EQUITY_REG_D_CLS_PRC DECIMAL(24,6) TITLE '��Ȩ�Ǽ������̼�' NOT NULL,
      RIGHT_PRC DECIMAL(24,6) TITLE '��ɼ�' NOT NULL,
      EXR_PRC DECIMAL(24,6) TITLE '��Ȩ��' NOT NULL,
      RIGHT_RATE DECIMAL(18,2) TITLE '��ɱ���' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      INVST_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ��������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      OPT_CNTR_PROD_CDE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ȩ��Լ��Ʒ����' NOT NULL,
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      BUY_VOL_SUBSC DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      SAL_VOL_SUBSC DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      BUY_VOL_PUT DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      SAL_VOL_PUT DECIMAL(24,0) TITLE '�Ϲ���������' NOT NULL,
      BUY_AMT_SUBSC DECIMAL(24,6) TITLE '�Ϲ�������' NOT NULL,
      SAL_AMT_SUBSC DECIMAL(24,6) TITLE '�Ϲ��������' NOT NULL,
      BUY_AMT_PUT DECIMAL(24,6) TITLE '�Ϲ�������' NOT NULL,
      SAL_AMT_PUT DECIMAL(24,6) TITLE '�Ϲ��������' NOT NULL,
      END_RIGHT_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������' NOT NULL,
      END_OBLG_PSTN_QTT_SUBSC DECIMAL(24,0) TITLE '�Ϲ������������' NOT NULL,
      END_RIGHT_PSTN_QTT_PUT DECIMAL(24,0) TITLE '�Ϲ���Ȩ��������' NOT NULL,
      END_OBLG_PSTN_QTT_PUT DECIMAL(24,0) TITLE '�Ϲ������������' NOT NULL)
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
      rgn_cd VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������' NOT NULL,
      rgn_name VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������' NOT NULL)
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
      STAT_M DATE FORMAT 'YYYYMMDD' TITLE 'ͳ���·�' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���б�ʶ' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����' NOT NULL,
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����' NOT NULL,
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      INVST_OPN_ACCT_PPDM CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ���߿���Ͻ��' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '�ֲ�����',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '�ֲ���ֵ_ԭ��')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ϣ��' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ�Ǽ���' NOT NULL,
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      PPDM_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������' NOT NULL,
      PPDM_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͻ������' NOT NULL,
      RIGHT_LIST_D DATE FORMAT 'YYYYMMDD' TITLE '���������' NOT NULL,
      EQUITY_REG_D_CLS_PRC DECIMAL(24,6) TITLE '��Ȩ�Ǽ������̼�' NOT NULL,
      RIGHT_PRC DECIMAL(24,6) TITLE '��ɼ�' NOT NULL,
      EXR_PRC DECIMAL(24,6) TITLE '��Ȩ��' NOT NULL,
      RIGHT_RATE DECIMAL(18,2) TITLE '��ɱ���' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      VART_CNTR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ֺ�Լ' NOT NULL,
      VART_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      VART_CHN_NAME VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ��������' NOT NULL,
      VART_SCND_CLSF VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ֶ�������' NOT NULL,
      EXCH_NBR VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������' NOT NULL,
      FC_SETL_MEMB_NBR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ���˾�����Ա��' NOT NULL,
      FUTRS_INVST_SORT VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ͷ�������' NOT NULL,
      CRS_MGN_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���г�Ͷ�������' NOT NULL,
      TRAD_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������־' NOT NULL,
      KPWH_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƽ�ֱ�־' NOT NULL,
      CRS_MGN_INVST_ID VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���г�Ͷ���߱�ʶ' NOT NULL,
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����' NOT NULL,
      TRAD_QTT DECIMAL(24,0) TITLE '�ɽ���' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      VART_ONE_CLSF VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ����',
      EXCH_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������',
      FUTRS_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ͷ�������',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ϣ��' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ�Ǽ���',
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      DIVD_ABBR VARCHAR(150) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������',
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '�ֺ����',
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ��˰ǰ��',
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ���(˰��)',
      DP_RATE_DENOM DECIMAL(24,4) TITLE '��Ϣ������ĸ',
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '��Ϣ��������(˰ǰ)',
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '��Ϣ�������ӣ�˰��',
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '����ֺ��ܹɱ�',
      CRNC_CDE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ҵ���',
      MDL_PRC DECIMAL(24,6) TITLE '�м��')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      INVST_TYPE CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ��������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FUTRS_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ͷ�������',
      VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ִ���',
      EXCH_NBR VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      VART_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      LSTN_BORD CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDSTR_CTGR_CDE DECIMAL(24,6) TITLE 'ָ��ֵ' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      STK_TYPE VARCHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɷ�����' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      IC VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ҵ����' NOT NULL,
      HDGS_CLSF VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�عɷ���' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      SEC_CTG_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ������' NOT NULL,
      SEC_CTG_DESC VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�������' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      INVST_OPN_ACCT_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ���߿���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������',
      OPN_POINT DECIMAL(24,6) TITLE '���̵���',
      CLS_POINT DECIMAL(24,6) TITLE '���̵���',
      MAX_POINT DECIMAL(24,6) TITLE '��ߵ���',
      MIN_POINT DECIMAL(24,6) TITLE '��͵���',
      TRAD_QTT DECIMAL(24,6) TITLE '�ɽ���',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����',
      MKT_VAL DECIMAL(24,6) TITLE '��ֵ',
      PE DECIMAL(24,6) TITLE '��ӯ��',
      PB DECIMAL(24,6) TITLE '�о���',
      DIVD_RATE DECIMAL(24,6) TITLE '��Ϣ��',
      RETN DECIMAL(24,6) TITLE '����������',
      D_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      W_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      M_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      Y_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������' NOT NULL,
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������',
      OPN_POINT DECIMAL(24,6) TITLE '���̵���',
      PRE_CLS_POINT DECIMAL(24,6) TITLE 'ǰ���̵���',
      CLS_POINT DECIMAL(24,6) TITLE '���̵���',
      MAX_POINT DECIMAL(24,6) TITLE '��ߵ���',
      MIN_POINT DECIMAL(24,6) TITLE '��͵���',
      D_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      Y_CHG_RATE DECIMAL(24,6) TITLE '���ǵ���',
      RETN DECIMAL(24,6) TITLE '����������',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����',
      TRAD_QTT DECIMAL(24,6) TITLE '�ɽ���',
      TCAP DECIMAL(24,6) TITLE '�ܹɱ�',
      NEGT_CAP DECIMAL(24,6) TITLE '��ͨ�ɱ�',
      TOT_MKT_VAL DECIMAL(24,6) TITLE '����ֵ',
      NEGT_MKT_VAL DECIMAL(24,6) TITLE '��ͨ��ֵ',
      MKT_VAL_TNOV_RATE DECIMAL(24,6) TITLE '��ֵ������',
      TRAD_QTT_TNOV_RATE DECIMAL(24,6) TITLE '�ɽ���������',
      AVG_STK_PRC DECIMAL(24,6) TITLE 'ƽ���ɼ�',
      DATA_SRC_TYPE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Դ����')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      OAP_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ��ͨ�˻�����',
      SEC_ACCT_NBR CHAR(25) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻���',
      SEC_ACCT_NAME VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ�˻�����',
      MKT_SORT CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '�г����',
      CLSF_1 CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE 'һ������',
      CLSF_2_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ�ֹ���ֵ��',
      CLSF_3_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '�������ࣨ�ֹ���ֵ��',
      Cmsmc_CLSF_MKT_VAL CHAR(4) CHARACTER SET LATIN CASESPECIFIC TITLE '��֤�����ࣨ�ֹ���ֵ��',
      END_HOLD_MKT_VAL_MAX DECIMAL(22,2) TITLE '��ĩ�ֹ���ֵ���ֵ',
      END_HOLD_MKT_VAL_MAX_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ĩ�ֹ���ֵ���ֵ����')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      BOND_CLSF VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ծȯ����' NOT NULL,
      RATE_TYPE VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������' NOT NULL,
      ISSR_IDSTR_CTGR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��������ҵ�����ࣩ' NOT NULL,
      ISSR_ESECTOR VARCHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�����˾��óɷ�' NOT NULL,
      ISSR_REG_PPDM VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������ע��Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ϣ��' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ�Ǽ���',
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      DIVD_ABBR VARCHAR(150) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�������',
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '�ֺ����',
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ��˰ǰ��',
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ���(˰��)',
      DP_RATE_DENOM DECIMAL(24,4) TITLE '��Ϣ������ĸ',
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '��Ϣ��������(˰ǰ)',
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '��Ϣ�������ӣ�˰��',
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '����ֺ��ܹɱ�',
      CRNC_CDE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ҵ���',
      MDL_PRC DECIMAL(24,6) TITLE '�м��')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      SC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����',
      MANG_CLSF CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ӫ����',
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '������Ѻ����',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '�����Ѻ����',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '��ʼ���׽��',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '��ʼ���ױ���',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '���ؽ��׽��',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '���ؽ��ױ���',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '�����س�ʼ���׽��',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '������֤ȯ����',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '������֤ȯ��ֵ',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '��ʼ��Ѻ֤ȯ����',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      ISS_B_DATE DATE FORMAT 'YYYYMMDD' TITLE '������ʼ����',
      BOND_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ծȯ����' NOT NULL,
      BOND_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ծȯ����',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      BOND_CLSF_MIDL_CERTF VARCHAR(8) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ծȯ����_��֤' NOT NULL,
      BOND_MKT_VAL DECIMAL(24,6) TITLE 'ծȯ��ֵ',
      BOND_PAR_VAL DECIMAL(24,6) TITLE 'ծȯ��ֵ',
      CNCTR_TRAD_PAR_VAL DECIMAL(24,6) TITLE '���н�����ֵ',
      CNCTR_TRAD_AMT DECIMAL(24,6) TITLE '���н��׽��',
      CNCTR_TRAD_CNT DECIMAL(24,0) TITLE '���н��ױ���')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FUTRS_INVST_SORT VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ͷ�������' NOT NULL,
      CUST_WTHDR DECIMAL(24,6) TITLE '�ͻ�����' NOT NULL,
      CUST_DPST DECIMAL(24,6) TITLE '�ͻ����' NOT NULL,
      CUST_BANKRL_EQUT DECIMAL(24,6) TITLE '�ͻ��ʽ�Ȩ��' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      LSTN_BORD VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���а��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      REG_JUR VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ͻ��' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ')
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
      SEC_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻�' NOT NULL,
      EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����������',
      OAP_ACCT CHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�',
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����',
      BD_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ǩ����',
      AFP_MODE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�깺��ʽ',
      AFP_DATE DATE FORMAT 'YYYYMMDD' TITLE '�깺����',
      VLD_AFP_VOL DECIMAL(18,0) TITLE '��Ч�깺����',
      BD_DATE DATE FORMAT 'YYYYMMDD' TITLE '��ǩ����',
      BD_VOL DECIMAL(18,0) TITLE '��ǩ����')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���б�ʶ' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����' NOT NULL,
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����' NOT NULL,
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '�ֲ�����',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '�ֲ���ֵ_ԭ��')
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
      INVST_SORT_CDE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ����������' NOT NULL,
      INVST_SORT_NAME VARCHAR(100) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�����������' NOT NULL)
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
      DIMN VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'ά��' NOT NULL,
      DIMN_NAME VARCHAR(20) CHARACTER SET LATIN CASESPECIFIC TITLE 'ά����' NOT NULL,
      CDE VARCHAR(8) CHARACTER SET LATIN CASESPECIFIC TITLE '����' NOT NULL,
      CODE_VAL VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��ֵ' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      CLSF_ANGLE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ƕ�' NOT NULL,
      INVST_TYPE CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ��������' NOT NULL,
      BUY_VOL DECIMAL(24,6) TITLE '��������',
      SAL_VOL DECIMAL(24,6) TITLE '��������',
      BUY_AMT DECIMAL(24,6) TITLE '������',
      SAL_AMT DECIMAL(24,6) TITLE '�������',
      BUY_CNT DECIMAL(24,0) TITLE '�������',
      SAL_CNT DECIMAL(24,0) TITLE '��������',
      PSTN_VOL DECIMAL(24,6) TITLE '�ֲ�����',
      PSTN_NEGT_VOL DECIMAL(24,6) TITLE '�ֲ���ͨ����',
      PSTN_TOT_MKT_VAL DECIMAL(24,6) TITLE '�ֲ�����ֵ',
      PSTN_NEGT_MKT_VAL DECIMAL(24,6) TITLE '�ֲ���ͨ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      OAP_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'һ��ͨ�˻�����' NOT NULL,
      SEC_ACCT_NBR VARCHAR(25) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻���' NOT NULL,
      SEC_EXCH_CDE VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      SEC_CLSF VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_ACCT_SORT VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����' NOT NULL,
      FCPTL_INVST_ID VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ���߱�ʶ' NOT NULL,
      CRS_MGN_INVST_ID VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���г�Ͷ���߱�ʶ' NOT NULL,
      BUY_VOL DECIMAL(24,0) TITLE '��������' NOT NULL,
      BUY_AMT DECIMAL(24,6) TITLE '������' NOT NULL,
      SAL_VOL DECIMAL(24,0) TITLE '��������' NOT NULL,
      SAL_AMT DECIMAL(24,6) TITLE '�������' NOT NULL,
      BUY_AMT_MKT_PRC DECIMAL(24,6) TITLE '������_�м�' NOT NULL,
      SAL_AMT_MKT_PRC DECIMAL(24,6) TITLE '�������_�м�' NOT NULL,
      BUY_CNT DECIMAL(24,0) TITLE '�������' NOT NULL,
      SAL_CNT DECIMAL(24,0) TITLE '��������' NOT NULL,
      ETF_AFP_SHR DECIMAL(24,6) TITLE 'ETF�깺�ݶ�' NOT NULL,
      ETF_REDEM_SHR DECIMAL(24,6) TITLE 'ETF��طݶ�' NOT NULL)
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
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ϣ��' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ�Ǽ���',
      STK_CDE CHAR(6) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      STK_NAME VARCHAR(50) CHARACTER SET LATIN CASESPECIFIC TITLE '��Ʊ����',
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN CASESPECIFIC TITLE '֤ȯ����������',
      DIVD_ABBR VARCHAR(100) CHARACTER SET LATIN CASESPECIFIC TITLE '�������',
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '�ֺ����',
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ��˰ǰ��',
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ���(˰��)',
      DP_RATE_DENOM DECIMAL(24,4) TITLE '��Ϣ������ĸ',
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '��Ϣ��������(˰ǰ)',
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '��Ϣ�������ӣ�˰��',
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '����ֺ��ܹɱ�',
      CRNC_CDE CHAR(3) CHARACTER SET LATIN CASESPECIFIC TITLE '���Ҵ���',
      MDL_PRC DECIMAL(24,6) TITLE '�м��')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      TCAP DECIMAL(24,6) TITLE '�ܹɱ�',
      NEGT_CAP DECIMAL(24,6) TITLE '��ͨ�ɱ�',
      ADV_NTC_MKT_VAL DECIMAL(24,6) TITLE 'Ԥ����ֵ',
      ADV_NTC_NEGT_MKT_VAL DECIMAL(24,6) TITLE 'Ԥ����ͨ��ֵ',
      TRAD_QTT DECIMAL(24,6) TITLE '�ɽ���',
      TRAD_AMT DECIMAL(24,6) TITLE '�ɽ����')
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
      STAT_M DATE FORMAT 'YYYYMMDD' TITLE 'ͳ���·�' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���б�ʶ' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����' NOT NULL,
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����' NOT NULL,
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      INVST_OPN_ACCT_PPDM CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ���߿���Ͻ��' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '�ֲ�����',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '�ֲ���ֵ_ԭ��')
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      IDX_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ������',
      TYP CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����',
      IDX_VAL DECIMAL(10,7) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,6) TITLE 'ָ��ֵ' NOT NULL)
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SC_CDE VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ��˾����' NOT NULL,
      INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ͷ�������' NOT NULL,
      BANKRL_SORT CHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ʽ����' NOT NULL,
      STC_AMT DECIMAL(24,6) TITLE '��ת֤���',
      CTS_AMT DECIMAL(24,6) TITLE '֤ת�����',
      SETL_BANKRL_BAL DECIMAL(24,6) TITLE '�����ʽ����')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������',
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��',
      FCPTL_INVST_SORT1 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������1',
      FCPTL_INVST_SORT2 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ�������2',
      FCPTL_INVST_SORT3 VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '����Ͷ������𣨹���3',
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����',
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      FREQ CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ƶ��' NOT NULL,
      SEC_EXCH_CDE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      ACCT_TYPE VARCHAR(2) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�˻�����' NOT NULL,
      STK_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      IDX_CDE CHAR(5) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'ָ�����' NOT NULL,
      IDX_VAL DECIMAL(24,0) TITLE 'ָ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      VART_CNTR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ֺ�Լ' NOT NULL,
      VART_CDE VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ִ���' NOT NULL,
      VART_CHN_NAME VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ��������' NOT NULL,
      VART_SCND_CLSF VARCHAR(120) CHARACTER SET LATIN NOT CASESPECIFIC TITLE 'Ʒ�ֶ�������' NOT NULL,
      EXCH_NBR VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���������' NOT NULL,
      FC_SETL_MEMB_NBR VARCHAR(30) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ���˾�����Ա��' NOT NULL,
      FUTRS_INVST_SORT VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ڻ�Ͷ�������' NOT NULL,
      CRS_MGN_INVST_SORT VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���г�Ͷ�������' NOT NULL,
      TRAD_INDC VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '������־' NOT NULL,
      CRS_MGN_INVST_ID VARCHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���г�Ͷ���߱�ʶ' NOT NULL,
      PSTN_AMT DECIMAL(24,6) TITLE '�ֲֽ��' NOT NULL,
      PSTN_QTT DECIMAL(24,0) TITLE '�ֲ���' NOT NULL,
      TRAD_DPST DECIMAL(24,6) TITLE '���ױ�֤��' NOT NULL)
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
      BIZ_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ҵ������' NOT NULL,
      STK_INVST_SORT VARCHAR(12) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      STK_INVST_NAME VARCHAR(50) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ��������',
      ADD_PLG_CNT DECIMAL(24,0) TITLE '������Ѻ����',
      RLS_PLG_CNT DECIMAL(24,0) TITLE '�����Ѻ����',
      INIT_TRAD_AMT DECIMAL(24,6) TITLE '��ʼ���׽��',
      INIT_TRAD_CNT DECIMAL(24,0) TITLE '��ʼ���ױ���',
      RPCHS_TRAD_AMT DECIMAL(24,6) TITLE '���ؽ��׽��',
      RPCHS_TRAD_CNT DECIMAL(24,0) TITLE '���ؽ��ױ���',
      ST_RPCHS_INIT_TRAD_AMT DECIMAL(24,6) TITLE '�����س�ʼ���׽��',
      ST_RPCHS_SEC_VOL DECIMAL(24,0) TITLE '������֤ȯ����',
      ST_RPCHS_SEC_MKT_VAL DECIMAL(24,6) TITLE '������֤ȯ��ֵ',
      INIT_PLG_SEC_VOL DECIMAL(24,0) TITLE '��ʼ��Ѻ֤ȯ����',
      INIT_PLG_SEC_MKT_VAL DECIMAL(24,6) TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
      STAT_DATE DATE FORMAT 'YYYYMMDD' TITLE 'ͳ������' NOT NULL,
      SEC_CDE VARCHAR(10) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������' NOT NULL,
      STK_INVST_SORT CHAR(4) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��ƱͶ�������' NOT NULL,
      BNK_ID CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���б�ʶ' NOT NULL,
      SEC_ACCT_SORT CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ�˻����' NOT NULL,
      CAP_TYPE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '�ɱ�����' NOT NULL,
      SEC_CLSF CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����' NOT NULL,
      PSTN_VOL DECIMAL(24,0) TITLE '�ֲ�����',
      PSTN_MKT_VAL_ORIG_CRNC DECIMAL(24,6) TITLE '�ֲ���ֵ_ԭ��')
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
      EXR_EXD_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ��Ϣ��' NOT NULL,
      EQUITY_REG_D DATE FORMAT 'YYYYMMDD' TITLE '��Ȩ�Ǽ���',
      STK_CDE CHAR(6) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '��Ʊ����' NOT NULL,
      SEC_EXCH_CDE CHAR(1) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '֤ȯ����������',
      DVD_YEARLY DATE FORMAT 'YYYYMMDD' TITLE '�ֺ����' NOT NULL,
      CASH_DVD_AMT_BEF_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ��˰ǰ��',
      CASH_DVD_AMT_AFT_TAX DECIMAL(24,6) TITLE '�ֽ�ֺ���(˰��)',
      DP_RATE_DENOM DECIMAL(24,4) TITLE '��Ϣ������ĸ',
      DP_RATE_NUMRT_BEF_TAX DECIMAL(24,8) TITLE '��Ϣ��������(˰ǰ)',
      DP_RATE_NUMRT_AFT_TAX DECIMAL(24,8) TITLE '��Ϣ�������ӣ�˰��',
      PTC_DVD_TCAP DECIMAL(24,6) TITLE '����ֺ��ܹɱ�',
      CRNC_CDE CHAR(3) CHARACTER SET LATIN NOT CASESPECIFIC TITLE '���Ҵ���',
      MDL_PRC DECIMAL(24,6) TITLE '�м��')
PRIMARY INDEX ( EXR_EXD_D ,STK_CDE ,DVD_YEARLY );


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-


.quit
 *** You are now logged off from the DBC.
 *** Exiting BTEQ...
 *** RC (return code) = 0 
