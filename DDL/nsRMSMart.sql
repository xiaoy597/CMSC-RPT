BTEQ 15.00.00.00 Wed Jan 17 11:57:50 2018 PID: 28840
 
+---------+---------+---------+---------+---------+---------+---------+----
.set width 384
+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
.logon 10.97.10.200/xiaoy,

 *** Logon successfully completed.
 *** Teradata Database Release is 15.00.06.01                   
 *** Teradata Database Version is 15.00.06.01                     
 *** Transaction Semantics are BTET.
 *** Session Character Set Name is 'ASCII'.
 
 *** Total elapsed time was 1 second.
 
+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-


select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_RMS_IDX_INFO_20160826' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 IDX_Name                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 ENTR_INDC                      ¼���־                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          4 IDX_TB_Name                    ָ�����                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_VIEW                       ָ����ͼ��                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_S_CRIPT                    ָ��ű���                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 FREQ                           Ƶ��                           CV                    50                  ?                       ? X(50)                                                                                                                            ?
          8 RMAK                           ��ע                           CV                    50                  ?                       ? X(50)                                                                                                                            ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_MACRO_SOK_IDX1' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 IDX_CDE                        ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       ?                              CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 IDX_HRRC                       ?                              CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 IDX_VAL                        ?                              D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          6 CALC_DATE                      ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          7 DATA_WHOL_ID                   ?                              CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_UND_SEC_RISK_ANAL' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 UND_SEC_CDE                    ���֤ȯ����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 UND_SEC_Name                   ���֤ȯ����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 WAV_Rate                       ������                         D                      8                 10                       7 ----.9999999                                                                                                                     ?
          5 PE                             ��ӯ��                         D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 STK_PRC_CHG_RATE               �ɼ��ǵ���                     D                      8                 10                       7 ----.9999999                                                                                                                     ?
          7 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 FIN_BAL_ICRS                   �����������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          9 FIN_BUY_OCUP_TRAD_AMT_RATE     ���������ռ�ɽ���֮��         D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TCFG_RMS_IDX_INFO' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 IDX_Name                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 ENTR_INDC                      ¼���־                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          4 IDX_TB_Name                    ָ�����                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_VIEW                       ָ����ͼ��                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_S_CRIPT                    ָ��ű���                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 FREQ                           Ƶ��                           CV                    50                  ?                       ? X(50)                                                                                                                            ?
          8 RMAK                           ��ע                           CV                    50                  ?                       ? X(50)                                                                                                                            ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TFCT_SCEDF' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 EDF                            EDF                            D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'ISD_PRFT_SPVS_RPT' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         ֤ȯ��˾����                   CV                     8                  ?                       ? X(8)                                                                                                                             ?
          2 RPT_DATE                       ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_NBR                        ָ�����                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 IDX_NAME                       ָ������                       CV                    60                  ?                       ? X(60)                                                                                                                            ?
          5 LINE_NUM                       �д�                           D                      2                  3                       0 ---9.                                                                                                                            ?
          6 CUR_PRD_AMT                    ���ڽ��                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          7 CUR_Y_ACM_AMT                  �����ۼƽ��                   D                      8                 18                       2 -----------------.99                                                                                                             ?
          8 BIZ_MTHL                       ҵ���¶�                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          9 DATA_DATE                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_ODNR_IDX_QRY_ALL_M' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 FREQ                           ?                              CV                     2                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_FIELD                      ?                              CV                    16                  ?                       ? X(8)                                                                                                                             ?
          4 IDX_TYPE                       ?                              CV                    16                  ?                       ? X(8)                                                                                                                             ?
          5 IDX_SORT                       ?                              CV                    32                  ?                       ? X(16)                                                                                                                            ?
          6 IDX_CDE                        ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          7 IDX_NAME                       ?                              CV                    50                  ?                       ? X(50)                                                                                                                            ?
          8 IDX_VAL                        ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 CHG_RATE                       ?                              D                     16                 38                      10 --(28).9(10)                                                                                                                     ?
         10 BOTH_VAL_1                     ?                              F                      8                  ?                       ? -9.99999999999999E-999                                                                                                           ?
         11 BOTH_VAL_2                     ?                              F                      8                  ?                       ? -9.99999999999999E-999                                                                                                           ?
         12 STDDEV_SAMP_1                  ?                              F                      8                  ?                       ? -9.99999999999999E-999                                                                                                           ?
         13 STDDEV_SAMP_2                  ?                              F                      8                  ?                       ? -9.99999999999999E-999                                                                                                           ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_HGT_TRAD_AND_LMT_USE_CNDT_12' order by 1;

 *** Query completed. 11 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 HGT_BIZ_Sort_CDE               ?                              CF                     3                  ?                       ? X(3)                                                                                                                             ?
          3 HGT_BIZ_Sort                   ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 Buy_AMT                        ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SAL_AMT                        ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 NBUY_AMT                       ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 TRAD_AMT                       ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 A_And_H_SHR_TRAD_AMT           ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 ALRD_Used_LMT                  ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 AVAIL_LMT                      ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 LMT_BAL                        ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_MACRO_SOK_IDX' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 IDX_HRRC                       ָ��㼶                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 IDX_VAL                        ָ��ֵ                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          6 CALC_DATE                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 DATA_WHOL_ID                   ���������Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_IDX_SYS_CTR' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 FST_LVL_CDE                    һ������                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          2 FST_LVL_NAME                   һ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 SCND_LVL_CDE                   ��������                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          4 SCND_LVL_NAME                  ��������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 THIRD_LVL_CDE                  ��������                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          6 THIRD_LVL_NAME                 ��������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 FR_LVL_CDE                     �ļ�����                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          8 FR_LVL_NAME                    �ļ�����                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
          9 FREQ                           Ƶ��                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
         10 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         11 DIMN_CDE                       ά�ȴ���                       CV                    20                  ?                       ? X(20)                                                                                                                            ?
         12 DIMN_NAME                      ά������                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
         13 IDX_VAL                        ָ��ֵ                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'FCT_BOND_YLD_INFO' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 TLMT                           ����                           CF                     4                  ?                       ? X(4)                                                                                                                             ?
          5 MAT_YLD                        ����������                     D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_CLCT_IDX_CORR_CDE' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 WDI_CDE                        ��ô���                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 FREQ                           Ƶ��                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 TB_ID                          ���ʶ                         CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_CNCTR_DGRE_SEC' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 UND_SEC_CDE                    ���֤ȯ����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 UND_SEC_Name                   ���֤ȯ����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 RNKG                           ����                           I                      4                  ?                       ? -(10)9                                                                                                                           ?
          5 GUART_MKT_VAL_PERCN            ������ֵռ��                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'KPI_TIME_SERIES' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 Stat_Date                      ͳ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           Ƶ��                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_VAL                        ָ��ֵ                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SC_SMT_INFO' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 MNTNC_GUART_Rate               ά�ֵ�������                   D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          5 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 FIN_BAL_QOQ_ICRS               �������_��������              D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          7 SEC_LN_BAL                     ��ȯ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 SEC_LN_BAL_QOQ_ICRS            ��ȯ���_��������              D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          9 SMT_OCUP_Net_CAP_Rate          ������ȯռ���ʱ�����           D                     16                 20                       7 --(13).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'XT_RICH_REBL_SEVE' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 RED_001                        ?                              I                      4                  ?                       ? -(10)9                                                                                                                           ?
          2 RED_002                        ?                              I                      4                  ?                       ? -(10)9                                                                                                                           ?
          3 RED_003                        ?                              I                      4                  ?                       ? -(10)9                                                                                                                           ?
          4 RED_004                        ?                              I                      4                  ?                       ? -(10)9                                                                                                                           ?
          5 RED_005                        ?                              I                      4                  ?                       ? -(10)9                                                                                                                           ?
          6 RED_006                        ?                              I                      4                  ?                       ? -(10)9                                                                                                                           ?
          7 BLU_007                        ?                              I                      4                  ?                       ? -(10)9                                                                                                                           ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_MNTNC_GUART_RATE' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 MNTNC_GUART_Rate_LLMT          ά�ֵ�����������               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 MNTNC_GUART_Rate_ULMT          ά�ֵ�����������               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SEC_LN_BAL                     ��ȯ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_BOND_DFLT_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 PPDM_CDE                       Ͻ������                       CF                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PPDM_Name                      Ͻ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 BOND_DFLT_CNT                  ծȯΥԼֻ��                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 BOND_PNLT                      ծȯΥԼ���                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 BOND_PNLT_PERCN                ծȯΥԼ���ռ��               D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SC_FINA_INFO' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_Name                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_VAL                        ָ��ֵ                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 CALC_Date                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          8 Data_WHOL_Id                   ���������Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_ODNR_IDX_QRY_ALL_D' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 FREQ                           ?                              CV                     2                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_FIELD                      ?                              CV                    16                  ?                       ? X(8)                                                                                                                             ?
          4 IDX_TYPE                       ?                              CV                    16                  ?                       ? X(8)                                                                                                                             ?
          5 IDX_SORT                       ?                              CV                    32                  ?                       ? X(16)                                                                                                                            ?
          6 IDX_CDE                        ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          7 IDX_NAME                       ?                              CV                    50                  ?                       ? X(50)                                                                                                                            ?
          8 IDX_VAL                        ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 CHG_RATE                       ?                              D                     16                 38                      10 --(28).9(10)                                                                                                                     ?
         10 BOTH_VAL_1                     ?                              F                      8                  ?                       ? -9.99999999999999E-999                                                                                                           ?
         11 BOTH_VAL_2                     ?                              F                      8                  ?                       ? -9.99999999999999E-999                                                                                                           ?
         12 STDDEV_SAMP_1                  ?                              F                      8                  ?                       ? -9.99999999999999E-999                                                                                                           ?
         13 STDDEV_SAMP_2                  ?                              F                      8                  ?                       ? -9.99999999999999E-999                                                                                                           ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TCFG_IDX_WEIGHT' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 Weight                         Ȩ��                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SUPV_IDX_CDE                   �ϼ�ָ�����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 HRRC                           �㼶                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 Typ                            ����                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 S_Date                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 E_Date                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SC_SMT_INFO' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 MNTNC_GUART_Rate               ά�ֵ�������                   D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          5 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 FIN_BAL_QOQ_ICRS               �������_��������              D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          7 SEC_LN_BAL                     ��ȯ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 SEC_LN_BAL_QOQ_ICRS            ��ȯ���_��������              D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          9 SMT_OCUP_Net_CAP_Rate          ������ȯռ���ʱ�����           D                     16                 20                       7 --(13).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_IDX_WEIGHT_BAK_0907' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 Weight                         Ȩ��                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SUPV_IDX_CDE                   �ϼ�ָ�����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 HRRC                           �㼶                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 Typ                            ����                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 S_Date                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 E_Date                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SC_ST_RPCHS_INFO' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 ST_RPCHS_AMT                   �����ؽ��                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 ST_RPCHS_A_SHR_MKT_VAL         ������A����ֵ                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 CUPN                           ��Ϣ                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 Keep_GUART_Rate                ��Լ���ϱ���                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_TRAD_CNT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 INIT_TRAD_CNT                  ��ʼ���ױ���                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 RPCHS_TRAD_CNT                 ���ؽ��ױ���                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 ADD_PLG_CNT                    ������Ѻ����                   D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'ISD_ASET_LBLT_SPVS_RPT' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         ֤ȯ��˾����                   CV                     8                  ?                       ? X(8)                                                                                                                             ?
          2 RPT_DATE                       ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_NBR                        ָ�����                       CV                     3                  ?                       ? X(3)                                                                                                                             ?
          4 IDX_NAME                       ָ������                       CV                    60                  ?                       ? X(60)                                                                                                                            ?
          5 LINE_NUM                       �д�                           D                      2                  3                       0 ---9.                                                                                                                            ?
          6 END_BAL                        ��ĩ���                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          7 Y_START_BAL                    ������                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          8 BIZ_MTHL                       ҵ���¶�                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          9 DATA_DATE                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_MACRO_SOK_IDX' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 IDX_HRRC                       ָ��㼶                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 IDX_VAL                        ָ��ֵ                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          6 CALC_DATE                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 DATA_WHOL_ID                   ���������Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_BIZ_OVRAL_OPRT_CNDT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SEC_LN_BAL                     ��ȯ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 MNTNC_GUART_Rate               ά�ֵ�������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_STK_PLG_TRAD_AMT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Board_CDE                      ������                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 Board_Name                     �������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 INIT_TRAD_AMT                  ��ʼ���׽��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 RPCHS_TRAD_AMT                 ���ؽ��׽��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 PLG_Rate                       ��Ѻ��                         D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TKPI_TIME_SERIES' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 STAT_DATE                      ͳ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           Ƶ��                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_VAL                        ָ��ֵ                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TFCT_BOND_YLD_INFO' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_Name                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 TLMT                           ����                           CF                     4                  ?                       ? X(4)                                                                                                                             ?
          5 MAT_YLD                        ����������                     D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_HGT_TRAD_AND_LMT_USE_CNDT' order by 1;

 *** Query completed. 11 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 HGT_BIZ_Sort_CDE               ����ͨҵ��������             CF                     3                  ?                       ? X(3)                                                                                                                             ?
          3 HGT_BIZ_Sort                   ����ͨҵ�����                 CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 Buy_AMT                        ������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SAL_AMT                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 NBUY_AMT                       ��������                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 TRAD_AMT                       �ɽ����                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 A_And_H_SHR_TRAD_AMT           A+H�ɳɽ���                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 ALRD_Used_LMT                  ���ö��                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 AVAIL_LMT                      ���ö��                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 LMT_BAL                        ������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'KPI_TIME_SERIES_HIS' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 STAT_DATE                      ͳ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           Ƶ��                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_VAL                        ָ��ֵ                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CONTROL_TABLE' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 Data_Date                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Job_Name                       ��ҵ����                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 Min_Date                       ��С����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          4 Max_Date                       �������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 Ava_Sign                       ��Ч��ʶ                       CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'ISD_SC_RISK_MONIT_SPVS_RPT' order by 1;

 *** Query completed. 12 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         ֤ȯ��˾����                   CV                     8                  ?                       ? X(8)                                                                                                                             ?
          2 RPT_DATE                       ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_NBR                        ָ�����                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 IDX_NAME                       ָ������                       CV                    60                  ?                       ? X(60)                                                                                                                            ?
          5 LINE_NUM                       �д�                           D                      2                  3                       0 ---9.                                                                                                                            ?
          6 BEG_VAL                        �ڳ�                           D                      8                 18                       2 -----------------.99                                                                                                             ?
          7 END_VAL                        ��ĩ                           D                      8                 18                       2 -----------------.99                                                                                                             ?
          8 ALT_STD                        Ԥ����׼                       CV                    21                  ?                       ? X(21)                                                                                                                            ?
          9 SPVS_STD                       ��ܱ�׼                       CV                    20                  ?                       ? X(20)                                                                                                                            ?
         10 RMAK                           ��ע                           CV                   256                  ?                       ? X(256)                                                                                                                           ?
         11 BIZ_MTHL                       ҵ���¶�                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         12 DATA_DATE                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'ISD_STK_FD_BD_INV_BIZ_2_RPT' order by 1;

 *** Query completed. 16 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         ֤ȯ��˾����                   CV                     8                  ?                       ? X(8)                                                                                                                             ?
          2 RPT_DATE                       ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_NBR                        ָ�����                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 IDX_NAME                       ָ������                       CV                    60                  ?                       ? X(60)                                                                                                                            ?
          5 TRDN_FINAC_ASET_HOLD_COST      �����Խ����ʲ����гɱ�         D                      8                 18                       2 -----------------.99                                                                                                             ?
          6 TRDN_FINAC_ASET_FAJ_VAL_CHG    �����Խ����ʲ����ʼ�ֵ�䶯     D                      8                 18                       2 -----------------.99                                                                                                             ?
          7 FINAC_ASET_HOLD_COST           �ɹ����۽����ʲ����гɱ�       D                      8                 18                       2 -----------------.99                                                                                                             ?
          8 FINAC_ASET_FAJ_VAL_CHG         �ɹ����۽����ʲ����ʼ�ֵ�䶯   D                      8                 18                       2 -----------------.99                                                                                                             ?
          9 FINAC_ASET_OTH                 �ɹ����۽����ʲ�����           D                      8                 18                       2 -----------------.99                                                                                                             ?
         10 HOLD_TO_MAT_INVSMT_COST        ����������Ͷ�ʳɱ�             D                      8                 18                       2 -----------------.99                                                                                                             ?
         11 HOLD_TO_MAT_INVSMT_OTH         ����������Ͷ������             D                      8                 18                       2 -----------------.99                                                                                                             ?
         12 BIZ_MTHL                       ҵ���¶�                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         13 DATA_DATE                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         14 DATA_TIME                      ����ʱ��                       TS                    26                  ?                       6 YYYYMMDDBHH:MI:SS                                                                                                                ?
         15 S_DATE                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         16 E_DATE                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_STK_PLG_RPCHS_SCALE_IDSTR' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDSTR_CDE                      ��ҵ����                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 IDSTR_Name                     ��ҵ����                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 ST_RPCHS_AMT                   �����ؽ��                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 NEGT_MKT_VAL_PERCN             ��ͨ��ֵռ��                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 RNKG                           ����                           I                      4                  ?                       ? -(10)9                                                                                                                           ?
          7 RNKG_QOQ_Vary                  �������ȱ仯                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'ISD_ASET_DECIV_PREP_RPT' order by 1;

 *** Query completed. 15 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         ֤ȯ��˾����                   CV                     8                  ?                       ? X(8)                                                                                                                             ?
          2 RPT_DATE                       ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_NBR                        ָ�����                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 IDX_NAME                       ָ������                       CV                    60                  ?                       ? X(60)                                                                                                                            ?
          5 LINE_NO                        �д�                           D                      2                  3                       0 ---9.                                                                                                                            ?
          6 Y_START_BAL                    ������                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          7 DEP_RESE_AMT                   ���ڼ����                     D                      8                 18                       2 -----------------.99                                                                                                             ?
          8 REVS_DEC                       ת�ر��ڼ�����                 D                      8                 18                       2 -----------------.99                                                                                                             ?
          9 WRITE_OFF_DEC                  ת�����ڼ�����                 D                      8                 18                       2 -----------------.99                                                                                                             ?
         10 END_BAL                        ��ĩ���                       D                      8                 18                       2 -----------------.99                                                                                                             ?
         11 BIZ_MTHL                       ҵ���¶�                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         12 DATA_DATE                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         13 DATA_TIME                      ����ʱ��                       TS                    26                  ?                       6 YYYYMMDDBHH:MI:SS                                                                                                                ?
         14 S_DATE                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         15 E_DATE                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_FORC_LQD_CNDT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 BLW_LQD_LINE_ACCT_VOL          ����ƽ���ߵ��˻���             D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 BANKRL_GAP                     �ʽ�ȱ��                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 FORC_LQD_AMT                   ǿ��ƽ�ֽ��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_CRDT_SEC_ACCT_VOL_VARY' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CRDT_ACCT_TOT_VOL              �����˻�����                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 NOPEN_CRDT_ACCT_VOL            �¿������˻���                 D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 PTC_SMT_BIZ_ACCT_VOL_Rate      ����������ȯҵ����˻�������   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_INDX_FUTRS_SLUMP_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        ָ������                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_Name                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 Slump_CNT                      ��������                       D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 SLUMP_RANG                     ��������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 PT                             ��λ                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TCFG_SYS_IMPOT_SC' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 SYS_IMPOT_ID                   ϵͳ��Ҫ�Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          4 S_Date                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 E_Date                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'FCT_SCEDF' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 EDF                            EDF                            D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VT_MID_CN_IDX_INFO' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CD                         ָ������                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_Name                       ָ������                       CV                   200                  ?                       ? X(200)                                                                                                                           ?
          4 CLS_PRC                        ���̵���                       D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_STK_PLG_RPCHS_SCALE_SC' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 MANG_CLSF                      ��Ӫ����                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 CAP_Type                       �ɱ�����                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 ST_RPCHS_AMT                   �����ؽ��                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 ST_RPCHS_AMT_PERCN             �����ؽ��ռ��                 D                      8                 10                       7 ----.9999999                                                                                                                     ?
          8 TRAD_CNT                       ���ױ���                       D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_AVG_KEP_GUART_RATE' order by 1;

 *** Query completed. 2 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Keep_GUART_Rate                ��Լ���ϱ���                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_ODNR_IDX_QRY_ALL' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 FREQ                           ?                              CV                     2                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_FIELD                      ?                              CV                    16                  ?                       ? X(8)                                                                                                                             ?
          4 IDX_TYPE                       ?                              CV                    16                  ?                       ? X(8)                                                                                                                             ?
          5 IDX_SORT                       ?                              CV                    32                  ?                       ? X(16)                                                                                                                            ?
          6 IDX_CDE                        ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          7 IDX_NAME                       ?                              CV                    50                  ?                       ? X(50)                                                                                                                            ?
          8 IDX_VAL                        ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_RPCHS_SCALE_SC' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 MANG_CLSF                      ��Ӫ����                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 CAP_Type                       �ɱ�����                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 ST_RPCHS_AMT                   �����ؽ��                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 ST_RPCHS_AMT_PERCN             �����ؽ��ռ��                 D                      8                 10                       7 ----.9999999                                                                                                                     ?
          8 TRAD_CNT                       ���ױ���                       D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_UND_SEC_RISK_ANAL' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 UND_SEC_CDE                    ���֤ȯ����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 UND_SEC_Name                   ���֤ȯ����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 WAV_Rate                       ������                         D                      8                 10                       7 ----.9999999                                                                                                                     ?
          5 PE                             ��ӯ��                         D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 STK_PRC_CHG_RATE               �ɼ��ǵ���                     D                      8                 10                       7 ----.9999999                                                                                                                     ?
          7 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 FIN_BAL_ICRS                   �����������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          9 FIN_BUY_OCUP_TRAD_AMT_RATE     ���������ռ�ɽ���֮��         D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'BOND_333' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 EXCH                           ������                         CV                     6                  ?                       ? X(6)                                                                                                                             ?
          3 IDX_CDE                        ծȯ����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_NAME                       ծȯ����                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 BOND_TYPE                      ծȯ����                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 VOL                            ���й�ģ                       D                      8                 18                       0 ------------------9.                                                                                                             ?
          7 MAT_YLD                        ���̼۵���������               D                     16                 30                       6 --(24).9(6)                                                                                                                      ?
          8 DUR                            ����                           D                     16                 30                       6 --(24).9(6)                                                                                                                      ?
          9 ISS_DATE                       ������ʼ����                   DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         10 DEL_DATE                       ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         11 NEW_GRADE                      ��������                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
         12 ISSUER                         ���������ƣ���˾���ƣ�         CV                   100                  ?                       ? X(100)                                                                                                                           ?
         13 ISSUER_ADD                     ���������ڵأ�ʡ����ѡ�����д� CV                    50                  ?                       ? X(50)                                                                                                                            ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_IDX_SYS_RCS' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 FST_LVL_CDE                    һ������                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          2 FST_LVL_NAME                   һ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 SCND_LVL_CDE                   ��������                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          4 SCND_LVL_NAME                  ��������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 THIRD_LVL_CDE                  ��������                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          6 THIRD_LVL_NAME                 ��������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 FR_LVL_CDE                     �ļ�����                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          8 FR_LVL_NAME                    �ļ�����                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
          9 FREQ                           Ƶ��                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
         10 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         11 DIMN_CDE                       ά�ȴ���                       CV                    20                  ?                       ? X(20)                                                                                                                            ?
         12 DIMN_NAME                      ά������                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
         13 IDX_VAL                        ָ��ֵ                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_UND_PRES_MNTNC_GUART' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 biz_date                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 PRESS_VAL                      ?                              D                      8                 18                       2 -----------------.99                                                                                                             ?
          3 MNTNC_GUART_RATE_LLMT          ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          4 MNTNC_GUART_RATE_ULMT          ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          5 FIN_BAL                        ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 SEC_LN_BAL                     ?                              D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_BIZ_OVRAL_OPRT_CNDT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SEC_LN_BAL                     ��ȯ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 MNTNC_GUART_Rate               ά�ֵ�������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'FCT_RDM_PRESS' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_Name                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 IDX_VAL                        ָ��ֵ                         D                     16                 20                       7 --(13).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TRPT_IO_EQUITY_PLG_BIZ_SCALE' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IN_OR_OUT_MKT                  ���ڳ���                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PLG_SHRS                       ��Ѻ����                       D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 MKT_VAL_PERCN                  ��ֵռ��                       D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_DATA_PREP_CNDT' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 MIN_BIZ_DATE                   ��Сҵ������                   DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 MAX_BIZ_DATE                   ���ҵ������                   DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_NAME                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 DATA_WHOL_ID                   ���������Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 DSCR                           ˵��                           CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 QRY_DATE                       ��ѯ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_UND_PRES_MNTNC_GUART' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 PRESS_VAL                      ѹ������                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          3 MNTNC_GUART_RATE_LLMT          ά�ֵ�����������               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          4 MNTNC_GUART_RATE_ULMT          ά�ֵ�����������               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          5 CUST_CNT                       �˻���                         D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 FIN_BAL                        �������                       D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          7 SEC_LN_BAL                     ��ȯ���                       D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_GRTH_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF                           ����                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 SEC_LN_BAL                     ��ȯ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 FIN_BAL_GRTH                   �����������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 SEC_LN_BAL_GRTH                ��ȯ�������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_UND_PRES_KEEP_GUART_RATE' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 biz_date                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 PRESS_VAL                      ?                              D                      8                 18                       2 -----------------.99                                                                                                             ?
          3 cap_type                       ?                              CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 rate_llmt                      ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          5 rate_ulmt                      ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 st_rpchs_nbr                   ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          7 st_rpchs_sec_mkt_val           ?                              D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_HKST_ACCT_CNDT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 HKST_PSTN_ACCT_VOL             �۹�ͨ�ֲ��˻���               D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 TRAD_ACCT_VOL                  �����˻���                     D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 New_HKST_PSTN_ACCT_VOL         �����۹�ͨ�ֲ��˻���           D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'MID_DOM_IDX_INFO_0' order by 1;

 *** Query completed. 21 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        ָ������                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 OPN_POINT                      ���̵���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 PRE_CLS_POINT                  ǰ���̵���                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 CLS_POINT                      ���̵���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 MAX_POINT                      ��ߵ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 MIN_POINT                      ��͵���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 D_CHG_RATE                     ���ǵ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 Y_CHG_RATE                     ���ǵ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 RETN                           ����������                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 TRAD_AMT                       �ɽ����                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 TRAD_QTT                       �ɽ���                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 TCAP                           �ܹɱ�                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 NEGT_CAP                       ��ͨ�ɱ�                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 TOT_MKT_VAL                    ����ֵ                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 NEGT_MKT_VAL                   ��ͨ��ֵ                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 MKT_VAL_TNOV_RATE              ��ֵ������                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         19 TRAD_QTT_TNOV_RATE             �ɽ���������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         20 AVG_STK_PRC                    ƽ���ɼ�                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         21 DATA_SRC_TYPE                  ����Դ����                     CV                    12                  ?                       ? X(12)                                                                                                                            ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_MACRO_SOK_IDX_X1' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 IDX_CDE                        ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       ?                              CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 IDX_HRRC                       ?                              CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 IDX_VAL                        ?                              D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          6 CALC_DATE                      ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          7 DATA_WHOL_ID                   ?                              CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'T2' order by 1;

 *** Query completed. 3 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 COL_011                        ?                              DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 COL_012                        ?                              CV                     8                  ?                       ? X(8)                                                                                                                             ?
          3 COL_013                        ?                              D                      8                 18                       2 -----------------.99                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_MNTNC_GUART_RATE' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 MNTNC_GUART_Rate_LLMT          ά�ֵ�����������               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 MNTNC_GUART_Rate_ULMT          ά�ֵ�����������               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SEC_LN_BAL                     ��ȯ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_GRTH_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF                           ����                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 SEC_LN_BAL                     ��ȯ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 FIN_BAL_GRTH                   �����������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 SEC_LN_BAL_GRTH                ��ȯ�������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TRPT_HKST_INVST_NBUY_CNDT' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF_CDE                       �������                       CF                     2                  ?                       ? X(2)                                                                                                                             ?
          3 CLSF_Name                      ��������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 CNT                            ֻ��                           D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 CNT_PERCN                      ֻ��ռ��                       D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 A_SHR_NBUY_AMT                 A�ɾ�������                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 HK_STK_NBUY_AMT                �۹ɾ�������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_RPCHS_SCALE_IDSTR' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDSTR_CDE                      ��ҵ����                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 IDSTR_Name                     ��ҵ����                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 ST_RPCHS_AMT                   �����ؽ��                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 NEGT_MKT_VAL_PERCN             ��ͨ��ֵռ��                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 RNKG                           ����                           I                      4                  ?                       ? -(10)9                                                                                                                           ?
          7 RNKG_QOQ_Vary                  �������ȱ仯                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TFCT_SC_RISK_INFO_M' order by 1;

 *** Query completed. 24 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 Stat_Date                      ͳ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 T1_M_BIZ_ENING                 T-1��Ӫҵ����                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 T2_M_BIZ_ENING                 T-2��Ӫҵ����                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 M3_ENING_AVG_VAL               ����������ƽ��ֵ               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 OPRT_Risk_CAP_REQR             ���������ʱ�Ҫ��               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 TRDN_BOND_INVSMT               ������ծȯͶ��                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 TRDN_EQUT_INVSMT               ������Ȩ�湤��Ͷ��             D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 DERI_FINAC_Aset                ���������ʲ�                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 AVAIL_Sell_FINAC_Aset          �ɹ����۽����ʲ�               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 MKT_Risk_CAP_REQR_TOT          �г������ʱ�Ҫ��ϼ�           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 RM_CAP_F_SALE                  ���뷵�۽����ʲ�               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 AR_FOA                         Ӧ���˿�                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 AR_FOA_EXCD_CNTR_PRD           Ӧ���˿�_������ͬ��            D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 AR_FOA_CNTR_PRD_INR            Ӧ���˿�_��ͬ����              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 CRDT_Risk_WETN_Aset_TOT        ���÷��ռ�Ȩ�ʲ��ϼ�           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 TOT_Risk_WETN_Aset             �ܷ��ռ�Ȩ�ʲ�                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         19 CAP_LVRG_RT                    �ʱ��ܸ���                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         20 CAP_ABDT                       �ʱ���ԣ��                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         21 AGT_TRAD_SEC_MONEY             ������֤ȯ��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         22 BE_ENTRU_BANKRL                �����ʽ�                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         23 CUR_AST                        �����ʲ�                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         24 CUR_LIB                        ������ծ                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_MODE_REPO_PLG_RATE' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 RATE_CLSF                      ��������                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 PLG_Rate_LLMT                  ��Ѻ��������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 PLG_Rate_ULMT                  ��Ѻ��������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          5 ACCT_VOL                       �˻���                         D                     16                 24                       0 --(23)9.                                                                                                                         ?
          6 ST_RPCHS_AMT                   �����ؽ��                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_ODNR_IDX_QRY_INFO_BAK' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           Ƶ��                           CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 IDX_FIELD                      ָ������                       CV                    30                  ?                       ? X(30)                                                                                                                            ?
          4 IDX_TYPE                       ָ������                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 IDX_SORT                       ָ�����                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_CDE                        ָ�����                       CV                    20                  ?                       ? X(20)                                                                                                                            ?
          7 IDX_NAME                       ָ������                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
          8 IDX_VAL                        ָ��ֵ                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          9 CHG_RATE                       �ǵ���                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         10 BOTH_VAL_1                     ��ֵ1                          D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         11 BOTH_VAL_2                     ��ֵ2                          D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         12 STDDEV_SAMP_1                  ��׼��1                        D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         13 STDDEV_SAMP_2                  ��׼��2                        D                     16                 24                       7 --(17).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_MNTNC_GUART_RATE_T' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 MNTNC_GUART_Rate_LLMT          ά�ֵ�����������               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 MNTNC_GUART_Rate_ULMT          ά�ֵ�����������               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SEC_LN_BAL                     ��ȯ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_IDX_WEIGHT_BAK' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 Weight                         Ȩ��                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SUPV_IDX_CDE                   �ϼ�ָ�����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 HRRC                           �㼶                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 Typ                            ����                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 S_Date                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 E_Date                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_ODNR_IDX_QRY_ALL_Q' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 FREQ                           ?                              CV                     2                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_FIELD                      ?                              CV                    16                  ?                       ? X(8)                                                                                                                             ?
          4 IDX_TYPE                       ?                              CV                    16                  ?                       ? X(8)                                                                                                                             ?
          5 IDX_SORT                       ?                              CV                    32                  ?                       ? X(16)                                                                                                                            ?
          6 IDX_CDE                        ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          7 IDX_NAME                       ?                              CV                    50                  ?                       ? X(50)                                                                                                                            ?
          8 IDX_VAL                        ?                              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 CHG_RATE                       ?                              D                     16                 38                      10 --(28).9(10)                                                                                                                     ?
         10 BOTH_VAL_1                     ?                              F                      8                  ?                       ? -9.99999999999999E-999                                                                                                           ?
         11 BOTH_VAL_2                     ?                              CV                     2                  ?                       ? X(1)                                                                                                                             ?
         12 STDDEV_SAMP_1                  ?                              F                      8                  ?                       ? -9.99999999999999E-999                                                                                                           ?
         13 STDDEV_SAMP_2                  ?                              CV                     2                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_GUART_SEC_BOARD_DISTR' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Board_CDE                      ������                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 Board_Name                     �������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 GUART_MKT_VAL                  ������ֵ                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 GUART_MKT_VAL_PERCN            ������ֵռ��                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_CRDT_SEC_ACCT_VOL_VARY' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CRDT_ACCT_TOT_VOL              �����˻�����                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 NOPEN_CRDT_ACCT_VOL            �¿������˻���                 D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 PTC_SMT_BIZ_ACCT_VOL_Rate      ����������ȯҵ����˻�������   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'RPT_HKST_INVST_NBUY_CNDT' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF_CDE                       �������                       CF                     2                  ?                       ? X(2)                                                                                                                             ?
          3 CLSF_Name                      ��������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 CNT                            ֻ��                           D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 CNT_PERCN                      ֻ��ռ��                       D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 A_SHR_NBUY_AMT                 A�ɾ�������                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 HK_STK_NBUY_AMT                �۹ɾ�������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_RMS_IDX_INFO' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 IDX_Name                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 ENTR_INDC                      ¼���־                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          4 IDX_TB_Name                    ָ�����                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_VIEW                       ָ����ͼ��                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_S_CRIPT                    ָ��ű���                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 FREQ                           Ƶ��                           CV                    50                  ?                       ? X(50)                                                                                                                            ?
          8 RMAK                           ��ע                           CV                    50                  ?                       ? X(50)                                                                                                                            ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_STK_INDX_FUTRS_SLUMP_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        ָ������                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_Name                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 Slump_CNT                      ��������                       D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 SLUMP_RANG                     ��������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 PT                             ��λ                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_GUART_SEC_BOARD_DISTR' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Board_CDE                      ������                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 Board_Name                     �������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 GUART_MKT_VAL                  ������ֵ                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 GUART_MKT_VAL_PERCN            ������ֵռ��                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SC_FINA_RISK_IDX_SYS' order by 1;

 *** Query completed. 21 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 CALC_Date                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 Data_WHOL_Id                   ���������Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 T2_M_BIZ_ENING                 T-2��Ӫҵ����                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 T1_M_BIZ_ENING                 T-1��Ӫҵ����                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 T_M_BIZ_ENING                  T��Ӫҵ����                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 M3_ENING_AVG_VAL               ����������ƽ��ֵ               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 OPRT_Risk_CAP_REQR             ���������ʱ�Ҫ��               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 TRDN_BOND_INVSMT               ������ծȯͶ��                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 TRDN_EQUT_INVSMT               ������Ȩ�湤��Ͷ��             D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 DERI_FINAC_Aset                ���������ʲ�                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 AVAIL_Sell_FINAC_Aset          �ɹ����۽����ʲ�               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 MKT_Risk_CAP_REQR_TOT          �г������ʱ�Ҫ��ϼ�           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 RM_CAP_F_SALE                  ���뷵�۽����ʲ�               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 AR_FOA                         Ӧ���˿�                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 AR_FOA_CNTR_PRD_INR            Ӧ���˿�_��ͬ����              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         19 AR_FOA_EXCD_CNTR_PRD           Ӧ���˿�_������ͬ��            D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         20 CRDT_Risk_WETN_Aset_TOT        ���÷��ռ�Ȩ�ʲ��ϼ�           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         21 TOT_Risk_WETN_Aset             �ܷ��ռ�Ȩ�ʲ�                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_TRAD_CNDT' order by 1;

 *** Query completed. 17 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF                           ����                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 FIN_NBUY_AMT                   ���ʾ�������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 FIN_BUY_AMT                    ����������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SLCPS_PAYBK_AMT                ��ȯ������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 DRCT_PAYBK_AMT                 ֱ�ӻ�����                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 FIN_RP_AMT                     ���ʳ������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 FIN_LQD_AMT                    ����ƽ�ֽ��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 SEC_LN_SAL_AMT                 ��ȯ�������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 BUY_STK_AS_VCR_AMT             ��ȯ��ȯ���                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 AS_VCR_TRANS_AMT               ��ȯ��ת���                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 SEC_LN_RP_AMT                  ��ȯ�������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 SEC_LN_Net_SAL_AMT             ��ȯ���������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 SEC_LN_LQD_AMT                 ��ȯƽ�ֽ��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 GAGE_BUY_AMT                   ����Ʒ������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 GAGE_SAL_AMT                   ����Ʒ�������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 A_SHR_TRAD_AMT                 A�ɳɽ����                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'KPI_SEC_TRAD_HOLD_ACCT_VOL_0' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 STAT_DATE                      ͳ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           Ƶ��                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 SEC_EXCH_CDE                   ֤ȯ����������                 CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 ACCT_TYPE                      �˻�����                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          5 STK_INVST_SORT                 ��ƱͶ�������                 CV                     3                  ?                       ? X(3)                                                                                                                             ?
          6 IDX_CDE                        ָ�����                       CF                     5                  ?                       ? X(5)                                                                                                                             ?
          7 IDX_VAL                        ָ��ֵ                         D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CLCT_IDX_CORR_CDE_TB' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 WDI_CDE                        ��ô���                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 FREQ                           Ƶ��                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 TB_ID                          ���ʶ                         CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_BIZ_OVRAL_OPRT_CNDT_temp1' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FIN_BAL                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SEC_LN_BAL                     ��ȯ���                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 MNTNC_GUART_Rate               ά�ֵ�������                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_NTWK_PRESS_IDX_INFO' order by 1;

 *** Query completed. 10 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 BIZ_TYPE                       ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 PRESS_FACTOR                   ?                              CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 FACTOR_VAL                     ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 BANKRL_ITP                     ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          6 BANKRL_RCP                     ?                              CV                    12                  ?                       ? X(12)                                                                                                                            ?
          7 BANKRL_RCP_OVRAL_LOAN_BANKRL   ?                              D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          8 PTY_BTWN_ST_RPCHS_AMT          ?                              D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          9 PTY_BTWN_DPST_GAP              ?                              D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         10 BANKRL_RCP_OVRAL_DPST_GAP      ?                              D                     16                 24                       7 --(17).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_TRAD_AMT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Board_CDE                      ������                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 Board_Name                     �������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 INIT_TRAD_AMT                  ��ʼ���׽��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 RPCHS_TRAD_AMT                 ���ؽ��׽��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 PLG_Rate                       ��Ѻ��                         D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SC_FINA_INFO' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_Name                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_VAL                        ָ��ֵ                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 CALC_Date                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          8 Data_WHOL_Id                   ���������Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_SEC_CO_SC_CD_RLTN' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SEC_CDE                        ֤ȯ����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 SEC_EXCH_CDE                   ֤ȯ����������                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 S_Date                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 E_Date                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_CORLT_RMS_IDX' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 IDX_NAME                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 CORLT_RMS_IDX_CDE              ��ط���ָ�����               CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 CORLT_RMS_IDX_NAME             ��ط���ָ������               CV                   500                  ?                       ? X(500)                                                                                                                           ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'RPT_IO_EQUITY_PLG_BIZ_SCALE' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IN_OR_OUT_MKT                  ���ڳ���                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PLG_SHRS                       ��Ѻ����                       D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 MKT_VAL_PERCN                  ��ֵռ��                       D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'FCT_SC_RISK_INFO_M' order by 1;

 *** Query completed. 24 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 STAT_DATE                      ͳ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_NAME                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 T1_M_BIZ_ENING                 T-1��Ӫҵ����                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 T2_M_BIZ_ENING                 T-2��Ӫҵ����                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 M3_ENING_AVG_VAL               ����������ƽ��ֵ               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 OPRT_RISK_CAP_REQR             ���������ʱ�Ҫ��               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 TRDN_BOND_INVSMT               ������ծȯͶ��                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 TRDN_EQUT_INVSMT               ������Ȩ�湤��Ͷ��             D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 DERI_FINAC_ASET                ���������ʲ�                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 AVAIL_SELL_FINAC_ASET          �ɹ����۽����ʲ�               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 MKT_RISK_CAP_REQR_TOT          �г������ʱ�Ҫ��ϼ�           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 RM_CAP_F_SALE                  ���뷵�۽����ʲ�               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 AR_FOA                         Ӧ���˿�                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 AR_FOA_EXCD_CNTR_PRD           Ӧ���˿�_������ͬ��            D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 AR_FOA_CNTR_PRD_INR            Ӧ���˿�_��ͬ����              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 CRDT_RISK_WETN_ASET_TOT        ���÷��ռ�Ȩ�ʲ��ϼ�           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 TOT_RISK_WETN_ASET             �ܷ��ռ�Ȩ�ʲ�                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         19 CAP_LVRG_RT                    �ʱ��ܸ���                     D                      8                 10                       7 ----.9999999                                                                                                                     ?
         20 CAP_ABDT                       �ʱ���ԣ��                     D                      8                 10                       7 ----.9999999                                                                                                                     ?
         21 AGT_TRAD_SEC_MONEY             ������֤ȯ��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         22 BE_ENTRU_BANKRL                �����ʽ�                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         23 CUR_AST                        �����ʲ�                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         24 CUR_LIB                        ������ծ                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'XVIS_SC_FINA_RISK_IDX_SYS' order by 1;

 *** Query completed. 10 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_Name                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_CLSF                       ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          7 IDX_VAL                        ָ��ֵ                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 IDX_VAL_QOQ_Vary               ָ��ֵ���ȱ仯                 D                      8                 10                       7 ----.9999999                                                                                                                     ?
          9 CALC_Date                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         10 Data_WHOL_Id                   ���������Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_CNCTR_DGRE' order by 1;

 *** Query completed. 2 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SEC_CNCTR_DGRE                 ֤ȯ���ж�                     D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_BOND_DFLT_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 PPDM_CDE                       Ͻ������                       CF                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PPDM_Name                      Ͻ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 BOND_DFLT_CNT                  ծȯΥԼֻ��                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 BOND_PNLT                      ծȯΥԼ���                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 BOND_PNLT_PERCN                ծȯΥԼ���ռ��               D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TCFG_SEC_CO_SC_CD_RLTN' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SEC_CDE                        ֤ȯ����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 SEC_EXCH_CDE                   ֤ȯ����������                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 S_Date                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 E_Date                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_FORC_LQD_CNDT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 BLW_LQD_LINE_ACCT_VOL          ����ƽ���ߵ��˻���             D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 BANKRL_GAP                     �ʽ�ȱ��                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 FORC_LQD_AMT                   ǿ��ƽ�ֽ��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_TRAD_CNDT20160510' order by 1;

 *** Query completed. 19 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF                           ����                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 FIN_NBUY_AMT                   ���ʾ�������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 FIN_Buy_AMT                    ����������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SLCPS_PAYBK_AMT                ��ȯ������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 DRCT_PAYBK_AMT                 ֱ�ӻ�����                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 FIN_RP_AMT                     ���ʳ������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 FIN_LQD_AMT                    ����ƽ�ֽ��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 SEC_LN_Net_SAL_VOL             ��ȯ����������                 D                     16                 24                       0 --(23)9.                                                                                                                         ?
         10 SEC_LN_SAL_VOL                 ��ȯ��������                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
         11 SEC_LN_SAL_AMT                 ��ȯ�������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 BUY_STK_AS_VCR_VOL             ��ȯ��ȯ����                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
         13 DRCT_AS_VCR_VOL                ֱ�ӻ�ȯ����                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
         14 SEC_LN_RP_VOL                  ��ȯ��������                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
         15 BUY_STK_AS_VCR_AMT             ��ȯ��ȯ���                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 DRCT_AS_VCR_AMT                ֱ�ӻ�ȯ���                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 SEC_LN_RP_AMT                  ��ȯ�������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 SEC_LN_LQD_VOL                 ��ȯƽ������                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
         19 A_SHR_TRAD_AMT                 A�ɳɽ����                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_CNCTR_DGRE' order by 1;

 *** Query completed. 3 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SEC_CNCTR_DGRE                 ֤ȯ���ж�                     D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 ACCT_CNCTR_DGRE                �˻����ж�                     D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_SYS_IMPOT_SC' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 SYS_IMPOT_ID                   ϵͳ��Ҫ�Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          4 S_Date                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 E_Date                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_BIZ_PRESS_IDX_INFO' order by 1;

 *** Query completed. 12 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 BIZ_TYPE                       ҵ������                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 PRESS_FACTOR                   ѹ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 FACTOR_VAL                     ����ȡֵ                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 STK_TYPE                       ��Ʊ����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          6 DPST_GAP                       ��֤��ȱ��                     D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          7 FORC_LQD_TRAD_CNT              ǿ��ƽ�ֽ��ױ���               D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          8 FORC_LQD_TRAD_CNT_PERCN        ǿ��ƽ�ֽ��ױ���ռ��           D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          9 FORC_LQD_TRAD_QTT              ǿ��ƽ�ֽ�����                 D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         10 FORC_LQD_TRAD_QTT_PERCN        ǿ��ƽ�ֽ�����ռ��             D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         11 FORC_LQD_TRAD_AMT              ǿ��ƽ�ֽ��׽��               D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         12 FORC_LQD_TRAD_AMT_PERCN        ǿ��ƽ�ֽ��׽��ռ��           D                     16                 24                       7 --(17).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_STK_PLG_FORC_LQD_INFO' order by 1;

 *** Query completed. 12 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 biz_date                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 cap_type                       ?                              CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PRESS_VAL                      ?                              D                      8                 18                       2 -----------------.99                                                                                                             ?
          4 st_rpchs_plg_gap               ?                              D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          5 init_cntr_nbr_ini              ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 init_cntr_nbr_tot              ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          7 itp_sec_acct_ini               ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          8 itp_sec_acct_tot               ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          9 forc_lqd_nbr_ini               ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
         10 forc_lqd_nbr_TOT               ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
         11 forc_lqd_val_ini               ?                              D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
         12 forc_lqd_val_TOT               ?                              D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SC_FINA_RISK_IDX_SYS' order by 1;

 *** Query completed. 21 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 CALC_Date                      ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 Data_WHOL_Id                   ���������Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 T2_M_BIZ_ENING                 T-2��Ӫҵ����                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 T1_M_BIZ_ENING                 T-1��Ӫҵ����                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 T_M_BIZ_ENING                  T��Ӫҵ����                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 M3_ENING_AVG_VAL               ����������ƽ��ֵ               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 OPRT_Risk_CAP_REQR             ���������ʱ�Ҫ��               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 TRDN_BOND_INVSMT               ������ծȯͶ��                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 TRDN_EQUT_INVSMT               ������Ȩ�湤��Ͷ��             D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 DERI_FINAC_Aset                ���������ʲ�                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 AVAIL_Sell_FINAC_Aset          �ɹ����۽����ʲ�               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 MKT_Risk_CAP_REQR_TOT          �г������ʱ�Ҫ��ϼ�           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 RM_CAP_F_SALE                  ���뷵�۽����ʲ�               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 AR_FOA                         Ӧ���˿�                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 AR_FOA_CNTR_PRD_INR            Ӧ���˿�_��ͬ����              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         19 AR_FOA_EXCD_CNTR_PRD           Ӧ���˿�_������ͬ��            D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         20 CRDT_Risk_WETN_Aset_TOT        ���÷��ռ�Ȩ�ʲ��ϼ�           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         21 TOT_Risk_WETN_Aset             �ܷ��ռ�Ȩ�ʲ�                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_CRDT_WEIGHT' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 WEIGHT                         ָ��Ȩ��                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 TYP                            ����                           CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 S_DATE                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 E_DATE                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'NBS_STAT_DATA_M' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                   120                  ?                       ? X(120)                                                                                                                           ?
          2 IDX_VAL                        ָ��ֵ                         D                     16                 38                      20 --(18).9(20)                                                                                                                     ?
          3 S_DATE                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          4 E_DATE                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 IDX_NAME                       ?                              CV                   120                  ?                       ? X(120)                                                                                                                           ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_TRAD_CNDT' order by 1;

 *** Query completed. 17 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF                           ����                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 FIN_NBUY_AMT                   ���ʾ�������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 FIN_BUY_AMT                    ����������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SLCPS_PAYBK_AMT                ��ȯ������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 DRCT_PAYBK_AMT                 ֱ�ӻ�����                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 FIN_RP_AMT                     ���ʳ������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 FIN_LQD_AMT                    ����ƽ�ֽ��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 SEC_LN_SAL_AMT                 ��ȯ�������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 BUY_STK_AS_VCR_AMT             ��ȯ��ȯ���                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 AS_VCR_TRANS_AMT               ��ȯ��ת���                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 SEC_LN_RP_AMT                  ��ȯ�������                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 SEC_LN_Net_SAL_AMT             ��ȯ���������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 SEC_LN_LQD_AMT                 ��ȯƽ�ֽ��                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 GAGE_BUY_AMT                   ����Ʒ������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 GAGE_SAL_AMT                   ����Ʒ�������                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 A_SHR_TRAD_AMT                 A�ɳɽ����                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_MKT_PRESS_IDX_INFO' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         ֤ȯ��˾����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_NAME                        ֤ȯ��˾����                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 IDX_NAME                       ָ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_VAL                        ָ��ֵ                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          7 DATA_WHOL_ID                   ���������Ա�ʶ                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'T1' order by 1;

 *** Query completed. 3 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 COL_001                        ?                              DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 COL_002                        ?                              CV                     8                  ?                       ? X(8)                                                                                                                             ?
          3 COL_003                        ?                              D                      8                 18                       2 -----------------.99                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_KEEP_GUART_RATE' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Keep_GUART_Rate_LLMT           ��Լ���ϱ�������               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 Keep_GUART_Rate_ULMT           ��Լ���ϱ�������               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 ST_RPCHS_AMT                   �����ؽ��                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 CNTR_CNT                       ��Լ����                       D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'vis_ntwk_press_idx_info' order by 1;

 *** Query completed. 10 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 BIZ_TYPE                       ҵ������                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 PRESS_FACTOR                   ѹ������                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 FACTOR_VAL                     ����ȡֵ                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          5 BANKRL_ITP                     �ʽ����뷽                     CV                    12                  ?                       ? X(12)                                                                                                                            ?
          6 BANKRL_RCP                     �ʽ��ڳ���                     CV                    12                  ?                       ? X(12)                                                                                                                            ?
          7 BANKRL_RCP_OVRAL_LOAN_BANKRL   �ʽ��ڳ��������ڳ��ʽ�         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          8 PTY_BTWN_ST_RPCHS_AMT          ���������ؽ��               D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          9 PTY_BTWN_DPST_GAP              ����䱣֤��ȱ��               D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         10 BANKRL_RCP_OVRAL_DPST_GAP      �ʽ��ڳ������屣֤��ȱ��       D                     16                 24                       7 --(17).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'KPI_SEC_OPN_ACCT_VOL_0' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 STAT_DATE                      ͳ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           Ƶ��                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 SEC_EXCH_CDE                   ֤ȯ����������                 CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 ACCT_TYPE                      �˻�����                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          5 STK_INVST_SORT                 ��ƱͶ�������                 CV                     3                  ?                       ? X(3)                                                                                                                             ?
          6 DOM_FORN_INDC                  ���ھ����־                   CV                     2                  ?                       ? X(2)                                                                                                                             ?
          7 INVST_OPN_ACCT_PPDM            Ͷ���߿���Ͻ��                 CV                     2                  ?                       ? X(2)                                                                                                                             ?
          8 IDX_CDE                        ָ�����                       CF                     5                  ?                       ? X(5)                                                                                                                             ?
          9 IDX_VAL                        ָ��ֵ                         D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_ODNR_IDX_QRY_INFO' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           Ƶ��                           CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 IDX_FIELD                      ָ������                       CV                    30                  ?                       ? X(30)                                                                                                                            ?
          4 IDX_TYPE                       ָ������                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 IDX_SORT                       ָ�����                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_CDE                        ָ�����                       CV                    20                  ?                       ? X(20)                                                                                                                            ?
          7 IDX_NAME                       ָ������                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
          8 IDX_VAL                        ָ��ֵ                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          9 CHG_RATE                       �ǵ���                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         10 BOTH_VAL_1                     ��ֵ1                          D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         11 BOTH_VAL_2                     ��ֵ2                          D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         12 STDDEV_SAMP_1                  ��׼��1                        D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         13 STDDEV_SAMP_2                  ��׼��2                        D                     16                 24                       7 --(17).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_KEEP_GUART_RATE_STK_TYPE' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Keep_GUART_Rate_LLMT           ��Լ���ϱ�������               I                      4                  ?                       ? -(10)9                                                                                                                           ?
          3 Keep_GUART_Rate_ULMT           ��Լ���ϱ�������               I                      4                  ?                       ? -(10)9                                                                                                                           ?
          4 STK_TYPE                       ��Ʊ����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 CNTR_CNT                       ��Լ����                       D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_HKST_ACCT_CNDT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 HKST_PSTN_ACCT_VOL             �۹�ͨ�ֲ��˻���               D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 TRAD_ACCT_VOL                  �����˻���                     D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 New_HKST_PSTN_ACCT_VOL         �����۹�ͨ�ֲ��˻���           D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_CNCTR_DGRE_ACCT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 ACCT_HOLD_Rate_LLMT            �˻����б�������               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 ACCT_HOLD_Rate_ULMT            �˻����б�������               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 ACCT_VOL                       �˻���                         D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_UND_PRES_FORC_LQD' order by 1;

 *** Query completed. 10 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 biz_date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 PRESS_VAL                      ѹ������                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          3 st_rpchs_gap_ini               ��֤��ȱ�ڷ���                 D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          4 st_rpchs_gap_tot               ��֤��ȱ�ڷ�ĸ                 D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          5 forc_lqd_act_ini               ǿ��ƽ�ֽ����˻�����           D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 forc_lqd_act_tot               ǿ��ƽ�ֽ����˻���ĸ           D                     16                 30                       0 --(29)9.                                                                                                                         ?
          7 forc_lqd_nbr_ini               ǿ��ƽ�ֽ���������             D                     16                 30                       0 --(29)9.                                                                                                                         ?
          8 forc_lqd_nbr_TOT               ǿ��ƽ�ֽ�������ĸ             D                     16                 30                       0 --(29)9.                                                                                                                         ?
          9 forc_lqd_val_ini               ǿ��ƽ�ֽ��׽�����           D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
         10 forc_lqd_val_TOT               ǿ��ƽ�ֽ��׽���ĸ           D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_HGT_TRAD_AND_LMT_USE_CNDT' order by 1;

 *** Query completed. 11 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 HGT_BIZ_Sort_CDE               ����ͨҵ��������             CF                     3                  ?                       ? X(3)                                                                                                                             ?
          3 HGT_BIZ_Sort                   ����ͨҵ�����                 CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 Buy_AMT                        ������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SAL_AMT                        �������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 NBUY_AMT                       ��������                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 TRAD_AMT                       �ɽ����                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 A_And_H_SHR_TRAD_AMT           A+H�ɳɽ���                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 ALRD_Used_LMT                  ���ö��                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 AVAIL_LMT                      ���ö��                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 LMT_BAL                        ������                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_UND_PRES_FORC_LQD' order by 1;

 *** Query completed. 10 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 biz_date                       ?                              DA                     4                  ?                       ? YY/MM/DD                                                                                                                         ?
          2 PRESS_VAL                      ?                              D                      8                 18                       2 -----------------.99                                                                                                             ?
          3 st_rpchs_gap_ini               ?                              D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          4 st_rpchs_gap_tot               ?                              D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          5 forc_lqd_act_ini               ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 forc_lqd_act_tot               ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          7 forc_lqd_nbr_ini               ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          8 forc_lqd_nbr_TOT               ?                              D                     16                 30                       0 --(29)9.                                                                                                                         ?
          9 forc_lqd_val_ini               ?                              D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
         10 forc_lqd_val_TOT               ?                              D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_IDX_WEIGHT' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 Weight                         Ȩ��                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SUPV_IDX_CDE                   �ϼ�ָ�����                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 HRRC                           �㼶                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 Typ                            ����                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 S_Date                         ��ʼ����                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 E_Date                         ��������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_UND_PRES_KEEP_GUART_RATE' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 biz_date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 PRESS_VAL                      ѹ������                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          3 cap_type                       �ɱ�����                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 rate_llmt                      ��Լ���ϱ�������               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          5 rate_ulmt                      ��Լ���ϱ�������               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 st_rpchs_nbr                   �����ر���                     D                     16                 30                       0 --(29)9.                                                                                                                         ?
          7 st_rpchs_sec_mkt_val           �����ؽ��                     D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_FORC_LQD_INFO' order by 1;

 *** Query completed. 12 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 biz_date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 cap_type                       �ɱ�����                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PRESS_VAL                      ѹ������                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          4 st_rpchs_plg_gap               ��֤��ȱ��                     D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          5 init_cntr_nbr_ini              ǿ�ƽ��ױ�������               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 init_cntr_nbr_tot              ǿ�ƽ��ױ�����ĸ               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          7 itp_sec_acct_ini               ��������Ѻ�˻�������           D                     16                 30                       0 --(29)9.                                                                                                                         ?
          8 itp_sec_acct_tot               ��������Ѻ�˻�����ĸ           D                     16                 30                       0 --(29)9.                                                                                                                         ?
          9 forc_lqd_nbr_ini               ǿ��ƽ�ֽ���������             D                     16                 30                       0 --(29)9.                                                                                                                         ?
         10 forc_lqd_nbr_TOT               ǿ��ƽ�ֽ�������ĸ             D                     16                 30                       0 --(29)9.                                                                                                                         ?
         11 forc_lqd_val_ini               ǿ��ƽ�ֽ��׽�����           D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
         12 forc_lqd_val_TOT               ǿ��ƽ�ֽ��׽���ĸ           D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'KPI_TIME_SERIES_0' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 Stat_Date                      ͳ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           Ƶ��                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_CDE                        ָ�����                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_VAL                        ָ��ֵ                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_RPCHS_SCALE_INVST' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       ҵ������                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 STK_INVST_Sort                 ��ƱͶ�������                 CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 STK_INVST_Name                 ��ƱͶ��������                 CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 ST_RPCHS_AMT                   �����ؽ��                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-


.quit
 *** You are now logged off from the DBC.
 *** Exiting BTEQ...
 *** RC (return code) = 0 
