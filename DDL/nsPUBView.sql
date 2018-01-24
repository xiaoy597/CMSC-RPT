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
	AAGT_CLSF ( TITLE 'һ������'),
	AAGT_CLSF_DESC ( TITLE 'һ����������')
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
	IDX_NBR ( TITLE '��� '),
	IDX_CDE ( TITLE 'ָ������'),
	IDX_NAME ( TITLE 'ָ������'),
	IDX_CLSF ( TITLE 'ָ������'),
	DATA_SRC_TYPE ( TITLE '����Դ����'),
	RMAK ( TITLE '��ע')
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
	IDSTR_CDE ( TITLE '��ҵ����'),
	IDSTR_NAME ( TITLE '��ҵ����')
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
	STAT_DATE ( TITLE 'ͳ������'),
	STK_CDE ( TITLE '��Ʊ����'),
	CLSF_CDE ( TITLE '�������'),
	IC_NAME ( TITLE '��ҵ��������'),
	DATA_TIME ( TITLE '����ʱ��')
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
	IDSTR_CDE ( TITLE '��ҵ����'),
	IDSTR_NAME ( TITLE '��ҵ����')
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
	IDX_CDE ( TITLE 'ָ������'),
	IDX_NAME ( TITLE 'ָ������'),
	BLNGS_AREA ( TITLE '��������'),
	DOM_FORN_INDC ( TITLE '���ھ����־'),
	DATA_SRC_TYPE ( TITLE '����Դ����'),
	IF_CALC_PE ( TITLE '�Ƿ������ӯ��'),
	WDI_IDX_CDE ( TITLE '���ָ������')
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
	SC_CDE (TITLE '֤ȯ��˾����'),
  SC_NAME (TITLE '֤ȯ��˾����')
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
	PPDM_CDE ( TITLE 'Ͻ������'),
	PPDM_NAME ( TITLE 'Ͻ������')
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
	PPDM_CDE_INTF ( TITLE 'Ͻ������_�ӿ�'),
	PPDM_CDE_SYS_INR ( TITLE 'Ͻ������_ϵͳ��'),
	BLNGS_INTF ( TITLE '�����ӿ�')
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
	IVST_GUART_SC_CDE ( TITLE 'Ͷ��֤ȯ��˾����'),
	IVST_GUART_SC_NAME ( TITLE 'Ͷ��֤ȯ��˾����'),
	CORR_RLTN_TYPE ( TITLE '��Ӧ��ϵ����'),
	CORR_SEC_ORG_CDE ( TITLE '��Ӧ֤ȯ��������'),
	CORR_SEC_ORG_NAME ( TITLE '��Ӧ֤ȯ��������')
 from  nsPUBMart.CDE_SC_CDE_CORR_RLTN_TB;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.CDE_SEC_CTG;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--�м����ֵ��ͼ(5��)
REPLACE VIEW nsPUBView.CDE_SEC_CTG (
	SEC_CTG_CDE,
	SEC_CTG_DESC
)
 AS LOCKING nsPUBMart.CDE_SEC_CTG FOR ACCESS 
 SELECT 
	SEC_CTG_CDE ( TITLE '֤ȯ������'),
	SEC_CTG_DESC ( TITLE '֤ȯ�������')
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
	DIMN ( TITLE 'ά��'),
	DIMN_NAME ( TITLE 'ά����'),
	CDE ( TITLE '����'),
	CODE_VAL ( TITLE '��ֵ')
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
	STAT_ANGLE_CLASS_CDE ( TITLE 'ͳ�ƽǶȴ������'),
	STAT_ANGLE_CLASS_NAME ( TITLE 'ͳ�ƽǶȴ�������'),
	STAT_ANGLE_CDE ( TITLE 'ͳ�ƽǶȱ���'),
	STAT_ANGLE_NAME ( TITLE 'ͳ�ƽǶ�����')
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
	CLSF_1 ( TITLE 'һ������'),
	CLSF_1_DESC ( TITLE 'һ����������'),
	CLSF_2 ( TITLE '��������'),
	CLSF_2_DESC ( TITLE '������������'),
	CLSF_3 ( TITLE '��������'),
	CLSF_3_DESC ( TITLE '������������'),
	Cmsmc_CLSF ( TITLE '��֤������'),
	Cmsmc_CLSF_DESC ( TITLE '��֤����������')	
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
	DSPLY_NBR ( TITLE 'չʾ���'),
	STD_CNTR_CDE ( TITLE '��׼��Լ����'),
	STD_CNTR_NAME ( TITLE '��׼��Լ����'),
	DSPLY_NAME ( TITLE 'չʾ����'),
	DSPLY_NAME_ENG ( TITLE 'չʾ����_Ӣ��'),
	UNIT ( TITLE '��λ'),
	FUTRS_EXCH_CDE ( TITLE '�ڻ�����������'),
	FUTRS_EXCH_CHN_NAME ( TITLE '�ڻ�������������'),
	LIST_DATE ( TITLE '��������'),
	DELS_DATE ( TITLE '��������'),
	FUTRS_VART_NBR ( TITLE '�ڻ�Ʒ�����'),
	FUTRS_VART_TYPE_CDE ( TITLE '�ڻ�Ʒ�����ʹ���'),
	FUTRS_VART_TYPE_CHN ( TITLE '�ڻ�Ʒ������_����'),
	FUTRS_VART_TYPE_ENG ( TITLE '�ڻ�Ʒ������_Ӣ��')
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
	CDE ( TITLE '����'),
	THREE_ABBR ( TITLE '��λ���'),
	NAME ( TITLE '����'),
	CLSF_TYPE_CDE ( TITLE '�������ʹ���'),
	CLSF_CDE ( TITLE '�������'),
	CLSF_DESC ( TITLE '��������')
 from  nsPUBMart.COUN_CDE;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.FCPTL_INVST_CLSF_ONE;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--ǰ̨������ͼ2��
