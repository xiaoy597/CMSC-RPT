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
 SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
 ABNO_RESN ( TITLE '�쳣ԭ��'),
 MTN_DATE ( TITLE 'ά������')
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
	STAT_DATE ( TITLE 'ͳ������'),
	EXCH_NBR ( TITLE '���������'),
	VART_CNTR ( TITLE 'Ʒ�ֺ�Լ'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	VART_CHN_NAME ( TITLE 'Ʒ��������'),
	VART_AAGT_CLSF ( TITLE 'Ʒ��һ������'),
	VART_SCND_CLSF ( TITLE 'Ʒ�ֶ�������'),
	MAIN_CNTR_INDC ( TITLE '������Լ��־'),
	OPN_PRC ( TITLE '���̼�'),
	CLS_PRC ( TITLE '���̼�'),
	TOP_PRC ( TITLE '��߼�'),
	MIN_PRC ( TITLE '��ͼ�'),
	YDY_SETL_PRC ( TITLE '������'),
	TS_SETL_PRC ( TITLE '������'),
	S_TRAD_DATE ( TITLE '��ʼ��������'),
	TRAD_QTT ( TITLE '�ɽ���'),
	TRAD_AMT ( TITLE '�ɽ���'),
	PSTN_QTT ( TITLE '�ֲ���'),
	CNTR_MLTPR ( TITLE '��Լ����'),
	PSTN_AMT ( TITLE '�ֲֽ��')
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
	EXCH_CUST_CDE ( TITLE '�������ͻ�����'),
	EXCH_NBR ( TITLE '���������'),
	FC_MEMB_NBR ( TITLE '�ڻ���˾��Ա��'),
	FUTRS_UNFY_OPN_ACCT_CUST_CDE ( TITLE '�ڻ�ͳһ�����ͻ�����'),
	FC_UNFY_CDE ( TITLE '�ڻ���˾ͳһ����'),
	INSD_BANKRL_ACCT ( TITLE '�ڲ��ʽ��˻�'),
	COUN_CDE ( TITLE '���Ҵ���'),
	PSN_ORG_ID ( TITLE '���˻�����ʶ'),
	FUTRS_INVST_SORT ( TITLE '�ڻ�Ͷ�������'),
	FCPTL_SCND_CLSF ( TITLE '���ʶ�������'),
	ACCT_STS ( TITLE '�˻�״̬'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	OAP_ACCT_STS_VLD_INDC ( TITLE 'һ��ͨ�˻�״̬��Ч��־'),
	CRS_MGN_INVST_SORT ( TITLE '���г�Ͷ�������'),
	CORLT_RLTN_IF_CFRM ( TITLE '������ϵ�Ƿ�ȷ��'),
	S_DATE  ( TITLE '��ʼ����'),
	E_DATE  ( TITLE '��������')
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
 STAT_DATE ( TITLE 'ͳ������'),
 CLSF_3 ( TITLE '��������'),
 MKT_TYPE ( TITLE '�г�����'),
 SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
 NEGT_ID ( TITLE '��ͨ��ʶ'),
 HOLD_VOL ( TITLE '��������'),
 HOLD_AMT ( TITLE '���н�Ԫ��'),
 DATA_DATE (TITLE '��������')
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
 MKT_SORT ( TITLE '�г����'),
 SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
 CSTD_UNIT_ID ( TITLE '�йܵ�Ԫ��ʶ'),
 SEC_CDE ( TITLE '֤ȯ����'),
 CAP_TYPE ( TITLE '�ɱ�����'),
 TD_END_HOLD_VOL ( TITLE '���ճ�������'),  
 S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	SEC_ACCT_NAME ( TITLE '֤ȯ�˻�����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	SEC_ACCT_SORT                  ( TITLE '֤ȯ�˻����'),
	FCPTL_SCND_CLSF ( TITLE '���ʶ�������'),
	COUN_CDE ( TITLE '���Ҵ���'),
	PS_NORG_ID ( TITLE '���˻�����ʶ'),
	OAP_SEC_ACCT_STS ( TITLE 'һ��֤ͨȯ�˻�״̬'),
	S_DATE ( TITLE '��ʼ����'),
  E_DATE ( TITLE '��������')
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
  OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
  SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
  SEC_ACCT_NAME ( TITLE '֤ȯ�˻�����'),
  MKT_SORT ( TITLE '�г����'),
  SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
  CLSF_1 ( TITLE 'һ������'),
  CLSF_2 ( TITLE '��������'),
  CLSF_3 ( TITLE '��������'),
  CMSMC_CLSF ( TITLE '��֤������'),
  CLSF_2_AGE ( TITLE '�������ࣨ���䣩'),
  CLSF_3_AGE ( TITLE '�������ࣨ���䣩'),
  BNK_ID ( TITLE '���б�ʶ'),
  S_DATE (TITLE '��ʼ����'),
  E_DATE (TITLE '��������')
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
  OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
  SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
  SEC_ACCT_NAME ( TITLE '֤ȯ�˻�����'),
  MKT_SORT ( TITLE '�г����'),
  SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
  CLSF_1 ( TITLE 'һ������'),
  CLSF_2 ( TITLE '��������'),
  CLSF_3 ( TITLE '��������'),
  CLSF_2_AGE ( TITLE '�������ࣨ���䣩'),
  CLSF_3_AGE ( TITLE '�������ࣨ���䣩'),
  BNK_ID ( TITLE '���б�ʶ'),
  S_DATE (TITLE '��ʼ����'),
  E_DATE (TITLE '��������')
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
  OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
  SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
  SEC_ACCT_NAME ( TITLE '֤ȯ�˻�����'),
  MKT_SORT ( TITLE '�г����'),
  SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
  CLSF_1 ( TITLE 'һ������'),
  CLSF_2 ( TITLE '��������'),
  CLSF_3 ( TITLE '��������'),
  CMSMC_CLSF ( TITLE '��֤������'),
  CLSF_2_AGE ( TITLE '�������ࣨ���䣩'),
  CLSF_3_AGE ( TITLE '�������ࣨ���䣩'),
  BNK_ID ( TITLE '���б�ʶ')
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
	SRC_TB_NBR ( TITLE 'Դ����'),
	SRC_TB_ENAME ( TITLE 'Դ��Ӣ����'),
	SRC_CDE_ENAME ( TITLE 'Դ����Ӣ����'),
	SRC_CDE_VAL ( TITLE 'Դ����ֵ'),
	SRC_CDE_DESC ( TITLE 'Դ��������'),
	CDE_ENG_NAME ( TITLE '����Ӣ����'),
	CDE_VAL ( TITLE '����ֵ'),
	CDE_DESC ( TITLE '��������'),
	VLD_INDC ( TITLE '��Ч��־'),
	SUBJECT ( TITLE '������'),
	DATA_DATE (TITLE '��������')
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
	CDE_SORT ( TITLE '�������'),
	CDE_NAME ( TITLE '��������'),
	CDE_VAL ( TITLE '����ֵ'),
	CDE_DESC ( TITLE '��������'),
	DATA_DATE (TITLE '��������')
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
	CDE_SORT ( TITLE '�������'),
	CDE_NAME ( TITLE '��������'),
	CDE_VAL ( TITLE '����ֵ'),
	CDE_DESC ( TITLE '��������'),
	DATA_DATE (TITLE '��������')
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
	ACONT_PTY_CDE ( TITLE '�������'),
	RPT_DATE ( TITLE '��������'),
	ACONT_YEARLY ( TITLE '������'),
	IDX_CDE ( TITLE 'ָ�����'),
	RPT_FRQU_TYPE ( TITLE '����Ƶ�ʴ���'),
	PTY_NAME ( TITLE '��������'),
	CERT_TYPE ( TITLE '֤������'),
	CERT_NBR ( TITLE '֤������'),
	START_BAL ( TITLE '�ڳ����'),
	END_BAL ( TITLE '��ĩ���'),
	MERG_RPT_ID ( TITLE '�ϲ������ʶ'),
	AUDIT_ID ( TITLE '��Ʊ�ʶ'),
	RSRV_FLD1 ( TITLE 'Ԥ���ֶ�1'),
	RSRV_FLD2 ( TITLE 'Ԥ���ֶ�2'),
	RSRV_FLD3 ( TITLE 'Ԥ���ֶ�3'),
	DATA_SRC_TB_NAME ( TITLE '����Դ������'),
	DATA_DATE (TITLE '��������')
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
	ACONT_PTY_CDE ( TITLE '�������'),
	RPT_DATE ( TITLE '��������'),
	ACONT_YEARLY ( TITLE '������'),
	IDX_CDE ( TITLE 'ָ�����'),
	RPT_FRQU_TYPE ( TITLE '����Ƶ�ʴ���'),
	PTY_NAME ( TITLE '��������'),
	CERT_TYPE ( TITLE '֤������'),
	CERT_NBR ( TITLE '֤������'),
	START_BAL ( TITLE '�ڳ����'),
	END_BAL ( TITLE '��ĩ���'),
	MERG_RPT_ID ( TITLE '�ϲ������ʶ'),
	AUDIT_ID ( TITLE '��Ʊ�ʶ'),
	RSRV_FLD1 ( TITLE 'Ԥ���ֶ�1'),
	RSRV_FLD2 ( TITLE 'Ԥ���ֶ�2'),
	RSRV_FLD3 ( TITLE 'Ԥ���ֶ�3'),
	DATA_SRC_TB_NAME ( TITLE '����Դ������'),
	DATA_DATE (TITLE '��������')
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
	ACONT_PTY_CDE ( TITLE '�������'),
	RPT_DATE ( TITLE '��������'),
	ACONT_YEARLY ( TITLE '������'),
	IDX_CDE ( TITLE 'ָ�����'),
	RPT_FRQU_TYPE ( TITLE '����Ƶ�ʴ���'),
	PTY_NAME ( TITLE '��������'),
	CERT_TYPE ( TITLE '֤������'),
	CERT_NBR ( TITLE '֤������'),
	START_BAL ( TITLE '�ڳ����'),
	END_BAL ( TITLE '��ĩ���'),
	MERG_RPT_ID ( TITLE '�ϲ������ʶ'),
	AUDIT_ID ( TITLE '��Ʊ�ʶ'),
	RSRV_FLD1 ( TITLE 'Ԥ���ֶ�1'),
	RSRV_FLD2 ( TITLE 'Ԥ���ֶ�2'),
	RSRV_FLD3 ( TITLE 'Ԥ���ֶ�3'),
	DATA_SRC_TB_NAME ( TITLE '����Դ������'),
	DATA_DATE (TITLE '��������')
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
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_NAME ( TITLE 'ָ������'),
	FINA_STD_ID ( TITLE '�Ʊ��ʶ'),
	IDX_CLBR_DESC ( TITLE 'ָ��ھ�����'),
	EFCTV_DATE ( TITLE '��Ч����'),
	INVL_DATE ( TITLE 'ʧЧ����'),
	DATA_DATE (TITLE '��������')
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
	ACONT_PTY_CDE ( TITLE '�������'),
	RPT_DATE ( TITLE '��������'),
	ACONT_YEARLY ( TITLE '������'),
	IDX_CDE ( TITLE 'ָ�����'),
	RPT_FRQU_TYPE ( TITLE '����Ƶ�ʴ���'),
	PTY_NAME ( TITLE '��������'),
	CERT_TYPE ( TITLE '֤������'),
	CERT_NBR ( TITLE '֤������'),
	START_BAL ( TITLE '�ڳ����'),
	END_BAL ( TITLE '��ĩ���'),
	MERG_RPT_ID ( TITLE '�ϲ������ʶ'),
	AUDIT_ID ( TITLE '��Ʊ�ʶ'),
	RSRV_FLD1 ( TITLE 'Ԥ���ֶ�1'),
	RSRV_FLD2 ( TITLE 'Ԥ���ֶ�2'),
	RSRV_FLD3 ( TITLE 'Ԥ���ֶ�3'),
	DATA_SRC_TB_NAME ( TITLE '����Դ������'),
	DATA_DATE (TITLE '��������')
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
	RPT_FRQU_TYPE_CDE ( TITLE '����Ƶ�ʴ���'),
	RPT_FRQU_TYPE_DESC ( TITLE '����Ƶ������'),
	DATA_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	DUR_B_D ( TITLE '������ʼ��'),
	DUR_CNL_D ( TITLE '������ֹ��'),
	DUR_TLMT ( TITLE '��������'),
	OCR_PLAC ( TITLE '��������'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	SPVSR ( TITLE '������'),
	CSTD_PSN ( TITLE '�й���'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	BOND_CDE ( TITLE 'ծȯ����'),
	ISSR_ID ( TITLE '�����˱�ʶ'),
	BOND_PAR_VAL ( TITLE 'ծȯ��ֵ'),
	ISS_DATE ( TITLE '��������'),
	ISS_PRC ( TITLE '���м۸�'),
	MAT_DATE ( TITLE '��������'),
	PAR_RATE ( TITLE 'Ʊ������'),
	MIDL_SML_ENTRP_DEBT_INDC ( TITLE '��С��ҵծ��־'),
	BOND_LVL ( TITLE 'ծȯ�ȼ�'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	BOND_CDE ( TITLE 'ծȯ����'),
	RTAG_ID ( TITLE '����������ʶ'),
	RATN_DATE ( TITLE '��������'),
	DEBT_RATN ( TITLE 'ծ������'),
	BOND_LVL ( TITLE 'ծȯ�ȼ�'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	PROD_TYPE ( TITLE '��Ʒ����'),
	CRT_DATE ( TITLE '��������'),
	MAT_DATE ( TITLE '��������'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	BOND_CDE ( TITLE 'ծȯ����'),
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	STK_CDE ( TITLE '��Ʊ����'),
	STK_TRAD_PLAC_CDE ( TITLE '��Ʊ���׳�������'),
	CONV_RATE ( TITLE 'ת������'),
	CONV_PRC ( TITLE 'ת���۸�'),
	CONV_B_D ( TITLE 'ת����ʼ��'),
	CONV_CNL_D ( TITLE 'ת����ֹ��'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	PD_FLAG ( TITLE 'Ƶ�ȱ�־'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	STK_CDE ( TITLE '��Ʊ����'),
	CAP_TYPE_CDE ( TITLE '�ɱ����ʹ���'),
	CHG_DATE ( TITLE '�䶯����'),
	CAP_CHG_RESN_CDE ( TITLE '�ɱ��䶯ԭ�����'),
	CHG_VOL ( TITLE '�䶯����'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	STK_CDE ( TITLE '��Ʊ����'),
	CAP_TYPE_CDE ( TITLE '�ɱ����ʹ���'),
	STAT_DATE ( TITLE 'ͳ������'),
	SEC_VOL ( TITLE '֤ȯ����'),
	EQUT_SORT ( TITLE 'Ȩ�����'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	WETN_MODE_CDE ( TITLE '��Ȩ��ʽ����'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	CONS_SEC_CDE ( TITLE '�ɷ�֤ȯ����'),
	EFCTV_DATE ( TITLE '��Ч����'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	CLCT_MODE_CDE ( TITLE 'ļ����ʽ����'),
	FUND_TYPE_CDE ( TITLE '�������ʹ���'),
	FUND_SPVSR ( TITLE '���������'),
	CSTD_PSN ( TITLE '�й���'),
	PD_FLAG ( TITLE 'Ƶ�ȱ�־'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	SPC_ACCT_TYPE ( TITLE 'ר������'),
	CNTR_FLNG_DATE ( TITLE '��ͬ��������'),
	CNTR_EFCTV_DATE ( TITLE '��ͬ��Ч����'),
	CNTR_TLMT ( TITLE '��ͬ����'),
	SPVSR ( TITLE '������'),
	CSTD_PSN ( TITLE '�й���'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	FUTRS_CNTR_CDE ( TITLE '�ڻ���Լ����'),
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	FUTRS_VART_CDE ( TITLE '�ڻ�Ʒ�ִ���'),
	S_TRAD_DATE ( TITLE '��ʼ��������'),
	LAST_TRAD_DATE ( TITLE '���������'),
	CNTR_DLM_M ( TITLE '��Լ�����·�'),
	LAST_DLM_DATE ( TITLE '��󽻸�����'),
	LSTD_REF_PRC ( TITLE '���ƻ�׼�۸�'),
	CNTR_ABBR_ENG ( TITLE '��Լ���[Ӣ��]'),
	CNTR_NAME_ENG ( TITLE '��Լ����[Ӣ��]'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	SET_UP_DATE ( TITLE '��������'),
	MAT_DATE ( TITLE '��������'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	FUTRS_VART_CDE ( TITLE '�ڻ�Ʒ�ִ���'),
	FUTRS_VART_ABBR ( TITLE '�ڻ�Ʒ�ּ��'),
	MIN_TRAD_DPST_RATE ( TITLE '��ͽ��ױ�֤����'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	VART_CDE_SORT ( TITLE 'Ʒ�ִ������'),
	VART_CDE_SORT_NAME ( TITLE 'Ʒ�ִ����������'),
	VART_CDE_VAL ( TITLE 'Ʒ�ִ���ֵ'),
	VART_CDE_DESC ( TITLE 'Ʒ�ִ�������'),
	DATA_DATE (TITLE '��������')
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
	SEC_CDE ( TITLE '֤ȯ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	SEC_NAME ( TITLE '֤ȯ����'),
	OBJ_TYPE ( TITLE '�������'),
	WDI_SEC_ID ( TITLE '���֤ȯID'),
	COMP_ID ( TITLE '��˾ID'),
	S_DATE ( TITLE '��ʼ����'),
	E_DATE ( TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	FUND_CNTR ( TITLE '�����ͬ'),
	FUND_CLCT_DATE ( TITLE '����ļ������'),
	FUND_MAT_DATE ( TITLE '����������'),
	PROD_NAME ( TITLE '��Ʒ����'),
	PROD_STS ( TITLE '��Ʒ״̬'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	VART_NAME ( TITLE 'Ʒ������'),
	VART_ABBR ( TITLE 'Ʒ�ּ��'),
	VART_SORT_CDE ( TITLE 'Ʒ��������'),
	VART_STS_CDE ( TITLE 'Ʒ��״̬����'),
	ISI_N_CDE ( TITLE 'ISIN����'),
	CRNC_CDE ( TITLE '���ִ���'),
	LIST_DATE ( TITLE '��������'),
	DLST_DATE ( TITLE 'ժ������'),
	RMAK ( TITLE '��ע'),
	PD_FLAG ( TITLE 'Ƶ�ȱ�־'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	FUND_PAR_VAL ( TITLE '������ֵ'),
	ISSR_ID ( TITLE '�����˱�ʶ'),
	FUND_OAT_MODE_CDE ( TITLE '����������ʽ����'),
	GRD_FUND_SORT_CDE ( TITLE '�ּ�����������'),
	ISS_DATE ( TITLE '��������'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	RLTN_VART_EXCH_CDE ( TITLE '��ϵƷ�ֽ���������'),
	RLTN_VART_CDE ( TITLE '��ϵƷ�ִ���'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
 SEC_CDE ( TITLE '֤ȯ����'),
 SEC_CTG ( TITLE '֤ȯ���'),
 TRAD_PLAC_CDE ( TITLE '���׳�������'),
 STD_COMP_CDE ( TITLE '��׼��˾����'),
 WDI_COMP_CDE ( TITLE '��ù�˾����'),
 EXCH_COMP_CDE ( TITLE '��������˾����'),
 S_DATE ( TITLE '��ʼ����'),
 E_DATE ( TITLE '��������')
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
 SEC_CDE ( TITLE '֤ȯ����'),
 SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
 SEC_ID ( TITLE '֤ȯID'),
 SEC_NAME ( TITLE '֤ȯ����'),
 IC_TYPE ( TITLE '��ҵ��������'),
 IDSTR_ID ( TITLE '��ҵID'),
 IDSTR_NAME ( TITLE '��ҵ����'),
 S_DATE ( TITLE '��ʼ����'),
 E_DATE ( TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	OPT_CNTR_CDE ( TITLE '��Ȩ��Լ����'),
	EXEC_MODE_CDE ( TITLE '��Ȩ��ʽ����'),
	EXCT_PRC ( TITLE 'ִ�м۸�'),
	UND_SEC_CDE ( TITLE '���֤ȯ����'),
	UND_SEC_ABBR ( TITLE '���֤ȯ���'),
	OPT_EXEC_PRC ( TITLE '��Ȩ��Ȩ�۸�'),
	FST_TRAD_DATE ( TITLE '�׸���������'),
	LAST_TRAD_DATE ( TITLE '���������'),
	OPT_EXEC_DATE ( TITLE '��Ȩ��Ȩ����'),
	OPT_DLM_DATE ( TITLE '��Ȩ��������'),
	OPT_MAT_DATE ( TITLE '��Ȩ��������'),
	PROD_VRSN ( TITLE '��Ʒ�汾'),
	UNIT_DPST ( TITLE '��λ��֤��'),
	WHL_HAND_VOL ( TITLE '��������'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
 STK_CDE ( TITLE '��Ʊ����'),
 STK_NAME ( TITLE '��Ʊ����'),
 SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
 LSTN_BORD ( TITLE '���а��'),
 SEC_CTG ( TITLE '֤ȯ���'),
 IF_ISS_PRIO_STK ( TITLE '�Ƿ������ȹ�'),
 STK_PAR_VAL ( TITLE '��Ʊ��ֵ'),
 ISS_DATE ( TITLE '��������'),
 LIST_DATE ( TITLE '��������'),
 DLST_DATE ( TITLE 'ժ������'),
 CRNC_CDE ( TITLE '���ִ���'),
 ISSR_ID ( TITLE '�����˱�ʶ'),
 COMP_ID ( TITLE '��˾ID'),
 WDI_SEC_ID ( TITLE '���֤ȯID'),
 STK_REG_STS ( TITLE '��Ʊ�Ǽ�״̬'),
 STK_STS ( TITLE '��Ʊ״̬'),
 RISK_ALT_INDC ( TITLE '���վ�ʾ��־'),
 IDSTR_CTGR_CDE ( TITLE '��ҵ�������'),
 IDSTR_CTGR_NAME ( TITLE '��ҵ��������'),
 IDSTR_CLASS_CDE ( TITLE '��ҵ�������'),
 IDSTR_CLASS_NAME ( TITLE '��ҵ��������'),
 PPDM_CDE ( TITLE 'Ͻ������'),
 PPDM_NAME ( TITLE 'Ͻ������'),
 S_DATE ( TITLE '��ʼ����'),
 E_DATE ( TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	STK_PAR_VAL ( TITLE '��Ʊ��ֵ'),
	FRT_ISS_DATE ( TITLE '�״η�������'),
	MKT_LVL_CDE ( TITLE '�г���δ���'),
	ISSR_ID ( TITLE '�����˱�ʶ'),
	ENG_FNAME ( TITLE 'Ӣ��ȫ��'),
	MAT_DATE ( TITLE '��������'),
	CRNC_UNIT ( TITLE '���ҵ�λ'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	TRAD_PLAC_CDE ( TITLE '���׳�������'),
	TRAD_PLAC_DESC ( TITLE '���׳�������'),
	DATA_DATE (TITLE '��������')
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
	ORG_ID ( TITLE '������ʶ'),
	ORG_FNAME ( TITLE '����ȫ��'),
	ORG_ABBR ( TITLE '�������'),
	ENG_FNAME ( TITLE 'Ӣ��ȫ��'),
	ENG_ABBR ( TITLE 'Ӣ�ļ��'),
	IDSTR_SORT_CDE ( TITLE '��ҵ������'),
	CERT_SORT_CDE ( TITLE '֤��������'),
	CERT_NBR ( TITLE '֤������'),
	ORG_CDE ( TITLE '��֯��������'),
	BIZ_LIC_NBR ( TITLE 'Ӫҵִ�պ�'),
	UNFY_SCTY_CRDT_CDE ( TITLE 'ͳһ������ô���'),
	BIZ_REG_REG_NBR ( TITLE '����ע��ǼǺ�'),
	SET_UP_DATE ( TITLE '��������'),
	CORP_REP ( TITLE '���˴���'),
	CORP_SORT_CDE ( TITLE '����������'),
	CORP_REP_CERT_TYPE_CDE ( TITLE '���˴���֤�����ʹ���'),
	CORP_REP_CERT_NBR ( TITLE '���˴���֤������'),
	REG_CAP_CRNC_CDE ( TITLE 'ע���ʱ����ִ���'),
	REG_CAP ( TITLE 'ע���ʱ�'),
	REG_ADDR ( TITLE 'ע���ַ'),
	COMM_ADDR ( TITLE 'ͨ�ŵ�ַ'),
	PSTL_CDE ( TITLE '��������'),
	CNTC_PSN ( TITLE '��ϵ��'),
	CNTC_TEL ( TITLE '��ϵ�绰'),
	MOB_NBR ( TITLE '�ֻ�����'),
	FAX_NBR ( TITLE '�������'),
	EMAIL ( TITLE '��������'),
	MANG_RANG ( TITLE '��Ӫ��Χ'),
	UNIT_CHRC_CDE ( TITLE '��λ���ʴ���'),
	DOM_ABR_INDC ( TITLE '�������־'),
	DATA_SRC_TB ( TITLE '������Դ��'),
	RSRV1 ( TITLE 'Ԥ��1'),
	RSRV2 ( TITLE 'Ԥ��2'),
	RSRV3 ( TITLE 'Ԥ��3'),
	RSRV4 ( TITLE 'Ԥ��4'),
	RSRV5 ( TITLE 'Ԥ��5'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	PROD_ID ( TITLE '��Ʒ��ʶ'),
	PROD_FNAME ( TITLE '��Ʒȫ��'),
	PROD_ABBR ( TITLE '��Ʒ���'),
	ENG_FNAME ( TITLE 'Ӣ��ȫ��'),
	ENG_ABBR ( TITLE 'Ӣ�ļ��'),
	CERT_SORT_CDE ( TITLE '֤��������'),
	CERT_NBR ( TITLE '֤������'),
	GND_CDE ( TITLE '�Ա����'),
	BORN_DATE ( TITLE '��������'),
	ORG_CDE ( TITLE '��֯��������'),
	BIZ_LIC_NBR ( TITLE 'Ӫҵִ�պ�'),
	UNFY_SCTY_CRDT_CDE ( TITLE 'ͳһ������ô���'),
	BIZ_REG_REG_NBR ( TITLE '����ע��ǼǺ�'),
	CORP_REP ( TITLE '���˴���'),
	CORP_SORT_CDE ( TITLE '����������'),
	CORP_REP_CERT_TYPE_CDE ( TITLE '���˴���֤�����ʹ���'),
	CORP_REP_CERT_NBR ( TITLE '���˴���֤������'),
	REG_CAP_CRNC_CDE ( TITLE 'ע���ʱ����ִ���'),
	REG_CAP ( TITLE 'ע���ʱ�'),
	REG_ADDR ( TITLE 'ע���ַ'),
	COMM_ADDR ( TITLE 'ͨ�ŵ�ַ'),
	PSTL_CDE ( TITLE '��������'),
	CNTC_PSN ( TITLE '��ϵ��'),
	CNTC_TEL ( TITLE '��ϵ�绰'),
	MOB_NBR ( TITLE '�ֻ�����'),
	FAX_NBR ( TITLE '�������'),
	EMAIL ( TITLE '��������'),
	MANG_RANG ( TITLE '��Ӫ��Χ'),
	UNIT_CHRC_CDE ( TITLE '��λ���ʴ���'),
	DOM_ABR_INDC ( TITLE '�������־'),
	PTY_SORT_CDE ( TITLE '����������'),
	DATA_SRC_TB ( TITLE '������Դ��'),
	RSRV1 ( TITLE 'Ԥ��1'),
	RSRV2 ( TITLE 'Ԥ��2'),
	RSRV3 ( TITLE 'Ԥ��3'),
	RSRV4 ( TITLE 'Ԥ��4'),
	RSRV5 ( TITLE 'Ԥ��5'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	PSN_ID ( TITLE '���˱�ʶ'),
	NAME ( TITLE '����'),
	CERT_SORT_CDE ( TITLE '֤��������'),
	CERT_NBR ( TITLE '֤������'),
	GND_CDE ( TITLE '�Ա����'),
	BORN_DATE ( TITLE '��������'),
	NTLT ( TITLE '����'),
	DUTY ( TITLE 'ְ��'),
	COMM_ADDR ( TITLE 'ͨ�ŵ�ַ'),
	PSTL_CDE ( TITLE '��������'),
	CNTC_TEL ( TITLE '��ϵ�绰'),
	MOB_NBR ( TITLE '�ֻ�����'),
	EMAIL ( TITLE '��������'),
	PLTC_FACE_CDE ( TITLE '������ò����'),
	OCCU_CDE ( TITLE 'ְҵ����'),
	NATION_CDE ( TITLE '�������'),
	EDU_LVL_CDE ( TITLE '�����̶ȴ���'),
	DOM_ABR_INDC ( TITLE '�������־'),
	DATA_SRC_TB ( TITLE '������Դ��'),
	RSRV1 ( TITLE 'Ԥ��1'),
	RSRV2 ( TITLE 'Ԥ��2'),
	RSRV3 ( TITLE 'Ԥ��3'),
	RSRV4 ( TITLE 'Ԥ��4'),
	RSRV5 ( TITLE 'Ԥ��5'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	PTY_ID ( TITLE '����ID'),
	PTY_SORT_CDE ( TITLE '����������'),
	PTY_NAME ( TITLE '��������'),
	CERT_SORT_CDE ( TITLE '֤��������'),
	CERT_NBR ( TITLE '֤������'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
	IDNTF_INFO_UNIQ_ID ( TITLE '������ϢΨһ��ʶ'),
	PTY_NAME ( TITLE '��������'),
	CERT_SORT_CDE ( TITLE '֤��������'),
	CERT_NBR ( TITLE '֤������'),
	DATA_DATE (TITLE '��������')
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
	ROLE_TYPE_CDE ( TITLE '��ɫ���ʹ���'),
	ROLE_ID ( TITLE '��ɫID'),
	PTY_ID ( TITLE '����ID'),
	PTY_SORT_CDE ( TITLE '����������'),
	PTY_NAME ( TITLE '��������'),
	CERT_SORT_CDE ( TITLE '֤��������'),
	CERT_NBR ( TITLE '֤������'),
	IDNTF_INFO_UNIQ_ID ( TITLE '������ϢΨһ��ʶ'),
	IDNT_MATCH_DGRE_CDE ( TITLE '���ƥ��ȴ���'),
	STS ( TITLE '״̬'),
	S_DATE (TITLE '��ʼ����'),E_DATE (TITLE '��������')
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
 CALENDAR_DATE ( TITLE '����'),
 YEAR_OF_CALENDAR ( TITLE '��'),
 QUARTER_OF_YEAR ( TITLE '��'),
 MONTH_OF_YEAR ( TITLE '��'),
 DAY_OF_WEEK ( TITLE '��'),
 DAY_OF_MONTH ( TITLE '��'),
 MON_YEAR_AND_WEEK ( TITLE '���ܣ���һ��׼'),
 FRI_YEAR_AND_WEEK ( TITLE '���ܣ������׼'),
 SAT_YEAR_AND_WEEK ( TITLE '���ܣ�������׼'),
 SUN_YEAR_AND_WEEK ( TITLE '���ܣ����ձ�׼'),
 IF_TRADDAY ( TITLE '�Ƿ����մ���'),
 LAST_TRADDAY ( TITLE '��һ��������'),
 W_TRADDAY ( TITLE '���ܵڼ���������'),
 M_TRADDAY ( TITLE '���µڼ���������'),
 Q_TRADDAY ( TITLE '�����ڼ���������'),
 Y_TRADDAY ( TITLE '����ڼ���������'),
 EOM_SIGN ( TITLE '��ĩ��־����'),
 EOQ_SIGN ( TITLE '��ĩ��־����'),
 EOY_SIGN ( TITLE '��ĩ��־����'),
 TRADDAY_EOM_SIGN ( TITLE '��������ĩ��־����'),
 TRADDAY_EOQ_SIGN ( TITLE '�����ռ�ĩ��־����'),
 TRADDAY_EOY_SIGN ( TITLE '��������ĩ��־����'),
 TRADDAY_EOW_SIGN ( TITLE '��������ĩ��־����'),
 EOW_SIGN ( TITLE '��ĩ ��־����')
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