REPLACE VIEW nsPUBView.FCPTL_INVST_CLSF_ONE (
	INVST_SORT_CDE,
	INVST_SORT_NAME
)
 AS LOCKING nsPUBMart.FCPTL_INVST_CLSF_ONE FOR ACCESS 
 SELECT 
	INVST_SORT_CDE ( TITLE 'Ͷ����������'),
	INVST_SORT_NAME ( TITLE 'Ͷ�����������')
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
	INVST_SORT_CDE ( TITLE 'Ͷ����������'),
	INVST_SORT_NAME ( TITLE 'Ͷ�����������')
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
	Stat_Date (TITLE ' ͳ������'),
        Rate_CLSF (TITLE ' ��������'),
        Rate_LLMT (TITLE ' ��������'),
        Rate_ULMT (TITLE ' ��������'),
        CNTR_CNT (TITLE ' ��Լ����'),
        ACCT_VOL (TITLE ' �˻���'),
        ST_RPCHS_AMT (TITLE ' �����ؽ��') 
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
	PSTN_AMT ( TITLE '�ֲֽ��')
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
	EXCH_CUST_CDE ( TITLE '�������ͻ�����'),
	EXCH_NBR ( TITLE '���������'),
	FC_MEMB_NBR ( TITLE '�ڻ���˾��Ա��'),
	FUTRS_UNFY_OPN_ACCT_CUST_CDE ( TITLE '�ڻ�ͳһ�����ͻ�����'),
	FUTRS_MKT_AAGT_CLSF ( TITLE '�ڻ��г�һ������'),
	FCPTL_SCND_CLSF ( TITLE '���ʶ�������'),
	INVST_STS ( TITLE 'Ͷ����״̬'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	MIDL_CERTF_MONIT_CLSF ( TITLE '��֤������'),
	CORLT_RLTN_IF_CFRM ( TITLE '������ϵ�Ƿ�ȷ��')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	LSTN_BORD ( TITLE '���а��'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	STK_INVST_SORT ( TITLE '��ƱͶ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	LSTN_BORD ( TITLE '���а��'),
	IC ( TITLE '��ҵ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	INVST_OPN_ACCT_PPDM ( TITLE 'Ͷ���߿���Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	LSTN_BORD ( TITLE '���а��'),
	IC ( TITLE '��ҵ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	REG_JUR ( TITLE '���Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	ACCT_TYPE ( TITLE '�˻�����'),
	LSTN_BORD ( TITLE '���а��'),
	IC ( TITLE '��ҵ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	STK_INVST_SORT ( TITLE '��ƱͶ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	BOND_CLSF ( TITLE 'ծȯ����'),
	RATE_TYPE ( TITLE '��������'),
	ISSR_IDSTR_CTGR ( TITLE '��������ҵ�����ࣩ'),
	ISSR_ESECTOR ( TITLE '�����˾��óɷ�'),
	ISSR_REG_PPDM ( TITLE '������ע��Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	INVST_SORT ( TITLE 'Ͷ�������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	CRS_MGN_INVST_SORT ( TITLE '���г�Ͷ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	INVST_SORT ( TITLE 'Ͷ�������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	LSTN_BORD ( TITLE '���а��'),
	IDSTR_CTGR_CDE ( TITLE '��ҵ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	INVST_SORT ( TITLE 'Ͷ�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	INVST_SORT ( TITLE 'Ͷ�������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	LSTN_BORD ( TITLE '���а��'),
	IDSTR_CTGR_CDE ( TITLE '��ҵ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	INVST_SORT ( TITLE 'Ͷ�������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	LSTN_BORD ( TITLE 'ָ�����'),
	IDSTR_CTGR_CDE ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	STK_TYPE ( TITLE '�ɷ�����'),
	LSTN_BORD ( TITLE '���а��'),
	IC ( TITLE '��ҵ����'),
	HDGS_CLSF ( TITLE '�عɷ���'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	REG_JUR ( TITLE '���Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
 STAT_DATE ( TITLE 'ͳ������'),
 FREQ ( TITLE 'Ƶ��'),
 RISK_ALT_INDC ( TITLE '���վ�ʾ��־'),
 REG_JUR ( TITLE '���Ͻ��'),
 IDX_CDE ( TITLE 'ָ�����'),
 IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	STK_INVST_SORT ( TITLE '��ƱͶ�������'),
	DOM_FORN_INDC ( TITLE '���ھ����־'),
	INVST_OPN_ACCT_PPDM ( TITLE 'Ͷ���߿���Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	REG_JUR ( TITLE '���Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	ETF_TYPE ( TITLE 'ETF����'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	STK_INDX_FUTRS_VART_CDE ( TITLE '��ָ�ڻ�Ʒ�ִ���'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	STK_INDX_FUTRS_VART_CDE ( TITLE '��ָ�ڻ�Ʒ�ִ���'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	ETF_TYPE ( TITLE 'ETF����'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	EXCH_NBR ( TITLE '���������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	SEC_CTG ( TITLE '֤ȯ���'),
	LSTN_BORD ( TITLE '���а��'),
	LIST_COMP_IC ( TITLE '���й�˾��ҵ����'),
	APLY_MYRD_IC ( TITLE '������ҵ����'),
	STK_ORETF_TYPE ( TITLE '��Ʊ��ETF����'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	STK_TYPE ( TITLE '��Ʊ����'),
	LSTN_BORD ( TITLE '���а��'),
	LIST_COMP_IC ( TITLE '���й�˾��ҵ����'),
	APLY_MYRD_IC ( TITLE '������ҵ����'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	EXCH_NBR ( TITLE '���������'),
	FUTRS_SORT ( TITLE '�ڻ����'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	EXCH_NBR ( TITLE '���������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FCPTL_INVST_SORT1 ( TITLE '����Ͷ�������1'),
	FCPTL_INVST_SORT2 ( TITLE '����Ͷ�������2'),
	FCPTL_INVST_SORT3 ( TITLE '����Ͷ������𣨹���3'),
	LSTN_BORD ( TITLE '���а��'),
	LIST_COMP_IC ( TITLE '���й�˾��ҵ����'),
	APLY_MYRD_IC ( TITLE '������ҵ����'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FUTRS_INVST_SORT ( TITLE '�ڻ�Ͷ�������'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	EXCH_NBR ( TITLE '���������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	VART_ONE_CLSF ( TITLE '�ڻ����'),
	EXCH_NBR ( TITLE '���������'),
	FUTRS_INVST_SORT ( TITLE '�ڻ�Ͷ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	FUTRS_INVST_SORT ( TITLE '�ڻ�Ͷ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	ACCT_TYPE ( TITLE '�˻�����'),
	BOND_CLSF ( TITLE 'ծȯ����'),
	STK_INVST_SORT ( TITLE '��ƱͶ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_NAME ( TITLE 'ָ������'),
	IDX_TABLE ( TITLE 'ָ�����'),
	IDX_TABLE_NAME ( TITLE 'ָ���������'),
	IDX_VIEW ( TITLE 'ָ����ͼ��'),
	IDX_S_CRIPT ( TITLE 'ָ��ű���'),
	FREQ ( TITLE 'Ƶ��'),
	RMAK ( TITLE '��ע')
 from  nsPUBMart.KPI_INFO;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_INFO_DIM_VW;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
/*
������  :  ld
��������:  KPI��Ϣ_��ά��
�޸���ʷ:
�޸���   �޸�����    �޸�����
����˵������Ϊ��ͼ�е�columntitle���ǿ�ֵ������ϵͳ��DBC.COLUMNS����Դ��Ϊ NSPUBMART��û�д���ͼ�����
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
(	SELECT	B.columnid	AS	columnid		--�ֶ����
		,A.idx_cde	AS	idx_cde			--ָ�����
		,A.idx_name	AS	idx_name		--ָ������
		,A.freq		AS	freq			--Ƶ��
		,B.tablename	AS	tablename		--��Ӣ����
		,B.commentstring	AS	commentstring	--��������
		,B.columnname	AS	columnname		--�ֶ�Ӣ����
		,B.columntitle	AS	columntitle		--�ֶ�������
	FROM (	SELECT	idx_cde					--ָ������
			,idx_name				--ָ������
			,substr(idx_table,11) AS idx_table	--KPI����
			,freq					--Ƶ��
		from	NSPUBVIEW.KPI_INFO ) A
	LEFT JOIN (
		SELECT	T1.columnid	AS	columnid
			,T1.tablename	AS	tablename		--��Ӣ����
			,T2.commentstring	AS	commentstring	--��������
			,T1.columnname	AS	columnname		--�ֶ�Ӣ����
			,T1.columntitle	AS	columntitle		--�ֶ�������
		FROM	DBC.COLUMNS T1
		LEFT JOIN DBC.TABLES T2
		ON	T1.tablename = T2.tablename
		AND	T2.databasename = 'NSPUBMART'
		WHERE	T1.databasename = 'NSPUBMART'
		  AND	T1.tablename  LIKE 'KPI_%'
		  AND	T1.tablename <> 'KPI_INFO'
		  AND	T1.tablename IN (SELECT SUBSTR(idx_table,11) FROM NSPUBVIEW.KPI_INFO)
		  AND	T1.columntitle NOT IN ('ͳ������','Ƶ��','ָ�����','ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	LSTN_BORD ( TITLE '���а��'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	REG_JUR ( TITLE '���Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	LSTN_BORD ( TITLE '���а��'),
	IC ( TITLE '��ҵ����'),
	HDGS_CLSF ( TITLE '�عɷ���'),
	REG_JUR ( TITLE '���Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
  STAT_DATE ( TITLE 'ͳ������'),
  FREQ ( TITLE 'Ƶ��'),
  ACCT_TYPE ( TITLE '�˻�����'),
  STK_INVST_SORT ( TITLE '��ƱͶ�������'),
  INVST_OPN_ACCT_PPDM ( TITLE 'Ͷ���߿���Ͻ��'),
  IDX_CDE ( TITLE 'ָ�����'),
  IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	STK_TYPE ( TITLE '�ɷ�����'),
	LSTN_BORD ( TITLE '���а��'),
	IC ( TITLE '��ҵ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	REG_JUR ( TITLE '���Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
  STAT_DATE ( TITLE 'ͳ������'),
  FREQ ( TITLE 'Ƶ��'),
  SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
  ACCT_TYPE ( TITLE '�˻�����'),
  TRAD_TYPE ( TITLE '��������'),
  STK_INVST_SORT ( TITLE '��ƱͶ�������'),
  IDX_CDE ( TITLE 'ָ�����'),
  IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	REG_JUR ( TITLE '���Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
 from  nsPUBMart.KPI_SC_IDX;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.KPI_SC_ZRT_BIZ_IDX;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--KPI��ͼ(31��)
REPLACE VIEW nsPUBView.KPI_SC_ZRT_BIZ_IDX (
	STAT_DATE,
	FREQ,
	SC_CDE,
	IDX_CDE,
	IDX_VAL
)
 AS LOCKING nsPUBMart.KPI_SC_ZRT_BIZ_IDX FOR ACCESS 
 SELECT 
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	SC_CDE ( TITLE '֤ȯ��˾����'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
  STAT_DATE ( TITLE 'ͳ������'),
  FREQ ( TITLE 'Ƶ��'),
  SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
  ACCT_TYPE ( TITLE '�˻�����'),
  STK_INVST_SORT ( TITLE '��ƱͶ�������'),
  DOM_FORN_INDC ( TITLE '���ھ����־'),
  INVST_OPN_ACCT_PPDM ( TITLE 'Ͷ���߿���Ͻ��'),
  IDX_CDE ( TITLE 'ָ�����'),
  IDX_VAL ( TITLE 'ָ��ֵ')
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
  STAT_DATE ( TITLE 'ͳ������'),
  FREQ ( TITLE 'Ƶ��'),
  SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
  ACCT_TYPE ( TITLE '�˻�����'),
  STK_INVST_SORT ( TITLE '��ƱͶ�������'),
  IDX_CDE ( TITLE 'ָ�����'),
  IDX_VAL ( TITLE 'ָ��ֵ')
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
  STAT_DATE ( TITLE 'ͳ������'),
  FREQ ( TITLE 'Ƶ��'),
  SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
  ACCT_TYPE ( TITLE '�˻�����'),
  STK_INVST_SORT ( TITLE '��ƱͶ�������'),
  IDX_CDE ( TITLE 'ָ�����'),
  IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	SC_CDE ( TITLE '֤ȯ��˾����'),
	INVST_SORT ( TITLE 'Ͷ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	SC_CDE ( TITLE '֤ȯ��˾����'),
	INVST_SORT ( TITLE 'Ͷ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	SEC_CTG ( TITLE '֤ȯ���'),
	INVST_SORT ( TITLE 'Ͷ�������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	INVST_TYPE ( TITLE 'Ͷ��������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	INVST_TYPE ( TITLE 'Ͷ��������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	LSTN_BORD ( TITLE '���а��'),
	HDGS_CLSF ( TITLE '�عɷ���'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	STK_TYPE ( TITLE '�ɷ�����'),
	LSTN_BORD ( TITLE '���а��'),
	IC ( TITLE '��ҵ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	STK_INVST_SORT ( TITLE '��ƱͶ�������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FREQ ( TITLE 'Ƶ��'),
	STK_TYPE ( TITLE '�ɷ�����'),
	LSTN_BORD ( TITLE '���а��'),
	HDGS_CLSF ( TITLE '�عɷ���'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	REG_JUR ( TITLE '���Ͻ��'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	RPT_PRD ( TITLE '������'),
	COMP_ID ( TITLE '��˾ID'),
	STK_CDE ( TITLE '��Ʊ����'),
	STK_ABBR ( TITLE '��Ʊ���'),
	IDSTR_CTGR_CDE ( TITLE '��ҵ�������'),
	IDSTR_CTGR_NAME ( TITLE '��ҵ��������'),
	IDSTR_CLASS_CDE ( TITLE '��ҵ�������'),
	IDSTR_CLASS_NAME ( TITLE '��ҵ��������'),
	PPDM_CDE ( TITLE 'Ͻ������'),
	PPDM_NAME ( TITLE 'Ͻ������'),
	TRDT ( TITLE '��ͳ����ҵ'),
	HIGH_ENERGY ( TITLE '�ߺ��ܲ�ҵ'),
	MODERN_SRVC ( TITLE '�ִ�����ҵ'),
	LIGHT_ASET ( TITLE '���ʲ���ҵ'),
	STRTG_EMERG ( TITLE 'ս��������ҵ'),
	OVER_CAPACITY ( TITLE '��������ҵ'),
	HDGS_CLSF_CDE ( TITLE '�عɷ������'),
	HDGS_CLSF_NAME ( TITLE '�عɷ�������'),
	INVNT ( TITLE '���'),
	ASET_TOT_AMT ( TITLE '�ʲ��ܶ�'),
	LBLT_TOT ( TITLE '��ծ�ϼ�'),
	NAST ( TITLE '���ʲ�'),
	CAP ( TITLE '�ɱ�'),
	BIZ_ENING ( TITLE 'Ӫҵ����'),
	SELL_CHRG ( TITLE '���۷���'),
	MNGMT_CHRG ( TITLE '�������'),
	FINA_CHRG ( TITLE '�������'),
	BIZ_PRFT ( TITLE 'Ӫҵ����'),
	PRFT_TOT_AMT ( TITLE '�����ܶ�'),
	INCM_TAX ( TITLE '����˰'),
	BIZ_TOT_ENING ( TITLE 'Ӫҵ������'),
	NET_PRFT ( TITLE '������'),
	NET_PRFT_TOT_AMT ( TITLE '�������ܶ�'),
	N_ALLOT_PRFT ( TITLE 'δ��������'),
	OA_CASH_FLOW_NET_AMT ( TITLE '��Ӫ������ֽ���������'),
	IA_CASH_FLOW_NET_AMT ( TITLE 'Ͷ�ʻ�������ֽ���������'),
	FA_CASH_FLOW_NET_AMT ( TITLE '���ʻ�������ֽ���������'),
	LIST_INDC ( TITLE '���б�־'),
	ASET_LBLT_RATE ( TITLE '�ʲ���ծ��'),
	TOT_ASET_YLD ( TITLE '���ʲ�������'),
	NAST_YLD ( TITLE '���ʲ�������'),
	BIZ_ENING_PRFT_RATE ( TITLE 'Ӫҵ����������'),
	INVNT_TNOV_RATE ( TITLE '�����ת�ʣ���λ���Σ�'),
	ASET_TOT_AMT_EOLY ( TITLE '�ʲ��ܶ�_����ĩ'),
	NAST_EOLY ( TITLE '���ʲ�_����ĩ'),
	INVNT_EOLY ( TITLE '���_����ĩ')
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
	RPT_PRD ( TITLE '������'),
	COMP_ID ( TITLE '��˾ID'),
	STK_CDE ( TITLE '��Ʊ����'),
	STK_ABBR ( TITLE '��Ʊ���'),
	IDSTR_CTGR_CDE ( TITLE '��ҵ�������'),
	IDSTR_CTGR_NAME ( TITLE '��ҵ��������'),
	IDSTR_CLASS_CDE ( TITLE '��ҵ�������'),
	IDSTR_CLASS_NAME ( TITLE '��ҵ��������'),
	PPDM_CDE ( TITLE 'Ͻ������'),
	PPDM_NAME ( TITLE 'Ͻ������'),
	TRDT ( TITLE '��ͳ����ҵ'),
	HIGH_ENERGY ( TITLE '�ߺ��ܲ�ҵ'),
	MODERN_SRVC ( TITLE '�ִ�����ҵ'),
	LIGHT_ASET ( TITLE '���ʲ���ҵ'),
	STRTG_EMERG ( TITLE 'ս��������ҵ'),
	OVER_CAPACITY ( TITLE '��������ҵ'),
	HDGS_CLSF_CDE ( TITLE '�عɷ������'),
	HDGS_CLSF_NAME ( TITLE '�عɷ�������'),
	INVNT ( TITLE '���'),
	ASET_TOT_AMT ( TITLE '�ʲ��ܶ�'),
	LBLT_TOT ( TITLE '��ծ�ϼ�'),
	NAST ( TITLE '���ʲ�'),
	CAP ( TITLE '�ɱ�'),
	BIZ_ENING ( TITLE 'Ӫҵ����'),
	SELL_CHRG ( TITLE '���۷���'),
	MNGMT_CHRG ( TITLE '�������'),
	FINA_CHRG ( TITLE '�������'),
	BIZ_PRFT ( TITLE 'Ӫҵ����'),
	PRFT_TOT_AMT ( TITLE '�����ܶ�'),
	INCM_TAX ( TITLE '����˰'),
	BIZ_TOT_ENING ( TITLE 'Ӫҵ������'),
	NET_PRFT ( TITLE '������'),
	NET_PRFT_TOT_AMT ( TITLE '�������ܶ�'),
	N_ALLOT_PRFT ( TITLE 'δ��������'),
	OA_CASH_FLOW_NET_AMT ( TITLE '��Ӫ������ֽ���������'),
	IA_CASH_FLOW_NET_AMT ( TITLE 'Ͷ�ʻ�������ֽ���������'),
	FA_CASH_FLOW_NET_AMT ( TITLE '���ʻ�������ֽ���������'),
	LIST_INDC ( TITLE '���б�־'),
	ASET_LBLT_RATE ( TITLE '�ʲ���ծ��'),
	TOT_ASET_YLD ( TITLE '���ʲ�������'),
	NAST_YLD ( TITLE '���ʲ�������'),
	BIZ_ENING_PRFT_RATE ( TITLE 'Ӫҵ����������'),
	INVNT_TNOV_RATE ( TITLE '�����ת�ʣ���λ���Σ�'),
	ASET_TOT_AMT_EOLY ( TITLE '�ʲ��ܶ�_����ĩ'),
	NAST_EOLY ( TITLE '���ʲ�_����ĩ'),
	INVNT_EOLY ( TITLE '���_����ĩ')
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
	TRAD_DATE ( TITLE '�ɽ�����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	SEC_ACCT ( TITLE '֤ȯ�˻�'),
	SEC_CDE ( TITLE '֤ȯ����'),
	CRDT_TRAD_TYPE ( TITLE '���ý�������'),
	TRAD_VOL ( TITLE '�ɽ�����'),
	TRAD_AMT ( TITLE '�ɽ����'),
	TRAD_CNT ( TITLE '���ױ���')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	IDX_CDE ( TITLE 'ָ������'),
	IDX_NAME ( TITLE 'ָ������'),
	OPN_POINT ( TITLE '���̵���'),
	PRE_CLS_POINT ( TITLE 'ǰ���̵���'),
	CLS_POINT ( TITLE '���̵���'),
	MAX_POINT ( TITLE '��ߵ���'),
	MIN_POINT ( TITLE '��͵���'),
	D_CHG_RATE ( TITLE '���ǵ���'),
	Y_CHG_RATE ( TITLE '���ǵ���'),
	RETN ( TITLE '����������'),
	TRAD_AMT ( TITLE '�ɽ����'),
	TRAD_QTT ( TITLE '�ɽ���'),
	TCAP ( TITLE '�ܹɱ�'),
	NEGT_CAP ( TITLE '��ͨ�ɱ�'),
	TOT_MKT_VAL ( TITLE '����ֵ'),
	NEGT_MKT_VAL ( TITLE '��ͨ��ֵ'),
	MKT_VAL_TNOV_RATE ( TITLE '��ֵ������'),
	TRAD_QTT_TNOV_RATE ( TITLE '�ɽ���������'),
	AVG_STK_PRC ( TITLE 'ƽ���ɼ�'),
	DATA_SRC_TYPE ( TITLE '����Դ����')
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
BIZ_DATE  (TITLE 'ҵ������')
,IDX_CDE  (TITLE 'ָ������')
,RETN     (TITLE '����������')
,TRAD_QTT (TITLE '�ɽ���')
,TRAD_AMT (TITLE '�ɽ����')
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
	STAT_DATE ( TITLE 'ͳ������'),
	ISS_B_DATE ( TITLE '������ʼ����'),
	BOND_CDE ( TITLE 'ծȯ����'),
	BOND_NAME ( TITLE 'ծȯ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	BOND_CLSF_MIDL_CERTF ( TITLE 'ծȯ����_��֤'),
	BOND_MKT_VAL ( TITLE 'ծȯ��ֵ'),
	BOND_PAR_VAL ( TITLE 'ծȯ��ֵ'),
	CNCTR_TRAD_PAR_VAL ( TITLE '���н�����ֵ'),
	CNCTR_TRAD_AMT ( TITLE '���н��׽��'),
	CNCTR_TRAD_CNT ( TITLE '���н��ױ���')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_NAME ( TITLE 'ָ������'),
	TYP ( TITLE '����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	SEC_CLSF ( TITLE '֤ȯ����'),
	SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
	FCPTL_INVST_ID ( TITLE '����Ͷ���߱�ʶ'),
	CRS_MGN_INVST_ID ( TITLE '���г�Ͷ���߱�ʶ'),
	BUY_VOL ( TITLE '��������'),
	BUY_AMT ( TITLE '������'),
	SAL_VOL ( TITLE '��������'),
	SAL_AMT ( TITLE '�������'),
	BUY_AMT_MKT_PRC ( TITLE '������_�м�'),
	SAL_AMT_MKT_PRC ( TITLE '�������_�м�'),
	BUY_CNT ( TITLE '�������'),
	SAL_CNT ( TITLE '��������'),
	ETF_AFP_SHR ( TITLE 'ETF�깺�ݶ�'),
	ETF_REDEM_SHR ( TITLE 'ETF��طݶ�')
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
	STAT_DATE ( TITLE 'ͳ������'),
	VART_CNTR ( TITLE 'Ʒ�ֺ�Լ'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	FUTRS_UNFY_OPN_ACCT_CUST_CDE ( TITLE '�ڻ�ͳһ�����ͻ�����'),
	EXCH_CUST_CDE ( TITLE '�������ͻ�����'),
	EXCH_NBR ( TITLE '���������'),
	FC_MEMB_NBR ( TITLE '�ڻ���˾��Ա��'),
	TRAD_INDC ( TITLE '������־'),
	PSTN_AMT ( TITLE '�ֲֽ��'),
	PSTN_QTT ( TITLE '�ֲ���'),
	TRAD_DPST ( TITLE '���ױ�֤��')
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
	STAT_DATE ( TITLE 'ͳ������'),
	VART_CNTR ( TITLE 'Ʒ�ֺ�Լ'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	FUTRS_UNFY_OPN_ACCT_CUST_CDE ( TITLE '�ڻ�ͳһ�����ͻ�����'),
	EXCH_CUST_CDE ( TITLE '�������ͻ�����'),
	EXCH_NBR ( TITLE '���������'),
	FC_MEMB_NBR ( TITLE '�ڻ���˾��Ա��'),
	TRAD_INDC ( TITLE '������־'),
	KPWH_INDC ( TITLE '��ƽ�ֱ�־'),
	TRAD_AMT ( TITLE '�ɽ����'),
	TRAD_QTT ( TITLE '�ɽ���')
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
	STAT_DATE ( TITLE 'ͳ������'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	SEC_CDE ( TITLE '֤ȯ����'),
	SC_CDE ( TITLE '֤ȯ��˾����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	FIN_BAL ( TITLE '�������'),
	SEC_LN_BAL ( TITLE '��ȯ���')
 from  nsPUBMart.MID_FCPTL_INVST_SMT_BAL;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
SHOW VIEW nsPUBView.MID_FCRS_MGN_INVST_SEC_PSTN;

 *** Text of DDL statement returned. 
 *** Total elapsed time was 1 second.

----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
--�м����ͼ(12��)
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
	STAT_DATE ( TITLE 'ͳ������'),
	SEC_CDE ( TITLE '֤ȯ���� '),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
	CAP_TYPE ( TITLE '�ɱ�����'),
	SEC_CLSF ( TITLE '֤ȯ����'),
	FCPTL_INVST_ID ( TITLE '����Ͷ���߱�ʶ'),
	CRS_MGN_INVST_ID ( TITLE '���г�Ͷ���߱�ʶ'),
	PSTN_VOL ( TITLE '�ֲ�����'),
	PSTN_MKT_VAL ( TITLE '�ֲ���ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FC_CDE ( TITLE '�ڻ���˾����'),
	FC_NAME ( TITLE '�ڻ���˾����'),
	FC_PPDM_CDE ( TITLE '�ڻ���˾Ͻ������'),
	FC_PPDM_NAME ( TITLE '�ڻ���˾Ͻ������'),
	BRCH_VOL ( TITLE 'Ӫҵ������'),
	END_FUTRS_PRACT_PSN_VOL ( TITLE '��ĩ�ڻ���ҵ��Ա����'),
	TOT_ASET ( TITLE '���ʲ�'),
	NET_CAP ( TITLE '���ʱ�'),
	NAST ( TITLE '���ʲ�'),
	BIZ_ENING ( TITLE 'Ӫҵ����'),
	BIZ_EXPDT ( TITLE 'Ӫҵ֧��'),
	PRFT_TOT_AMT ( TITLE '�����ܶ�'),
	NET_PRFT ( TITLE '������'),
	AVG_FINA_LVRG ( TITLE 'ƽ������ܸ�')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FUTRS_UNFY_OPN_ACCT_CUST_CDE ( TITLE '�ڻ�ͳһ�����ͻ�����'),
	CUST_WTHDR ( TITLE '�ͻ�����'),
	CUST_DPST ( TITLE '�ͻ����'),
	CUST_BANKRL_EQUT ( TITLE '�ͻ��ʽ�Ȩ��')
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
	STAT_DATE ( TITLE 'ͳ������'),
	SC_CDE ( TITLE '֤ȯ��˾����'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	BANKRL_SORT ( TITLE '�ʽ����'),
	STC_AMT ( TITLE '��ת֤���'),
	CTS_AMT ( TITLE '֤ת�����'),
	SETL_BANKRL_BAL ( TITLE '�����ʽ����')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	BIZ_INDC ( TITLE 'ҵ���־'),
	SEC_CDE ( TITLE '֤ȯ����'),
	SEC_NAME ( TITLE '֤ȯ����'),
	AH_ID ( TITLE 'A+H��ʶ'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	PRE_CLS_PRC ( TITLE 'ǰ���̼�'),
	CLS_PRC ( TITLE '���̼�'),
	TCAP ( TITLE '�ܹɱ�'),
	LSTN_NEGT_CAP ( TITLE '��������ͨ�ɱ�'),
	TOT_MKT_VAL ( TITLE '����ֵ'),
	LSTN_NEGT_MKT_VAL ( TITLE '��������ͨ��ֵ'),
	MKT_VAL_TNOV_RATE ( TITLE '��ֵ������'),
	CNVT_PREM_RATE ( TITLE '�������'),
	D_CHG_RATE ( TITLE '���ǵ���'),
	BUY_QTT ( TITLE '������'),
	SQTT ( TITLE '������'),
	BUY_AMT ( TITLE '������'),
	SAL_AMT ( TITLE '�������'),
	TRAD_QTT_FULL_MKT ( TITLE '�ɽ���_ȫ�г�'),
	TRAD_AMT_FULL_MKT ( TITLE '�ɽ����_ȫ�г�'),
	OVRS_TRAD_QTT ( TITLE '���ճɽ���'),
	OVRS_AMT ( TITLE '���ս��')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	IDX_CDE ( TITLE 'ָ������'),
	IDX_NAME ( TITLE 'ָ������'),
	OPN_POINT ( TITLE '���̵���'),
	CLS_POINT ( TITLE '���̵���'),
	MAX_POINT ( TITLE '��ߵ���'),
	MIN_POINT ( TITLE '��͵���'),
	TRAD_QTT ( TITLE '�ɽ���'),
	TRAD_AMT ( TITLE '�ɽ����'),
	MKT_VAL ( TITLE '��ֵ'),
	PE ( TITLE '��ӯ��'),
	PB ( TITLE '�о���'),
	DIVD_RATE ( TITLE '��Ϣ��'),
	RETN ( TITLE '����������'),
	D_CHG_RATE ( TITLE '���ǵ���'),
	W_CHG_RATE ( TITLE '���ǵ���'),
	M_CHG_RATE ( TITLE '���ǵ���'),
	Y_CHG_RATE ( TITLE '���ǵ���')
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
	SEC_ACCT ( TITLE '֤ȯ�˻�'),
	EXCH_CDE ( TITLE '����������'),
	OAP_ACCT ( TITLE 'һ��ͨ�˻�'),
	SEC_CDE ( TITLE '֤ȯ����'),
	AFP_CDE ( TITLE '�깺����'),
	AFP_MODE ( TITLE '�깺��ʽ'),
	AFP_DATE ( TITLE '�깺����'),
	AFP_TIME ( TITLE '�깺ʱ��'),
	DATA_DATE ( TITLE '��������'),
	VLD_AFP_VOL ( TITLE '��Ч�깺����'),
	AFP_PRC ( TITLE '�깺�۸�'),
	CHK_MKT_CPT ( TITLE '�����ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	INVST_TYPE ( TITLE 'Ͷ��������'),
	SEC_NAME ( TITLE '֤ȯ����'),
	EXCH_CDE ( TITLE '����������'),
	AFP_SHR ( TITLE '�깺�ݶ�'),
	REDEM_SHR ( TITLE '��طݶ�'),
	BUY_AMT ( TITLE '������'),
	SAL_AMT ( TITLE '�������'),
	AFP_CNT ( TITLE '�깺����'),
	REDEM_CNT ( TITLE '��ر���'),
	BUY_CNT ( TITLE '�������'),
	SAL_CNT ( TITLE '��������')
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
	STAT_DATE ( TITLE 'ͳ������'),
	FUTRS_INVST_SORT ( TITLE '�ڻ�Ͷ�������'),
	CUST_WTHDR ( TITLE '�ͻ�����'),
	CUST_DPST ( TITLE '�ͻ����'),
	CUST_BANKRL_EQUT ( TITLE '�ͻ��ʽ�Ȩ��')
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
	STAT_DATE ( TITLE 'ͳ������'),
	VART_CNTR ( TITLE 'Ʒ�ֺ�Լ'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	VART_CHN_NAME ( TITLE 'Ʒ��������'),
	VART_SCND_CLSF ( TITLE 'Ʒ�ֶ�������'),
	EXCH_NBR ( TITLE '���������'),
	FC_SETL_MEMB_NBR ( TITLE '�ڻ���˾�����Ա��'),
	FUTRS_INVST_SORT ( TITLE '�ڻ�Ͷ�������'),
	CRS_MGN_INVST_SORT ( TITLE '���г�Ͷ�������'),
	TRAD_INDC ( TITLE '������־'),
	CRS_MGN_INVST_ID ( TITLE '���г�Ͷ���߱�ʶ'),
	PSTN_AMT ( TITLE '�ֲֽ��'),
	PSTN_QTT ( TITLE '�ֲ���'),
	TRAD_DPST ( TITLE '���ױ�֤��')
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
	STAT_DATE ( TITLE 'ͳ������'),
	VART_CNTR ( TITLE 'Ʒ�ֺ�Լ'),
	VART_CDE ( TITLE 'Ʒ�ִ���'),
	VART_CHN_NAME ( TITLE 'Ʒ��������'),
	VART_SCND_CLSF ( TITLE 'Ʒ�ֶ�������'),
	EXCH_NBR ( TITLE '���������'),
	FC_SETL_MEMB_NBR ( TITLE '�ڻ���˾�����Ա��'),
	FUTRS_INVST_SORT ( TITLE '�ڻ�Ͷ�������'),
	CRS_MGN_INVST_SORT ( TITLE '���г�Ͷ�������'),
	TRAD_INDC ( TITLE '������־'),
	KPWH_INDC ( TITLE '��ƽ�ֱ�־'),
	CRS_MGN_INVST_ID ( TITLE '���г�Ͷ���߱�ʶ'),
	TRAD_AMT ( TITLE '�ɽ����'),
	TRAD_QTT ( TITLE '�ɽ���')
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
  STAT_DATE ( TITLE 'ͳ������'),
  BIZ_INDC ( TITLE 'ҵ���־'),
  SEC_CDE ( TITLE '֤ȯ����'),
  SEC_NAME ( TITLE '֤ȯ����'),
  STK_INVST_SORT ( TITLE '��ƱͶ�������'),
  BUY_VOL ( TITLE '��������'),
  SAL_VOL ( TITLE '��������'),
  BUY_AMT_ORIG_CRNC ( TITLE '������_ԭ��'),
  SAL_AMT_ORIG_CRNC ( TITLE '�������_ԭ��'),
  BUY_AMT_RMB ( TITLE '������_�����'),
  SAL_AMT_RMB ( TITLE '�������_�����'),
  BUY_CNT ( TITLE '�������'),
  SAL_CNT ( TITLE '��������'),
  PSTN_VOL ( TITLE '�ֲ�����'),
  PSTN_MKT_VAL_ORIG_CRNC ( TITLE '�ֲ���ֵ_ԭ��'),
  PSTN_MKT_VAL_RMB ( TITLE '�ֲ���ֵ_�����')
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
  --,SUBSTR(stk_invst_sort,1,2)||'0'  AS  stk_invst_sort    --��ƱͶ�������
  ,SUBSTR(stk_invst_sort,1,2)||'00'  AS  stk_invst_sort    --��ƱͶ�������
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
	SEC_ACCT ( TITLE '֤ȯ�˻�'),
	EXCH_CDE ( TITLE '����������'),
	OAP_ACCT ( TITLE 'һ��ͨ�˻�'),
	SEC_CDE ( TITLE '֤ȯ����'),
	BD_CDE ( TITLE '��ǩ����'),
	AFP_MODE ( TITLE '�깺��ʽ'),
	AFP_DATE ( TITLE '�깺����'),
	VLD_AFP_VOL ( TITLE '��Ч�깺����'),
	BD_DATE ( TITLE '��ǩ����'),
	BD_VOL ( TITLE '��ǩ����')
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
	SEC_ACCT ( TITLE '֤ȯ�˻�'),
	EXCH_CDE ( TITLE '����������'),
	OAP_ACCT ( TITLE 'һ��ͨ�˻�'),
	SEC_CDE ( TITLE '֤ȯ����'),
	BD_VOL ( TITLE '��ǩ����'),
	IPO_LIST_DAYS ( TITLE '�¹���������'),
	SAL_DATE ( TITLE '��������'),
	SAL_VOL ( TITLE '��������'),
	SAL_AMT ( TITLE '�������'),
	ACM_SAL_VOL ( TITLE '�ۼ���������'),
	ACM_SAL_AMT ( TITLE '�ۼ��������')
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
	STAT_DATE ( TITLE 'ͳ������'),
	SC_CDE ( TITLE '֤ȯ��˾����'),
	INVST_SORT ( TITLE 'Ͷ�������'),
	BANKRL_SORT ( TITLE '�ʽ����'),
	STC_AMT ( TITLE '��ת֤���'),
	CTS_AMT ( TITLE '֤ת�����'),
	SETL_BANKRL_BAL ( TITLE '�����ʽ����')
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
  STAT_DATE ( TITLE 'ͳ������'),
  SEC_CDE ( TITLE '֤ȯ����'),
  SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
  STK_INVST_SORT ( TITLE '��ƱͶ�������'),
  BNK_ID ( TITLE '���б�ʶ'),
  SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
  CAP_TYPE ( TITLE '�ɱ�����'),
  SEC_CLSF ( TITLE '֤ȯ����'),
  PSTN_VOL ( TITLE '�ֲ�����'),
  PSTN_MKT_VAL_ORIG_CRNC ( TITLE '�ֲ���ֵ_ԭ��')
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
  STAT_M ( TITLE 'ͳ���·�'),
  SEC_CDE ( TITLE '֤ȯ����'),
  SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
  STK_INVST_SORT ( TITLE '��ƱͶ�������'),
  BNK_ID ( TITLE '���б�ʶ'),
  SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
  CAP_TYPE ( TITLE '�ɱ�����'),
  SEC_CLSF ( TITLE '֤ȯ����'),
  INVST_OPN_ACCT_PPDM ( TITLE 'Ͷ���߿���Ͻ��'),
  PSTN_VOL ( TITLE '�ֲ�����'),
  PSTN_MKT_VAL_ORIG_CRNC ( TITLE '�ֲ���ֵ_ԭ��')
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
  STAT_DATE ( TITLE 'ͳ������'),
  SEC_CDE ( TITLE '֤ȯ����'),
  SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
  STK_INVST_SORT ( TITLE '��ƱͶ�������'),
  BNK_ID ( TITLE '���б�ʶ'),
  SEC_CLSF ( TITLE '֤ȯ����'),
  SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
  BUY_VOL ( TITLE '��������'),
  BUY_AMT ( TITLE '������'),
  SAL_VOL ( TITLE '��������'),
  SAL_AMT ( TITLE '�������'),
  BUY_AMT_MKT_PRC ( TITLE '������_�м�'),
  SAL_AMT_MKT_PRC ( TITLE '�������_�м�'),
  BUY_CNT ( TITLE '�������'),
  SAL_CNT ( TITLE '��������')
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
	STAT_DATE ( TITLE 'ͳ������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	SC_CDE ( TITLE '֤ȯ��˾����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	INVST_TYPE ( TITLE 'Ͷ��������'),
	FIN_BAL ( TITLE '�������'),
	SEC_LN_BAL ( TITLE '��ȯ���')
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
  STAT_DATE ( TITLE 'ͳ������'),
  SEC_CDE ( TITLE '֤ȯ����'),
  SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
  STK_INVST_SORT ( TITLE '��ƱͶ�������'),
  SEC_LN_SAL_AMT ( TITLE '��ȯ�������'),
  BUY_STK_AS_VCR_AMT ( TITLE '��ȯ��ȯ���'),
  SEC_LN_LQD_AMT ( TITLE '��ȯƽ�ֽ��'),
  FIN_BUY_AMT ( TITLE '����������'),
  SLCPS_PAYBK_AMT ( TITLE '��ȯ������'),
  FIN_LQD_AMT ( TITLE '����ƽ�ֽ��'),
  GAGE_BUY_AMT ( TITLE '����Ʒ������'),
  GAGE_SAL_AMT ( TITLE '����Ʒ�������'),
  SEC_LN_SAL_VOL ( TITLE '��ȯ��������'),
  BUY_STK_AS_VCR_VOL ( TITLE '��ȯ��ȯ����'),
  SEC_LN_LQD_VOL ( TITLE '��ȯƽ������'),
  FIN_BUY_VOL ( TITLE '������������'),
  SLCPS_PAYBK_VOL ( TITLE '��ȯ��������'),
  FIN_LQD_VOL ( TITLE '����ƽ������'),
  GAGE_BUY_VOL ( TITLE '����Ʒ��������'),
  GAGE_SAL_VOL ( TITLE '����Ʒ��������')
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
	STAT_DATE ( TITLE 'ͳ������'),
	OPT_CNTR_PROD_CDE ( TITLE '��Ȩ��Լ��Ʒ����'),
	INVST_TYPE ( TITLE 'Ͷ��������'),
	SUBSC_BUY_VOL ( TITLE '�Ϲ���������'),
	SUBSC_SAL_VOL ( TITLE '�Ϲ���������'),
	PUT_BUY_VOL ( TITLE '�Ϲ���������'),
	PUT_SAL_VOL ( TITLE '�Ϲ���������'),
	SUBSC_BUY_AMT ( TITLE '�Ϲ�������'),
	SUBSC_SAL_AMT ( TITLE '�Ϲ��������'),
	PUT_BUY_AMT ( TITLE '�Ϲ�������'),
	PUT_SAL_AMT ( TITLE '�Ϲ��������'),
	SUBSC_RIGHT_PSTN_QTT ( TITLE '�Ϲ���Ȩ��������'),
	SUBSC_OBLG_PSTN_QTT ( TITLE '�Ϲ������������'),
	PUT_RIGHT_PSTN_QTT ( TITLE '�Ϲ���Ȩ��������'),
	PUT_OBLG_PSTN_QTT ( TITLE '�Ϲ������������')
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
	STAT_DATE ( TITLE 'ͳ������'),
	OPT_CNTR_PROD_CDE ( TITLE '��Ȩ��Լ��Ʒ����'),
	INVST_TYPE ( TITLE 'Ͷ��������'),
	SUBSC_BUY_VOL ( TITLE '�Ϲ���������'),
	SUBSC_SAL_VOL ( TITLE '�Ϲ���������'),
	PUT_BUY_VOL ( TITLE '�Ϲ���������'),
	PUT_SAL_VOL ( TITLE '�Ϲ���������'),
	SUBSC_BUY_AMT ( TITLE '�Ϲ�������'),
	SUBSC_SAL_AMT ( TITLE '�Ϲ��������'),
	PUT_BUY_AMT ( TITLE '�Ϲ�������'),
	PUT_SAL_AMT ( TITLE '�Ϲ��������'),
	SUBSC_RIGHT_PSTN_QTT ( TITLE '�Ϲ���Ȩ��������'),
	SUBSC_OBLG_PSTN_QTT ( TITLE '�Ϲ������������'),
	PUT_RIGHT_PSTN_QTT ( TITLE '�Ϲ���Ȩ��������'),
	PUT_OBLG_PSTN_QTT ( TITLE '�Ϲ������������')
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
	STAT_DATE ( TITLE 'ͳ������'),
	OPT_CNTR_PROD_CDE ( TITLE '��Ȩ��Լ��Ʒ����'),
	INVST_SORT ( TITLE 'Ͷ�������'),
	BUY_VOL_SUBSC ( TITLE '�Ϲ���������'),
	SAL_VOL_SUBSC ( TITLE '�Ϲ���������'),
	BUY_VOL_PUT ( TITLE '�Ϲ���������'),
	SAL_VOL_PUT ( TITLE '�Ϲ���������'),
	BUY_AMT_SUBSC ( TITLE '�Ϲ�������'),
	SAL_AMT_SUBSC ( TITLE '�Ϲ��������'),
	BUY_AMT_PUT ( TITLE '�Ϲ�������'),
	SAL_AMT_PUT ( TITLE '�Ϲ��������'),
	END_RIGHT_PSTN_QTT_SUBSC ( TITLE '�Ϲ���Ȩ��������'),
	END_OBLG_PSTN_QTT_SUBSC ( TITLE '�Ϲ������������'),
	END_RIGHT_PSTN_QTT_PUT ( TITLE '�Ϲ���Ȩ��������'),
	END_OBLG_PSTN_QTT_PUT ( TITLE '�Ϲ������������')
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
	SEC_ACCT ( TITLE '֤ȯ�˻�'),
	TRAD_DATE ( TITLE '��������'),
	EXCH_CDE ( TITLE '����������'),
	OAP_ACCT ( TITLE 'һ��ͨ�˻�'),
	SEC_CDE ( TITLE '֤ȯ����'),
	LIST_DAYS ( TITLE '��������'),
	BUY_VOL ( TITLE '��������'),
	BUY_AMT ( TITLE '������'),
	BUY_CNT ( TITLE '�������'),
	SAL_VOL ( TITLE '��������'),
	SAL_AMT ( TITLE '�������'),
	SAL_CNT ( TITLE '��������')
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
	STK_CDE ( TITLE '��Ʊ����'),
	ISS_DATE ( TITLE '��������'),
	LIST_DATE ( TITLE '��������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	LSTN_BORD ( TITLE '���а��'),
	SEC_CTG ( TITLE '֤ȯ���'),
	CAP ( TITLE '�ɱ�'),
	ISS_PRC ( TITLE '���м۸�'),
	FD_OPN_PRC ( TITLE '���տ��̼�'),
	FD_CLS_PRC ( TITLE '�������̼�'),
	OLN_ISS_LTRT ( TITLE '���Ϸ�����ǩ��'),
	ISS_PE ( TITLE '������ӯ��'),
	IPO_VOL ( TITLE '�׷�����'),
	IPO_FUND_RSN_AMT ( TITLE '�׷����ʽ��'),
	FD_OPN_CHG_RATE ( TITLE '���տ����ǵ���'),
	FD_CLS_CHG_RATE ( TITLE '���������ǵ���'),
	FD_CHG_RATE ( TITLE '�����ǵ���'),
	FD_TNOV_RATE ( TITLE '���ջ�����'),
	IF_BREK ( TITLE '�Ƿ��Ʒ�'),
	CLCT_BANKRL_TOT ( TITLE 'ļ���ʽ�ϼ�'),
	EST_CLCT_BANKRL ( TITLE 'Ԥ��ļ���ʽ�'),
	OSUB_RATE ( TITLE '��ļ����')
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
	RPT_PRD ( TITLE '������'),
	COMP_ID ( TITLE '��˾ID'),
	STK_CDE ( TITLE '��Ʊ����'),
	STK_ABBR ( TITLE '��Ʊ���'),
	IDSTR_CTGR_CDE ( TITLE '��ҵ�������'),
	IDSTR_CTGR_NAME ( TITLE '��ҵ��������'),
	IDSTR_CLASS_CDE ( TITLE '��ҵ�������'),
	IDSTR_CLASS_NAME ( TITLE '��ҵ��������'),
	PPDM_CDE ( TITLE 'Ͻ������'),
	PPDM_NAME ( TITLE 'Ͻ������'),
	TRDT ( TITLE '��ͳ����ҵ'),
	HIGH_ENERGY ( TITLE '�ߺ��ܲ�ҵ'),
	MODERN_SRVC ( TITLE '�ִ�����ҵ'),
	LIGHT_ASET ( TITLE '���ʲ���ҵ'),
	STRTG_EMERG ( TITLE 'ս��������ҵ'),
	OVER_CAPACITY ( TITLE '��������ҵ'),
	HDGS_CLSF_CDE ( TITLE '�عɷ������'),
	HDGS_CLSF_NAME ( TITLE '�عɷ�������'),
	INVNT ( TITLE '���'),
	ASET_TOT_AMT ( TITLE '�ʲ��ܶ�'),
	LBLT_TOT ( TITLE '��ծ�ϼ�'),
	NAST ( TITLE '���ʲ�'),
	CAP ( TITLE '�ɱ�'),
	BIZ_ENING ( TITLE 'Ӫҵ����'),
	SELL_CHRG ( TITLE '���۷���'),
	MNGMT_CHRG ( TITLE '�������'),
	FINA_CHRG ( TITLE '�������'),
	BIZ_PRFT ( TITLE 'Ӫҵ����'),
	PRFT_TOT_AMT ( TITLE '�����ܶ�'),
	INCM_TAX ( TITLE '����˰'),
	BIZ_TOT_ENING ( TITLE 'Ӫҵ������'),
	NET_PRFT ( TITLE '������'),
	NET_PRFT_TOT_AMT ( TITLE '�������ܶ�'),
	N_ALLOT_PRFT ( TITLE 'δ��������'),
	OA_CASH_FLOW_NET_AMT ( TITLE '��Ӫ������ֽ���������'),
	IA_CASH_FLOW_NET_AMT ( TITLE 'Ͷ�ʻ�������ֽ���������'),
	FA_CASH_FLOW_NET_AMT ( TITLE '���ʻ�������ֽ���������'),
	LIST_INDC ( TITLE '���б�־'),
	ASET_LBLT_RATE ( TITLE '�ʲ���ծ��'),
	TOT_ASET_YLD ( TITLE '���ʲ�������'),
	NAST_YLD ( TITLE '���ʲ�������'),
	BIZ_ENING_PRFT_RATE ( TITLE 'Ӫҵ����������'),
	INVNT_TNOV_RATE ( TITLE '�����ת�ʣ���λ���Σ�'),
	ASET_TOT_AMT_EOLY ( TITLE '�ʲ��ܶ�_����ĩ'),
	NAST_EOLY ( TITLE '���ʲ�_����ĩ'),
	INVNT_EOLY ( TITLE '���_����ĩ')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	FREQ ( TITLE 'Ƶ��'),
	STAT_ANGLE_CDE ( TITLE 'ͳ�ƽǶȱ���'),
	STAT_ANGLE_NAME ( TITLE 'ͳ�ƽǶ�����'),
	STC_PE ( TITLE '��̬��ӯ��'),
	ROLN_PE ( TITLE '������ӯ��'),
	FORC_PE ( TITLE 'Ԥ����ӯ��'),
	PB ( TITLE '�о���'),
	DIVD_RATE ( TITLE '��Ϣ��')
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
 STAT_DATE ( TITLE 'ͳ������'),
 SEC_CDE ( TITLE '֤ȯ����'),
 EXCH_CDE ( TITLE '����������'),
 LMT_COMP_TYPE ( TITLE '���۹�˾����'),
 LMT_INVST_TYPE ( TITLE '����Ͷ��������'),
 LAB_VOL ( TITLE '�������'),
 LAB_MKT_VAL ( TITLE '�����ֵ'),
 INCR_HDG_VOL ( TITLE '��������'),
 INCR_HDG_AMT ( TITLE '���ֽ��'),
 RH_VOL ( TITLE '��������'),
 RH_AMT ( TITLE '���ֽ��')
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
	STAT_DATE ( TITLE 'ͳ������'),
	SC_CDE ( TITLE '֤ȯ��˾����'),
	SC_NAME ( TITLE '֤ȯ��˾����'),
	SC_PPDM_CDE ( TITLE '֤ȯ��˾Ͻ������'),
	SC_PPDM_NAME ( TITLE '֤ȯ��˾Ͻ������'),
	BRCH_VOL ( TITLE 'Ӫҵ������'),
	SUB_COMP_CNT ( TITLE '�ֹ�˾����'),
	REG_CAP ( TITLE 'ע���ʱ�'),
	IF_JV ( TITLE '�Ƿ����'),
	IF_HAVE_SMT_QLF ( TITLE '�Ƿ���������ȯ�ʸ�'),
	IF_HAVE_CUST_AM_QLF ( TITLE '�Ƿ��пͻ��ʲ������ʸ�'),
	REG_DATE ( TITLE 'ע������'),
	RISK_CAP_PREP_TOT_AMT ( TITLE '�����ʱ�׼���ܶ�'),
	ASET_TOT_AMT ( TITLE '�ʲ��ܶ�'),
	LBLT_TOT ( TITLE '��ծ�ϼ�'),
	OWNER_EQUT_TOT ( TITLE '������Ȩ��ϼ�'),
	NAST ( TITLE '���ʲ�'),
	NET_CAP ( TITLE '���ʱ�'),
	PRFT_TOT_AMT ( TITLE '�����ܶ�_�����ۼ�'),
	NET_PRFT ( TITLE '������_�����ۼ�'),
	BIZ_ENING ( TITLE 'Ӫҵ����_�����ۼ�'),
	BIZ_PRFT ( TITLE 'Ӫҵ����_�����ۼ�'),
	BIZ_EXPDT ( TITLE 'Ӫҵ֧��_�����ۼ�'),
	INTR_NET_ENING ( TITLE '��Ϣ������_�����ۼ�'),
	INVSMT_INCM ( TITLE 'Ͷ������_�����ۼ�'),
	SEC_BRK_BIZ_NET_ENING ( TITLE '֤ȯ����ҵ������_�����ۼ�'),
	INVSMT_BNK_BIZ_NET_ENING ( TITLE 'Ͷ������ҵ������_�����ۼ�'),
	IC_BIZ_NET_ENING ( TITLE 'Ͷ����ѯҵ������_�����ۼ�'),
	AM_BIZ_NET_ENING ( TITLE '�ʲ�����ҵ������_�����ۼ�'),
	PRFT_TOT_AMT_TSM ( TITLE '�����ܶ�_����'),
	NET_PRFT_TSM ( TITLE '������_����'),
	BIZ_ENING_TSM ( TITLE 'Ӫҵ����_����'),
	BIZ_PRFT_TSM ( TITLE 'Ӫҵ����_����'),
	BIZ_EXPDT_TSM ( TITLE 'Ӫҵ֧��_����'),
	INTR_NET_ENING_TSM ( TITLE '��Ϣ������_����'),
	INVSMT_INCM_TSM ( TITLE 'Ͷ������_����'),
	SEC_BRK_BIZ_NET_ENING_TSM ( TITLE '֤ȯ����ҵ������_����'),
	INVSMT_BNK_BIZ_NET_ENING_TSM ( TITLE 'Ͷ������ҵ������_����'),
	IC_BIZ_NET_ENING_TSM ( TITLE 'Ͷ����ѯҵ������_����'),
	AM_BIZ_NET_ENING_TSM ( TITLE '�ʲ�����ҵ������_����'),
	END_VAL_NET_CAP_NAST ( TITLE '��ĩֵ_���ʱ�/���ʲ�'),
	ALT_STD_NET_CAP_NAST ( TITLE 'Ԥ����׼_���ʱ�/���ʲ�'),
	SPVS_STD_NET_CAP_NAST ( TITLE '��ܱ�׼_���ʱ�/���ʲ�'),
	END_VAL_NET_CAP_LBLT ( TITLE '��ĩֵ_���ʱ�/��ծ'),
	ALT_STD_NAST_LBLT ( TITLE 'Ԥ����׼_���ʲ�/��ծ'),
	SPVS_STD_NAST_LBLT ( TITLE '��ܱ�׼_���ʲ�/��ծ'),
	END_VAL_RISK_COVER_RATE ( TITLE '��ĩֵ_���ո�����'),
	ALT_STD_RISK_COVER_RATE ( TITLE 'Ԥ����׼_���ո�����'),
	SPVS_STD_RISK_COVER_RATE ( TITLE '��ܱ�׼_���ո�����'),
	FLUD_COVER_RATE ( TITLE '�����Ը�����(%)'),
	NET_STAB_BANKRL_RATE ( TITLE '���ȶ��ʽ���(%)'),
	AVG_FINA_LVRG ( TITLE 'ƽ������ܸ�')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	FIN_BAL ( TITLE '�������'),
	SEC_LN_BAL ( TITLE '��ȯ���'),
	SEC_LN_VOL ( TITLE '��ȯ����'),
	SEC_LN_MKT_VAL ( TITLE '��ȯ��ֵ')
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
	STAT_DATE ( TITLE 'ͳ������'),
	RNKG_TYPE ( TITLE '��������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	RNKG ( TITLE '����'),
	OAP_ACCT ( TITLE 'һ��ͨ�˻�'),
	HOLD_RATE ( TITLE '���б���'),
	HOLD_CAP_VOL ( TITLE '���йɱ�����')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	GUART_VOL ( TITLE '��������'),
	GUART_MKT_VAL ( TITLE '������ֵ')
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
  STAT_DATE ( TITLE 'ͳ������'),
  SEC_CDE ( TITLE '֤ȯ����'),
  SEC_NAME ( TITLE '֤ȯ����'),
  SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
  CLSF_ANGLE ( TITLE '����Ƕ�'),
  INVST_TYPE ( TITLE 'Ͷ��������'),
  BUY_VOL ( TITLE '��������'),
  SAL_VOL ( TITLE '��������'),
  BUY_AMT ( TITLE '������'),
  SAL_AMT ( TITLE '�������'),
  BUY_CNT ( TITLE '�������'),
  SAL_CNT ( TITLE '��������'),
  PSTN_VOL ( TITLE '�ֲ�����'),
  PSTN_NEGT_VOL ( TITLE '�ֲ���ͨ����'),
  PSTN_TOT_MKT_VAL ( TITLE '�ֲ�����ֵ'),
  PSTN_NEGT_MKT_VAL ( TITLE '�ֲ���ͨ��ֵ')
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
  --,SUBSTR(invst_type,1,2)||'0' AS invst_type  --Ͷ��������_����
  ,SUBSTR(invst_type,1,2)||'00' AS invst_type  --Ͷ��������_����
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
	BIZ_DATE ( TITLE 'ҵ������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	TCAP ( TITLE '�ܹɱ�'),
	NEGT_CAP ( TITLE '��ͨ�ɱ�'),
	ADV_NTC_MKT_VAL ( TITLE 'Ԥ����ֵ'),
	ADV_NTC_NEGT_MKT_VAL ( TITLE 'Ԥ����ͨ��ֵ'),
	TRAD_QTT ( TITLE '�ɽ���'),
	TRAD_AMT ( TITLE '�ɽ����')
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
	EXR_EXD_D ( TITLE '��Ȩ��Ϣ��'),
	EQUITY_REG_D ( TITLE '��Ȩ�Ǽ���'),
	STK_CDE ( TITLE '��Ʊ����'),
	STK_NAME ( TITLE '��Ʊ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	DIVD_ABBR ( TITLE '�������'),
	DVD_YEARLY ( TITLE '�ֺ����'),
	CASH_DVD_AMT_BEF_TAX ( TITLE '�ֽ�ֺ��˰ǰ��'),
	CASH_DVD_AMT_AFT_TAX ( TITLE '�ֽ�ֺ���(˰��)'),
	DP_RATE_DENOM ( TITLE '��Ϣ������ĸ'),
	DP_RATE_NUMRT_BEF_TAX ( TITLE '��Ϣ��������(˰ǰ)'),
	DP_RATE_NUMRT_AFT_TAX ( TITLE '��Ϣ�������ӣ�˰��'),
	PTC_DVD_TCAP ( TITLE '����ֺ��ܹɱ�'),
	CRNC_CDE ( TITLE '���Ҵ���'),
	MDL_PRC ( TITLE '�м��')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	SEC_NAME ( TITLE '֤ȯ����'),
	CLS_PRC ( TITLE '���̼�'),
	PRE_CLS_PRC ( TITLE 'ǰ���̼�'),
	RETN ( TITLE '����������'),
	TCAP_EXCH ( TITLE '�ܹɱ�_������'),
	LSTN_NEGT_CAP_EXCH ( TITLE '��������ͨ�ɱ�_������'),
	TOT_MKT_VAL_EXCH ( TITLE '����ֵ_������'),
	LSTN_NEGT_MKT_VAL_EXCH ( TITLE '��������ͨ��ֵ_������'),
	TCAP_CSDC ( TITLE '�ܹɱ�_�е�'),
	LSTN_NEGT_CAP_CSDC ( TITLE '��������ͨ�ɱ�_�е�'),
	TOT_MKT_VAL_CSDC ( TITLE '����ֵ_�е�'),
	LSTN_NEGT_MKT_VAL_CSDC ( TITLE '��������ͨ��ֵ_�е�'),
	TRAD_QTT ( TITLE '�ɽ���'),
	TRAD_AMT ( TITLE '�ɽ����'),
	STK_STS ( TITLE '��Ʊ״̬')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	ADD_PLG_CNT ( TITLE '������Ѻ����'),
	RLS_PLG_CNT ( TITLE '�����Ѻ����'),
	INIT_TRAD_AMT ( TITLE '��ʼ���׽��'),
	INIT_TRAD_CNT ( TITLE '��ʼ���ױ���'),
	RPCHS_TRAD_AMT ( TITLE '���ؽ��׽��'),
	RPCHS_TRAD_CNT ( TITLE '���ؽ��ױ���'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '�����س�ʼ���׽��'),
	ST_RPCHS_SEC_VOL ( TITLE '������֤ȯ����'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '������֤ȯ��ֵ'),
	INIT_PLG_SEC_VOL ( TITLE '��ʼ��Ѻ֤ȯ����'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	STK_INVST_SORT ( TITLE '��ƱͶ�������'),
	STK_INVST_NAME ( TITLE '��ƱͶ��������'),
	ADD_PLG_CNT ( TITLE '������Ѻ����'),
	RLS_PLG_CNT ( TITLE '�����Ѻ����'),
	INIT_TRAD_AMT ( TITLE '��ʼ���׽��'),
	INIT_TRAD_CNT ( TITLE '��ʼ���ױ���'),
	RPCHS_TRAD_AMT ( TITLE '���ؽ��׽��'),
	RPCHS_TRAD_CNT ( TITLE '���ؽ��ױ���'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '�����س�ʼ���׽��'),
	ST_RPCHS_SEC_VOL ( TITLE '������֤ȯ����'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '������֤ȯ��ֵ'),
	INIT_PLG_SEC_VOL ( TITLE '��ʼ��Ѻ֤ȯ����'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	SC_CDE ( TITLE '֤ȯ��˾����'),
	SC_NAME ( TITLE '֤ȯ��˾����'),
	MANG_CLSF ( TITLE '��Ӫ����'),
	CAP_TYPE ( TITLE '�ɱ�����'),
	ADD_PLG_CNT ( TITLE '������Ѻ����'),
	RLS_PLG_CNT ( TITLE '�����Ѻ����'),
	INIT_TRAD_AMT ( TITLE '��ʼ���׽��'),
	INIT_TRAD_CNT ( TITLE '��ʼ���ױ���'),
	RPCHS_TRAD_AMT ( TITLE '���ؽ��׽��'),
	RPCHS_TRAD_CNT ( TITLE '���ؽ��ױ���'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '�����س�ʼ���׽��'),
	ST_RPCHS_SEC_VOL ( TITLE '������֤ȯ����'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '������֤ȯ��ֵ'),
	INIT_PLG_SEC_VOL ( TITLE '��ʼ��Ѻ֤ȯ����'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
	EXR_EXD_D                      ( TITLE '��Ȩ��Ϣ��'),
	EQUITY_REG_D                   ( TITLE '��Ȩ�Ǽ���'),
	STK_CDE                        ( TITLE '��Ʊ����'),
	STK_NAME ( TITLE '��Ʊ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	PPDM_CDE ( TITLE 'Ͻ������'),
	PPDM_NAME ( TITLE 'Ͻ������'),
	RIGHT_LIST_D ( TITLE '���������'),
	EQUITY_REG_D_CLS_PRC ( TITLE '��Ȩ�Ǽ������̼�'),
	RIGHT_PRC ( TITLE '��ɼ�'),
	EXR_PRC ( TITLE '��Ȩ��'),
	RIGHT_RATE ( TITLE '��ɱ���')
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
	DATA_ORG_CDE ( TITLE '���ݻ�������'),
	TRAD_SITE_CDE ( TITLE '���׵ص����'),
	BOND_CDE ( TITLE 'ծȯ����'),
	BIZ_DATE ( TITLE '����'),
	END_PAR_RATE ( TITLE '��ĩƱ������'),
	EXCH_BAL ( TITLE '���������'),
	EXCH_BAL_CNVT_RMB ( TITLE '����������������'),
	FINL_RE_IMBRS_DATE ( TITLE '���նҸ�����'),
	RE_IMBRS_CPS_AMT ( TITLE '�Ҹ������'),
	RE_IMBRS_CPS_AMT_CNVT_RMB ( TITLE '�Ҹ�������������'),
	PAY_INTR_AMT ( TITLE '֧����Ϣ��'),
	PAY_INTR_AMT_CNVT_RMB ( TITLE '֧����Ϣ���������'),
	IF_DEFER ( TITLE '�Ƿ�����'),
	DEFER_TLMT ( TITLE '��������'),
	IF_OVRDU ( TITLE '�Ƿ�����'),
	OVRDU_TLMT ( TITLE '��������')
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
	DATA_ORG_CDE ( TITLE '���ݻ�������'),
	BOND_CDE ( TITLE 'ծȯ����'),
	TRAD_SITE_CDE ( TITLE '���׵ص����'),
	BIZ_DATE ( TITLE '����'),
	CSTD_ORG_TYPE ( TITLE '�йܻ�������'),
	HOLD_PSN_REG_AREA ( TITLE '������ע�����'),
	HOLD_PSN_BLNGS_NE_DEPT ( TITLE '�������������񾭼ò���'),
	BOND_HOLD_BAL ( TITLE 'ծȯ�������'),
	BOND_HOLD_BAL_CNVT_RMB ( TITLE 'ծȯ��������������')
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
	DATA_ORG_CDE ( TITLE '���ݻ�������'),
	TRAD_SITE_CDE ( TITLE '���׵ص����'),
	BOND_CDE ( TITLE 'ծȯ����'),
	SUB_DEBT_CDE ( TITLE '��ծ����'),
	BOND_ABBR ( TITLE 'ծȯ���'),
	DEBT_REG_D ( TITLE 'ծȨծ��Ǽ���'),
	DATA_DATE (TITLE '��������')
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
 	ACCT_TYPE ( TITLE '�˻����'),
    TYPE_CODE ( TITLE '������'),
    TYPE_NAME ( TITLE '�������'),
    DEPT_CODE ( TITLE '���񾭼ò��ű���'),
    DEPT_NAME ( TITLE '���񾭼ò�������')
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
	DATA_ORG_CDE ( TITLE '���ݻ�������'),
	TRAD_SITE_CDE ( TITLE '���׵ص����'),
	BOND_CDE ( TITLE 'ծȯ����'),
	BIZ_DATE ( TITLE '����'),
	CSTD_ORG_TYPE ( TITLE '�йܻ�������'),
	SUB_CSTD_ORG_CDE ( TITLE '���йܻ�������'),
	SUB_CSTD_BAL ( TITLE '���й����'),
	SUB_CSTD_BAL_CNVT_RMB ( TITLE '���й�����������'),
	END_SETL_PRC ( TITLE '��ĩ����۸�'),
	END_SETL_PRC_CNVT_RMB ( TITLE '��ĩ����۸��������'),
	END_MAT_Y_YLD ( TITLE '��ĩ������������'),
	CUR_PRD_AVG_PRC ( TITLE '����ƽ���۸�'),
	CUR_PRD_AVG_PRC_CNVT_RMB ( TITLE '����ƽ���۸��������'),
	AVG_MAT_Y_YLD ( TITLE 'ƽ��������������'),
	NPRC_AVG_PRC ( TITLE '����ƽ���۸�'),
	NPRC_AVG_PRC_CNVT_RMB ( TITLE '����ƽ���۸��������'),
	END_ACRU_INTR ( TITLE '��ĩӦ����Ϣ'),
	END_ACRU_INTR_CNVT_RMB ( TITLE '��ĩӦ����Ϣ�������'),
	TRAD_AMT ( TITLE '�ɽ����'),
	TRAD_AMT_CNVT_RMB ( TITLE '�ɽ�����������')
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
 	S_DATE ( TITLE '��ʼ����'),
	E_DATE ( TITLE '��������'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	MKT_SORT ( TITLE '�г����'),
	CLSF_3_MKT_VAL ( TITLE '�������ࣨ�ֹ���ֵ��')
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
	STAT_DATE ( TITLE 'ͳ������'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	SEC_ACCT_NAME ( TITLE '֤ȯ�˻�����'),
	MKT_SORT ( TITLE '�г����'),
	CLSF_1 ( TITLE 'һ������'),
	CLSF_2_MKT_VAL ( TITLE '�������ࣨ�ֹ���ֵ��'),
	CLSF_3_MKT_VAL ( TITLE '�������ࣨ�ֹ���ֵ��'),
	Cmsmc_CLSF_MKT_VAL ( TITLE '��֤�����ࣨ�ֹ���ֵ��'),
	END_HOLD_MKT_VAL_MAX ( TITLE '��ĩ�ֹ���ֵ���ֵ'),
	END_HOLD_MKT_VAL_MAX_DATE ( TITLE '��ĩ�ֹ���ֵ���ֵ����')
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
    S_DATE ( TITLE '��ʼ����'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ��ʶ'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	SEC_ACCT_NAME ( TITLE '֤ȯ�˻�����'),
	MKT_SORT ( TITLE '�г����'),
	SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
	CLSF_1 ( TITLE '����׼��һ������'),
	CLSF_2 ( TITLE '����׼����������'),
	CLSF_3 ( TITLE '����׼����������'),
	Cmsmc_CLSF ( TITLE '��֤������'),
	BNK_ID ( TITLE '���б�ʶ'),
	E_DATE ( TITLE '��������')
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
	STAT_DATE ( TITLE 'ͳ������'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	SEC_ACCT_NAME ( TITLE '֤ȯ�˻�����'),
	MKT_SORT ( TITLE '�г����'),
	CLSF_1 ( TITLE 'һ������'),
	CLSF_2_MKT_VAL ( TITLE '�������ࣨ�ֹ���ֵ��'),
	CLSF_3_MKT_VAL ( TITLE '�������ࣨ�ֹ���ֵ��'),
	Cmsmc_CLSF_MKT_VAL ( TITLE '��֤�����ࣨ�ֹ���ֵ��'),
	CLSF_2_AGE ( TITLE '�������ࣨ���䣩'),
	CLSF_3_AGE ( TITLE '�������ࣨ���䣩'),
	END_HOLD_MKT_VAL_MAX ( TITLE '��ĩ�ֹ���ֵ���ֵ'),
	END_HOLD_MKT_VAL_MAX_DATE ( TITLE '��ĩ�ֹ���ֵ���ֵ����'),
	SEC_ACCT_SORT ( TITLE '֤ȯ�˻����')
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
	STAT_DATE ( TITLE 'ͳ������'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	SEC_ACCT_NAME ( TITLE '֤ȯ�˻�����'),
	MKT_SORT ( TITLE '�г����'),
	CLSF_1 ( TITLE 'һ������'),
	CLSF_2_MKT_VAL ( TITLE '�������ࣨ�ֹ���ֵ��'),
	CLSF_3_MKT_VAL ( TITLE '�������ࣨ�ֹ���ֵ��'),
	Cmsmc_CLSF_MKT_VAL ( TITLE '��֤�����ࣨ�ֹ���ֵ��'),		
	CLSF_2_AGE ( TITLE '�������ࣨ���䣩'),
	CLSF_3_AGE ( TITLE '�������ࣨ���䣩'),
	END_HOLD_MKT_VAL_MAX ( TITLE '��ĩ�ֹ���ֵ���ֵ'),
	END_HOLD_MKT_VAL_MAX_DATE ( TITLE '��ĩ�ֹ���ֵ���ֵ����'),
	SEC_ACCT_SORT ( TITLE '֤ȯ�˻����')
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
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	INVST_NAME ( TITLE 'Ͷ��������'),
	CLSF_3_NEW ( TITLE '�������ࣨ�£�'),
	S_DATE ( TITLE '��ʼ����'),
	E_DATE ( TITLE '��������')
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
	STAT_DATE ( TITLE 'ͳ������'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	END_HOLD_MKT_VAL_MAX ( TITLE '��ĩ�ֹ���ֵ���ֵ'),
	END_HOLD_MKT_VAL_MAX_DATE ( TITLE '��ĩ�ֹ���ֵ���ֵ����')
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
	STAT_DATE ( TITLE 'ͳ������'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	MKT_SORT ( TITLE '�г����'),
	SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
	NEGT_TYPE ( TITLE '��ͨ����'),
	END_HOLD_STK_MKT_VAL ( TITLE 'ͳ�����ڵ���ĩ���й�Ʊ��ֵ'),
	CRNC ( TITLE '����'),
	EXCH_RT ( TITLE '����')
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
 	S_DATE ( TITLE '��ʼ����'),
	E_DATE ( TITLE '��������'),
	OAP_ACCT_NBR ( TITLE 'һ��ͨ�˻�����'),
	SEC_ACCT_NBR ( TITLE '֤ȯ�˻���'),
	MKT_SORT ( TITLE '�г����'),
	SEC_ACCT_SORT ( TITLE '֤ȯ�˻����'),
	SEC_ACCT_STS ( TITLE '֤ȯ�˻�״̬'),
	SEC_ACCT_NAME ( TITLE '֤ȯ�˻�����'),
	BORN_DATE ( TITLE '��������')
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
	Stat_Date (TITLE ' ͳ������'),
        Rate_CLSF (TITLE ' ��������'),
        Rate_LLMT (TITLE ' ��������'),
        Rate_ULMT (TITLE ' ��������'),
        CNTR_CNT (TITLE ' ��Լ����'),
        ACCT_VOL (TITLE ' �˻���'),
        ST_RPCHS_AMT (TITLE ' �����ؽ��') 
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
	BIZ_DATE ( TITLE 'ҵ������'),
	IDX_CDE ( TITLE 'ָ������'),
	IDX_NAME ( TITLE 'ָ������'),
	OPN_POINT ( TITLE '���̵���'),
	PRE_CLS_POINT ( TITLE 'ǰ���̵���'),
	CLS_POINT ( TITLE '���̵���'),
	MAX_POINT ( TITLE '��ߵ���'),
	MIN_POINT ( TITLE '��͵���'),
	D_CHG_RATE ( TITLE '���ǵ���'),
	Y_CHG_RATE ( TITLE '���ǵ���'),
	RETN ( TITLE '����������'),
	TRAD_AMT ( TITLE '�ɽ����'),
	TRAD_QTT ( TITLE '�ɽ���'),
	TCAP ( TITLE '�ܹɱ�'),
	NEGT_CAP ( TITLE '��ͨ�ɱ�'),
	TOT_MKT_VAL ( TITLE '����ֵ'),
	NEGT_MKT_VAL ( TITLE '��ͨ��ֵ'),
	MKT_VAL_TNOV_RATE ( TITLE '��ֵ������'),
	TRAD_QTT_TNOV_RATE ( TITLE '�ɽ���������'),
	AVG_STK_PRC ( TITLE 'ƽ���ɼ�'),
	DATA_SRC_TYPE ( TITLE '����Դ����')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	IDX_CDE ( TITLE 'ָ�����'),
	IDX_NAME ( TITLE 'ָ������'),
	TYP ( TITLE '����'),
	IDX_VAL ( TITLE 'ָ��ֵ')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	FIN_BAL ( TITLE '�������'),
	SEC_LN_BAL ( TITLE '��ȯ���'),
	SEC_LN_VOL ( TITLE '��ȯ����'),
	SEC_LN_MKT_VAL ( TITLE '��ȯ��ֵ')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	GUART_VOL ( TITLE '��������'),
	GUART_MKT_VAL ( TITLE '������ֵ')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	SEC_CDE ( TITLE '֤ȯ����'),
	SEC_EXCH_CDE ( TITLE '֤ȯ����������'),
	ADD_PLG_CNT ( TITLE '������Ѻ����'),
	RLS_PLG_CNT ( TITLE '�����Ѻ����'),
	INIT_TRAD_AMT ( TITLE '��ʼ���׽��'),
	INIT_TRAD_CNT ( TITLE '��ʼ���ױ���'),
	RPCHS_TRAD_AMT ( TITLE '���ؽ��׽��'),
	RPCHS_TRAD_CNT ( TITLE '���ؽ��ױ���'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '�����س�ʼ���׽��'),
	ST_RPCHS_SEC_VOL ( TITLE '������֤ȯ����'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '������֤ȯ��ֵ'),
	INIT_PLG_SEC_VOL ( TITLE '��ʼ��Ѻ֤ȯ����'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	STK_INVST_SORT ( TITLE '��ƱͶ�������'),
	STK_INVST_NAME ( TITLE '��ƱͶ��������'),
	ADD_PLG_CNT ( TITLE '������Ѻ����'),
	RLS_PLG_CNT ( TITLE '�����Ѻ����'),
	INIT_TRAD_AMT ( TITLE '��ʼ���׽��'),
	INIT_TRAD_CNT ( TITLE '��ʼ���ױ���'),
	RPCHS_TRAD_AMT ( TITLE '���ؽ��׽��'),
	RPCHS_TRAD_CNT ( TITLE '���ؽ��ױ���'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '�����س�ʼ���׽��'),
	ST_RPCHS_SEC_VOL ( TITLE '������֤ȯ����'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '������֤ȯ��ֵ'),
	INIT_PLG_SEC_VOL ( TITLE '��ʼ��Ѻ֤ȯ����'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '��ʼ��Ѻ֤ȯ��ֵ')
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
	BIZ_DATE ( TITLE 'ҵ������'),
	SC_CDE ( TITLE '֤ȯ��˾����'),
	SC_NAME ( TITLE '֤ȯ��˾����'),
	MANG_CLSF ( TITLE '��Ӫ����'),
	CAP_TYPE ( TITLE '�ɱ�����'),
	ADD_PLG_CNT ( TITLE '������Ѻ����'),
	RLS_PLG_CNT ( TITLE '�����Ѻ����'),
	INIT_TRAD_AMT ( TITLE '��ʼ���׽��'),
	INIT_TRAD_CNT ( TITLE '��ʼ���ױ���'),
	RPCHS_TRAD_AMT ( TITLE '���ؽ��׽��'),
	RPCHS_TRAD_CNT ( TITLE '���ؽ��ױ���'),
	ST_RPCHS_INIT_TRAD_AMT ( TITLE '�����س�ʼ���׽��'),
	ST_RPCHS_SEC_VOL ( TITLE '������֤ȯ����'),
	ST_RPCHS_SEC_MKT_VAL ( TITLE '������֤ȯ��ֵ'),
	INIT_PLG_SEC_VOL ( TITLE '��ʼ��Ѻ֤ȯ����'),
	INIT_PLG_SEC_MKT_VAL ( TITLE '��ʼ��Ѻ֤ȯ��ֵ')
 FROM  nsPUBMart.TMID_STK_PLG_REPO_TRAD_SC  ;


+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-


.quit
 *** You are now logged off from the DBC.
 *** Exiting BTEQ...
 *** RC (return code) = 0 
