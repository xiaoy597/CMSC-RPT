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
          1 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 IDX_Name                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 ENTR_INDC                      录入标志                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          4 IDX_TB_Name                    指标表名                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_VIEW                       指标视图名                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_S_CRIPT                    指标脚本名                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 FREQ                           频度                           CV                    50                  ?                       ? X(50)                                                                                                                            ?
          8 RMAK                           备注                           CV                    50                  ?                       ? X(50)                                                                                                                            ?

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
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 UND_SEC_CDE                    标的证券代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 UND_SEC_Name                   标的证券名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 WAV_Rate                       波动率                         D                      8                 10                       7 ----.9999999                                                                                                                     ?
          5 PE                             市盈率                         D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 STK_PRC_CHG_RATE               股价涨跌幅                     D                      8                 10                       7 ----.9999999                                                                                                                     ?
          7 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 FIN_BAL_ICRS                   融资余额增幅                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          9 FIN_BUY_OCUP_TRAD_AMT_RATE     融资买入额占成交额之比         D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TCFG_RMS_IDX_INFO' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 IDX_Name                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 ENTR_INDC                      录入标志                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          4 IDX_TB_Name                    指标表名                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_VIEW                       指标视图名                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_S_CRIPT                    指标脚本名                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 FREQ                           频度                           CV                    50                  ?                       ? X(50)                                                                                                                            ?
          8 RMAK                           备注                           CV                    50                  ?                       ? X(50)                                                                                                                            ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TFCT_SCEDF' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 EDF                            EDF                            D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'ISD_PRFT_SPVS_RPT' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         证券公司代码                   CV                     8                  ?                       ? X(8)                                                                                                                             ?
          2 RPT_DATE                       报表日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_NBR                        指标序号                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 IDX_NAME                       指标名称                       CV                    60                  ?                       ? X(60)                                                                                                                            ?
          5 LINE_NUM                       行次                           D                      2                  3                       0 ---9.                                                                                                                            ?
          6 CUR_PRD_AMT                    本期金额                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          7 CUR_Y_ACM_AMT                  本年累计金额                   D                      8                 18                       2 -----------------.99                                                                                                             ?
          8 BIZ_MTHL                       业务月度                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          9 DATA_DATE                      数据日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

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
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 IDX_HRRC                       指标层级                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 IDX_VAL                        指标值                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          6 CALC_DATE                      计算日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 DATA_WHOL_ID                   数据完整性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_IDX_SYS_CTR' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 FST_LVL_CDE                    一级编码                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          2 FST_LVL_NAME                   一级名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 SCND_LVL_CDE                   二级编码                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          4 SCND_LVL_NAME                  二级名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 THIRD_LVL_CDE                  三级编码                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          6 THIRD_LVL_NAME                 三级名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 FR_LVL_CDE                     四级编码                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          8 FR_LVL_NAME                    四级名称                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
          9 FREQ                           频度                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
         10 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         11 DIMN_CDE                       维度代码                       CV                    20                  ?                       ? X(20)                                                                                                                            ?
         12 DIMN_NAME                      维度名称                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
         13 IDX_VAL                        指标值                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'FCT_BOND_YLD_INFO' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        指标代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 TLMT                           期限                           CF                     4                  ?                       ? X(4)                                                                                                                             ?
          5 MAT_YLD                        到期收益率                     D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_CLCT_IDX_CORR_CDE' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        指标代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 WDI_CDE                        万得代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 FREQ                           频度                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 TB_ID                          表标识                         CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_CNCTR_DGRE_SEC' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 UND_SEC_CDE                    标的证券代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 UND_SEC_Name                   标的证券名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 RNKG                           排名                           I                      4                  ?                       ? -(10)9                                                                                                                           ?
          5 GUART_MKT_VAL_PERCN            担保市值占比                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'KPI_TIME_SERIES' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 Stat_Date                      统计日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           频度                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_VAL                        指标值                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SC_SMT_INFO' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 MNTNC_GUART_Rate               维持担保比例                   D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          5 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 FIN_BAL_QOQ_ICRS               融资余额_环比增幅              D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          7 SEC_LN_BAL                     融券余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 SEC_LN_BAL_QOQ_ICRS            融券余额_环比增幅              D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          9 SMT_OCUP_Net_CAP_Rate          融资融券占净资本比例           D                     16                 20                       7 --(13).9(7)                                                                                                                      ?

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
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 MNTNC_GUART_Rate_LLMT          维持担保比例下限               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 MNTNC_GUART_Rate_ULMT          维持担保比例上限               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SEC_LN_BAL                     融券余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_BOND_DFLT_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 PPDM_CDE                       辖区代码                       CF                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PPDM_Name                      辖区名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 BOND_DFLT_CNT                  债券违约只数                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 BOND_PNLT                      债券违约金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 BOND_PNLT_PERCN                债券违约金额占比               D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SC_FINA_INFO' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_Name                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_VAL                        指标值                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 CALC_Date                      计算日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          8 Data_WHOL_Id                   数据完整性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

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
          1 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 Weight                         权重                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SUPV_IDX_CDE                   上级指标编码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 HRRC                           层级                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 Typ                            类型                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 S_Date                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 E_Date                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SC_SMT_INFO' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 MNTNC_GUART_Rate               维持担保比例                   D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          5 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 FIN_BAL_QOQ_ICRS               融资余额_环比增幅              D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          7 SEC_LN_BAL                     融券余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 SEC_LN_BAL_QOQ_ICRS            融券余额_环比增幅              D                     16                 20                       7 --(13).9(7)                                                                                                                      ?
          9 SMT_OCUP_Net_CAP_Rate          融资融券占净资本比例           D                     16                 20                       7 --(13).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_IDX_WEIGHT_BAK_0907' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 Weight                         权重                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SUPV_IDX_CDE                   上级指标编码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 HRRC                           层级                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 Typ                            类型                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 S_Date                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 E_Date                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SC_ST_RPCHS_INFO' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 ST_RPCHS_AMT                   待购回金额                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 ST_RPCHS_A_SHR_MKT_VAL         待购回A股市值                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 CUPN                           孳息                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 Keep_GUART_Rate                履约保障比例                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_TRAD_CNT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 INIT_TRAD_CNT                  初始交易笔数                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 RPCHS_TRAD_CNT                 购回交易笔数                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 ADD_PLG_CNT                    补充质押笔数                   D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'ISD_ASET_LBLT_SPVS_RPT' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         证券公司代码                   CV                     8                  ?                       ? X(8)                                                                                                                             ?
          2 RPT_DATE                       报表日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_NBR                        指标序号                       CV                     3                  ?                       ? X(3)                                                                                                                             ?
          4 IDX_NAME                       指标名称                       CV                    60                  ?                       ? X(60)                                                                                                                            ?
          5 LINE_NUM                       行次                           D                      2                  3                       0 ---9.                                                                                                                            ?
          6 END_BAL                        期末余额                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          7 Y_START_BAL                    年初余额                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          8 BIZ_MTHL                       业务月度                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          9 DATA_DATE                      数据日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_MACRO_SOK_IDX' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 IDX_HRRC                       指标层级                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 IDX_VAL                        指标值                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          6 CALC_DATE                      计算日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 DATA_WHOL_ID                   数据完整性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_BIZ_OVRAL_OPRT_CNDT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SEC_LN_BAL                     融券余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 MNTNC_GUART_Rate               维持担保比例                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_STK_PLG_TRAD_AMT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Board_CDE                      板块代码                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 Board_Name                     板块名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 INIT_TRAD_AMT                  初始交易金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 RPCHS_TRAD_AMT                 购回交易金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 PLG_Rate                       质押率                         D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TKPI_TIME_SERIES' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 STAT_DATE                      统计日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           频度                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_VAL                        指标值                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TFCT_BOND_YLD_INFO' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        指标代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_Name                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 TLMT                           期限                           CF                     4                  ?                       ? X(4)                                                                                                                             ?
          5 MAT_YLD                        到期收益率                     D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_HGT_TRAD_AND_LMT_USE_CNDT' order by 1;

 *** Query completed. 11 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 HGT_BIZ_Sort_CDE               沪港通业务类别代码             CF                     3                  ?                       ? X(3)                                                                                                                             ?
          3 HGT_BIZ_Sort                   沪港通业务类别                 CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 Buy_AMT                        买入金额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SAL_AMT                        卖出金额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 NBUY_AMT                       净买入金额                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 TRAD_AMT                       成交金额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 A_And_H_SHR_TRAD_AMT           A+H股成交额                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 ALRD_Used_LMT                  已用额度                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 AVAIL_LMT                      可用额度                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 LMT_BAL                        额度余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'KPI_TIME_SERIES_HIS' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 STAT_DATE                      统计日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           频度                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_VAL                        指标值                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CONTROL_TABLE' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 Data_Date                      数据日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Job_Name                       作业名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 Min_Date                       最小日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          4 Max_Date                       最大日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 Ava_Sign                       有效标识                       CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'ISD_SC_RISK_MONIT_SPVS_RPT' order by 1;

 *** Query completed. 12 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         证券公司代码                   CV                     8                  ?                       ? X(8)                                                                                                                             ?
          2 RPT_DATE                       报表日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_NBR                        指标序号                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 IDX_NAME                       指标名称                       CV                    60                  ?                       ? X(60)                                                                                                                            ?
          5 LINE_NUM                       行次                           D                      2                  3                       0 ---9.                                                                                                                            ?
          6 BEG_VAL                        期初                           D                      8                 18                       2 -----------------.99                                                                                                             ?
          7 END_VAL                        期末                           D                      8                 18                       2 -----------------.99                                                                                                             ?
          8 ALT_STD                        预警标准                       CV                    21                  ?                       ? X(21)                                                                                                                            ?
          9 SPVS_STD                       监管标准                       CV                    20                  ?                       ? X(20)                                                                                                                            ?
         10 RMAK                           备注                           CV                   256                  ?                       ? X(256)                                                                                                                           ?
         11 BIZ_MTHL                       业务月度                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         12 DATA_DATE                      数据日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'ISD_STK_FD_BD_INV_BIZ_2_RPT' order by 1;

 *** Query completed. 16 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         证券公司代码                   CV                     8                  ?                       ? X(8)                                                                                                                             ?
          2 RPT_DATE                       报表日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_NBR                        指标序号                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 IDX_NAME                       指标名称                       CV                    60                  ?                       ? X(60)                                                                                                                            ?
          5 TRDN_FINAC_ASET_HOLD_COST      交易性金融资产持有成本         D                      8                 18                       2 -----------------.99                                                                                                             ?
          6 TRDN_FINAC_ASET_FAJ_VAL_CHG    交易性金融资产公允价值变动     D                      8                 18                       2 -----------------.99                                                                                                             ?
          7 FINAC_ASET_HOLD_COST           可供出售金融资产持有成本       D                      8                 18                       2 -----------------.99                                                                                                             ?
          8 FINAC_ASET_FAJ_VAL_CHG         可供出售金融资产公允价值变动   D                      8                 18                       2 -----------------.99                                                                                                             ?
          9 FINAC_ASET_OTH                 可供出售金融资产其他           D                      8                 18                       2 -----------------.99                                                                                                             ?
         10 HOLD_TO_MAT_INVSMT_COST        持有至到期投资成本             D                      8                 18                       2 -----------------.99                                                                                                             ?
         11 HOLD_TO_MAT_INVSMT_OTH         持有至到期投资其他             D                      8                 18                       2 -----------------.99                                                                                                             ?
         12 BIZ_MTHL                       业务月度                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         13 DATA_DATE                      数据日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         14 DATA_TIME                      数据时间                       TS                    26                  ?                       6 YYYYMMDDBHH:MI:SS                                                                                                                ?
         15 S_DATE                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         16 E_DATE                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_STK_PLG_RPCHS_SCALE_IDSTR' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDSTR_CDE                      行业代码                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 IDSTR_Name                     行业名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 ST_RPCHS_AMT                   待购回金额                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 NEGT_MKT_VAL_PERCN             流通市值占比                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 RNKG                           排名                           I                      4                  ?                       ? -(10)9                                                                                                                           ?
          7 RNKG_QOQ_Vary                  排名环比变化                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'ISD_ASET_DECIV_PREP_RPT' order by 1;

 *** Query completed. 15 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         证券公司代码                   CV                     8                  ?                       ? X(8)                                                                                                                             ?
          2 RPT_DATE                       报表日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_NBR                        指标序号                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 IDX_NAME                       指标名称                       CV                    60                  ?                       ? X(60)                                                                                                                            ?
          5 LINE_NO                        行次                           D                      2                  3                       0 ---9.                                                                                                                            ?
          6 Y_START_BAL                    年初余额                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          7 DEP_RESE_AMT                   本期计提额                     D                      8                 18                       2 -----------------.99                                                                                                             ?
          8 REVS_DEC                       转回本期减少数                 D                      8                 18                       2 -----------------.99                                                                                                             ?
          9 WRITE_OFF_DEC                  转销本期减少数                 D                      8                 18                       2 -----------------.99                                                                                                             ?
         10 END_BAL                        期末余额                       D                      8                 18                       2 -----------------.99                                                                                                             ?
         11 BIZ_MTHL                       业务月度                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         12 DATA_DATE                      数据日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         13 DATA_TIME                      数据时间                       TS                    26                  ?                       6 YYYYMMDDBHH:MI:SS                                                                                                                ?
         14 S_DATE                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         15 E_DATE                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_FORC_LQD_CNDT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 BLW_LQD_LINE_ACCT_VOL          低于平仓线的账户数             D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 BANKRL_GAP                     资金缺口                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 FORC_LQD_AMT                   强制平仓金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_CRDT_SEC_ACCT_VOL_VARY' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CRDT_ACCT_TOT_VOL              信用账户总数                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 NOPEN_CRDT_ACCT_VOL            新开信用账户数                 D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 PTC_SMT_BIZ_ACCT_VOL_Rate      参与融资融券业务的账户数比例   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_INDX_FUTRS_SLUMP_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        指数代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_Name                       指数名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 Slump_CNT                      急跌次数                       D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 SLUMP_RANG                     急跌幅度                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 PT                             点位                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TCFG_SYS_IMPOT_SC' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 SYS_IMPOT_ID                   系统重要性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          4 S_Date                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 E_Date                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'FCT_SCEDF' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 EDF                            EDF                            D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VT_MID_CN_IDX_INFO' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CD                         指数代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_Name                       指数名称                       CV                   200                  ?                       ? X(200)                                                                                                                           ?
          4 CLS_PRC                        收盘点数                       D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_STK_PLG_RPCHS_SCALE_SC' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 MANG_CLSF                      经营分类                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 CAP_Type                       股本类型                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 ST_RPCHS_AMT                   待购回金额                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 ST_RPCHS_AMT_PERCN             待购回金额占比                 D                      8                 10                       7 ----.9999999                                                                                                                     ?
          8 TRAD_CNT                       交易笔数                       D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_AVG_KEP_GUART_RATE' order by 1;

 *** Query completed. 2 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Keep_GUART_Rate                履约保障比例                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

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
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 MANG_CLSF                      经营分类                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 CAP_Type                       股本类型                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 ST_RPCHS_AMT                   待购回金额                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 ST_RPCHS_AMT_PERCN             待购回金额占比                 D                      8                 10                       7 ----.9999999                                                                                                                     ?
          8 TRAD_CNT                       交易笔数                       D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_UND_SEC_RISK_ANAL' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 UND_SEC_CDE                    标的证券代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 UND_SEC_Name                   标的证券名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 WAV_Rate                       波动率                         D                      8                 10                       7 ----.9999999                                                                                                                     ?
          5 PE                             市盈率                         D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 STK_PRC_CHG_RATE               股价涨跌幅                     D                      8                 10                       7 ----.9999999                                                                                                                     ?
          7 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 FIN_BAL_ICRS                   融资余额增幅                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          9 FIN_BUY_OCUP_TRAD_AMT_RATE     融资买入额占成交额之比         D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'BOND_333' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       交易日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 EXCH                           交易所                         CV                     6                  ?                       ? X(6)                                                                                                                             ?
          3 IDX_CDE                        债券代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_NAME                       债券名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 BOND_TYPE                      债券类型                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 VOL                            发行规模                       D                      8                 18                       0 ------------------9.                                                                                                             ?
          7 MAT_YLD                        收盘价到期收益率               D                     16                 30                       6 --(24).9(6)                                                                                                                      ?
          8 DUR                            久期                           D                     16                 30                       6 --(24).9(6)                                                                                                                      ?
          9 ISS_DATE                       发行起始日期                   DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         10 DEL_DATE                       到期日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         11 NEW_GRADE                      信用评级                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
         12 ISSUER                         发行人名称（公司名称）         CV                   100                  ?                       ? X(100)                                                                                                                           ?
         13 ISSUER_ADD                     发行人所在地（省份首选，城市次 CV                    50                  ?                       ? X(50)                                                                                                                            ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_IDX_SYS_RCS' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 FST_LVL_CDE                    一级编码                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          2 FST_LVL_NAME                   一级名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 SCND_LVL_CDE                   二级编码                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          4 SCND_LVL_NAME                  二级名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 THIRD_LVL_CDE                  三级编码                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          6 THIRD_LVL_NAME                 三级名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 FR_LVL_CDE                     四级编码                       CV                    16                  ?                       ? X(16)                                                                                                                            ?
          8 FR_LVL_NAME                    四级名称                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
          9 FREQ                           频度                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
         10 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         11 DIMN_CDE                       维度代码                       CV                    20                  ?                       ? X(20)                                                                                                                            ?
         12 DIMN_NAME                      维度名称                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
         13 IDX_VAL                        指标值                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

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
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SEC_LN_BAL                     融券余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 MNTNC_GUART_Rate               维持担保比例                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'FCT_RDM_PRESS' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        指标代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_Name                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 IDX_VAL                        指标值                         D                     16                 20                       7 --(13).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TRPT_IO_EQUITY_PLG_BIZ_SCALE' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IN_OR_OUT_MKT                  场内场外                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PLG_SHRS                       质押股数                       D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 MKT_VAL_PERCN                  市值占比                       D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_DATA_PREP_CNDT' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 MIN_BIZ_DATE                   最小业务日期                   DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 MAX_BIZ_DATE                   最大业务日期                   DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          3 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_NAME                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 DATA_WHOL_ID                   数据完整性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 DSCR                           说明                           CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 QRY_DATE                       查询日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_UND_PRES_MNTNC_GUART' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 PRESS_VAL                      压力因子                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          3 MNTNC_GUART_RATE_LLMT          维持担保比例下限               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          4 MNTNC_GUART_RATE_ULMT          维持担保比例上限               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          5 CUST_CNT                       账户数                         D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 FIN_BAL                        融资余额                       D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          7 SEC_LN_BAL                     融券余额                       D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_GRTH_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF                           分类                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 SEC_LN_BAL                     融券余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 FIN_BAL_GRTH                   融资余额增速                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 SEC_LN_BAL_GRTH                融券余额增速                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

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
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 HKST_PSTN_ACCT_VOL             港股通持仓账户数               D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 TRAD_ACCT_VOL                  交易账户数                     D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 New_HKST_PSTN_ACCT_VOL         新增港股通持仓账户数           D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'MID_DOM_IDX_INFO_0' order by 1;

 *** Query completed. 21 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        指数代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       指数名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 OPN_POINT                      开盘点数                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 PRE_CLS_POINT                  前收盘点数                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 CLS_POINT                      收盘点数                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 MAX_POINT                      最高点数                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 MIN_POINT                      最低点数                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 D_CHG_RATE                     日涨跌幅                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 Y_CHG_RATE                     年涨跌幅                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 RETN                           对数收益率                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 TRAD_AMT                       成交金额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 TRAD_QTT                       成交量                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 TCAP                           总股本                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 NEGT_CAP                       流通股本                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 TOT_MKT_VAL                    总市值                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 NEGT_MKT_VAL                   流通市值                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 MKT_VAL_TNOV_RATE              市值换手率                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         19 TRAD_QTT_TNOV_RATE             成交量换手率                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         20 AVG_STK_PRC                    平均股价                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         21 DATA_SRC_TYPE                  数据源类型                     CV                    12                  ?                       ? X(12)                                                                                                                            ?

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
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 MNTNC_GUART_Rate_LLMT          维持担保比例下限               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 MNTNC_GUART_Rate_ULMT          维持担保比例上限               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SEC_LN_BAL                     融券余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_GRTH_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF                           分类                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 SEC_LN_BAL                     融券余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 FIN_BAL_GRTH                   融资余额增速                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 SEC_LN_BAL_GRTH                融券余额增速                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TRPT_HKST_INVST_NBUY_CNDT' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF_CDE                       分类代码                       CF                     2                  ?                       ? X(2)                                                                                                                             ?
          3 CLSF_Name                      分类名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 CNT                            只数                           D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 CNT_PERCN                      只数占比                       D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 A_SHR_NBUY_AMT                 A股净买入金额                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 HK_STK_NBUY_AMT                港股净买入金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_RPCHS_SCALE_IDSTR' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDSTR_CDE                      行业代码                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 IDSTR_Name                     行业名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 ST_RPCHS_AMT                   待购回金额                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 NEGT_MKT_VAL_PERCN             流通市值占比                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 RNKG                           排名                           I                      4                  ?                       ? -(10)9                                                                                                                           ?
          7 RNKG_QOQ_Vary                  排名环比变化                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TFCT_SC_RISK_INFO_M' order by 1;

 *** Query completed. 24 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 Stat_Date                      统计日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 T1_M_BIZ_ENING                 T-1月营业收入                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 T2_M_BIZ_ENING                 T-2月营业收入                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 M3_ENING_AVG_VAL               三个月收入平均值               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 OPRT_Risk_CAP_REQR             操作风险资本要求               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 TRDN_BOND_INVSMT               交易性债券投资                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 TRDN_EQUT_INVSMT               交易性权益工具投资             D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 DERI_FINAC_Aset                衍生金融资产                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 AVAIL_Sell_FINAC_Aset          可供出售金融资产               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 MKT_Risk_CAP_REQR_TOT          市场风险资本要求合计           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 RM_CAP_F_SALE                  买入返售金融资产               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 AR_FOA                         应收账款                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 AR_FOA_EXCD_CNTR_PRD           应收账款_超过合同期            D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 AR_FOA_CNTR_PRD_INR            应收账款_合同期内              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 CRDT_Risk_WETN_Aset_TOT        信用风险加权资产合计           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 TOT_Risk_WETN_Aset             总风险加权资产                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         19 CAP_LVRG_RT                    资本杠杆率                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         20 CAP_ABDT                       资本充裕度                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         21 AGT_TRAD_SEC_MONEY             代买卖证券款                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         22 BE_ENTRU_BANKRL                受托资金                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         23 CUR_AST                        流动资产                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         24 CUR_LIB                        流动负债                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_MODE_REPO_PLG_RATE' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 RATE_CLSF                      比例分类                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 PLG_Rate_LLMT                  质押比例下限                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 PLG_Rate_ULMT                  质押比例上限                   D                      8                 10                       7 ----.9999999                                                                                                                     ?
          5 ACCT_VOL                       账户数                         D                     16                 24                       0 --(23)9.                                                                                                                         ?
          6 ST_RPCHS_AMT                   待购回金额                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_ODNR_IDX_QRY_INFO_BAK' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           频度                           CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 IDX_FIELD                      指标领域                       CV                    30                  ?                       ? X(30)                                                                                                                            ?
          4 IDX_TYPE                       指标类型                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 IDX_SORT                       指标类别                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_CDE                        指标编码                       CV                    20                  ?                       ? X(20)                                                                                                                            ?
          7 IDX_NAME                       指标名称                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
          8 IDX_VAL                        指标值                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          9 CHG_RATE                       涨跌幅                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         10 BOTH_VAL_1                     均值1                          D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         11 BOTH_VAL_2                     均值2                          D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         12 STDDEV_SAMP_1                  标准差1                        D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         13 STDDEV_SAMP_2                  标准差2                        D                     16                 24                       7 --(17).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_MNTNC_GUART_RATE_T' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 MNTNC_GUART_Rate_LLMT          维持担保比例下限               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 MNTNC_GUART_Rate_ULMT          维持担保比例上限               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SEC_LN_BAL                     融券余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_IDX_WEIGHT_BAK' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 Weight                         权重                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SUPV_IDX_CDE                   上级指标编码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 HRRC                           层级                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 Typ                            类型                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 S_Date                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 E_Date                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

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
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Board_CDE                      板块代码                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 Board_Name                     板块名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 GUART_MKT_VAL                  担保市值                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 GUART_MKT_VAL_PERCN            担保市值占比                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_CRDT_SEC_ACCT_VOL_VARY' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CRDT_ACCT_TOT_VOL              信用账户总数                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 NOPEN_CRDT_ACCT_VOL            新开信用账户数                 D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 PTC_SMT_BIZ_ACCT_VOL_Rate      参与融资融券业务的账户数比例   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'RPT_HKST_INVST_NBUY_CNDT' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF_CDE                       分类代码                       CF                     2                  ?                       ? X(2)                                                                                                                             ?
          3 CLSF_Name                      分类名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 CNT                            只数                           D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 CNT_PERCN                      只数占比                       D                      8                 10                       7 ----.9999999                                                                                                                     ?
          6 A_SHR_NBUY_AMT                 A股净买入金额                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 HK_STK_NBUY_AMT                港股净买入金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_RMS_IDX_INFO' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 IDX_Name                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 ENTR_INDC                      录入标志                       CF                     1                  ?                       ? X(1)                                                                                                                             ?
          4 IDX_TB_Name                    指标表名                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_VIEW                       指标视图名                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_S_CRIPT                    指标脚本名                     CV                    50                  ?                       ? X(50)                                                                                                                            ?
          7 FREQ                           频度                           CV                    50                  ?                       ? X(50)                                                                                                                            ?
          8 RMAK                           备注                           CV                    50                  ?                       ? X(50)                                                                                                                            ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_STK_INDX_FUTRS_SLUMP_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IDX_CDE                        指数代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_Name                       指数名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 Slump_CNT                      急跌次数                       D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 SLUMP_RANG                     急跌幅度                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 PT                             点位                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_GUART_SEC_BOARD_DISTR' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Board_CDE                      板块代码                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 Board_Name                     板块名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 GUART_MKT_VAL                  担保市值                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 GUART_MKT_VAL_PERCN            担保市值占比                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SC_FINA_RISK_IDX_SYS' order by 1;

 *** Query completed. 21 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 CALC_Date                      计算日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 Data_WHOL_Id                   数据完整性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 T2_M_BIZ_ENING                 T-2月营业收入                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 T1_M_BIZ_ENING                 T-1月营业收入                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 T_M_BIZ_ENING                  T月营业收入                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 M3_ENING_AVG_VAL               三个月收入平均值               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 OPRT_Risk_CAP_REQR             操作风险资本要求               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 TRDN_BOND_INVSMT               交易性债券投资                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 TRDN_EQUT_INVSMT               交易性权益工具投资             D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 DERI_FINAC_Aset                衍生金融资产                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 AVAIL_Sell_FINAC_Aset          可供出售金融资产               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 MKT_Risk_CAP_REQR_TOT          市场风险资本要求合计           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 RM_CAP_F_SALE                  买入返售金融资产               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 AR_FOA                         应收账款                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 AR_FOA_CNTR_PRD_INR            应收账款_合同期内              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         19 AR_FOA_EXCD_CNTR_PRD           应收账款_超过合同期            D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         20 CRDT_Risk_WETN_Aset_TOT        信用风险加权资产合计           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         21 TOT_Risk_WETN_Aset             总风险加权资产                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_TRAD_CNDT' order by 1;

 *** Query completed. 17 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF                           分类                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 FIN_NBUY_AMT                   融资净买入金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 FIN_BUY_AMT                    融资买入金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SLCPS_PAYBK_AMT                卖券还款金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 DRCT_PAYBK_AMT                 直接还款金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 FIN_RP_AMT                     融资偿还金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 FIN_LQD_AMT                    融资平仓金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 SEC_LN_SAL_AMT                 融券卖出金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 BUY_STK_AS_VCR_AMT             买券还券金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 AS_VCR_TRANS_AMT               还券划转金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 SEC_LN_RP_AMT                  融券偿还金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 SEC_LN_Net_SAL_AMT             融券净卖出金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 SEC_LN_LQD_AMT                 融券平仓金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 GAGE_BUY_AMT                   担保品买入金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 GAGE_SAL_AMT                   担保品卖出金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 A_SHR_TRAD_AMT                 A股成交金额                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'KPI_SEC_TRAD_HOLD_ACCT_VOL_0' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 STAT_DATE                      统计日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           频度                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 SEC_EXCH_CDE                   证券交易所代码                 CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 ACCT_TYPE                      账户类型                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          5 STK_INVST_SORT                 股票投资者类别                 CV                     3                  ?                       ? X(3)                                                                                                                             ?
          6 IDX_CDE                        指标编码                       CF                     5                  ?                       ? X(5)                                                                                                                             ?
          7 IDX_VAL                        指标值                         D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CLCT_IDX_CORR_CDE_TB' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        指标代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 WDI_CDE                        万得代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_NAME                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 FREQ                           频度                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 TB_ID                          表标识                         CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_BIZ_OVRAL_OPRT_CNDT_temp1' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FIN_BAL                        融资余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SEC_LN_BAL                     融券余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 MNTNC_GUART_Rate               维持担保比例                   D                      8                 10                       7 ----.9999999                                                                                                                     ?

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
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Board_CDE                      板块代码                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 Board_Name                     板块名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 INIT_TRAD_AMT                  初始交易金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 RPCHS_TRAD_AMT                 购回交易金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 PLG_Rate                       质押率                         D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SC_FINA_INFO' order by 1;

 *** Query completed. 8 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_Name                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_VAL                        指标值                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 CALC_Date                      计算日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          8 Data_WHOL_Id                   数据完整性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_SEC_CO_SC_CD_RLTN' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SEC_CDE                        证券代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 SEC_EXCH_CDE                   证券交易所代码                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 S_Date                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 E_Date                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_CORLT_RMS_IDX' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        指标代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 IDX_NAME                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 CORLT_RMS_IDX_CDE              相关风险指标代码               CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 CORLT_RMS_IDX_NAME             相关风险指标名称               CV                   500                  ?                       ? X(500)                                                                                                                           ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'RPT_IO_EQUITY_PLG_BIZ_SCALE' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 IN_OR_OUT_MKT                  场内场外                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PLG_SHRS                       质押股数                       D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 MKT_VAL_PERCN                  市值占比                       D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'FCT_SC_RISK_INFO_M' order by 1;

 *** Query completed. 24 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 STAT_DATE                      统计日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_NAME                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 T1_M_BIZ_ENING                 T-1月营业收入                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 T2_M_BIZ_ENING                 T-2月营业收入                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 M3_ENING_AVG_VAL               三个月收入平均值               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 OPRT_RISK_CAP_REQR             操作风险资本要求               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 TRDN_BOND_INVSMT               交易性债券投资                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 TRDN_EQUT_INVSMT               交易性权益工具投资             D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 DERI_FINAC_ASET                衍生金融资产                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 AVAIL_SELL_FINAC_ASET          可供出售金融资产               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 MKT_RISK_CAP_REQR_TOT          市场风险资本要求合计           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 RM_CAP_F_SALE                  买入返售金融资产               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 AR_FOA                         应收账款                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 AR_FOA_EXCD_CNTR_PRD           应收账款_超过合同期            D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 AR_FOA_CNTR_PRD_INR            应收账款_合同期内              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 CRDT_RISK_WETN_ASET_TOT        信用风险加权资产合计           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 TOT_RISK_WETN_ASET             总风险加权资产                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         19 CAP_LVRG_RT                    资本杠杆率                     D                      8                 10                       7 ----.9999999                                                                                                                     ?
         20 CAP_ABDT                       资本充裕度                     D                      8                 10                       7 ----.9999999                                                                                                                     ?
         21 AGT_TRAD_SEC_MONEY             代买卖证券款                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         22 BE_ENTRU_BANKRL                受托资金                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         23 CUR_AST                        流动资产                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         24 CUR_LIB                        流动负债                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'XVIS_SC_FINA_RISK_IDX_SYS' order by 1;

 *** Query completed. 10 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          5 IDX_Name                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_CLSF                       指标分类                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          7 IDX_VAL                        指标值                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 IDX_VAL_QOQ_Vary               指标值环比变化                 D                      8                 10                       7 ----.9999999                                                                                                                     ?
          9 CALC_Date                      计算日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
         10 Data_WHOL_Id                   数据完整性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_SMT_CNCTR_DGRE' order by 1;

 *** Query completed. 2 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SEC_CNCTR_DGRE                 证券集中度                     D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TVIS_BOND_DFLT_CNDT' order by 1;

 *** Query completed. 6 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 PPDM_CDE                       辖区代码                       CF                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PPDM_Name                      辖区名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 BOND_DFLT_CNT                  债券违约只数                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
          5 BOND_PNLT                      债券违约金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 BOND_PNLT_PERCN                债券违约金额占比               D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'TCFG_SEC_CO_SC_CD_RLTN' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SEC_CDE                        证券代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 SEC_EXCH_CDE                   证券交易所代码                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 S_Date                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 E_Date                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_FORC_LQD_CNDT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 BLW_LQD_LINE_ACCT_VOL          低于平仓线的账户数             D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 BANKRL_GAP                     资金缺口                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 FORC_LQD_AMT                   强制平仓金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_TRAD_CNDT20160510' order by 1;

 *** Query completed. 19 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF                           分类                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 FIN_NBUY_AMT                   融资净买入金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 FIN_Buy_AMT                    融资买入金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SLCPS_PAYBK_AMT                卖券还款金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 DRCT_PAYBK_AMT                 直接还款金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 FIN_RP_AMT                     融资偿还金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 FIN_LQD_AMT                    融资平仓金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 SEC_LN_Net_SAL_VOL             融券净卖出数量                 D                     16                 24                       0 --(23)9.                                                                                                                         ?
         10 SEC_LN_SAL_VOL                 融券卖出数量                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
         11 SEC_LN_SAL_AMT                 融券卖出金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 BUY_STK_AS_VCR_VOL             买券还券数量                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
         13 DRCT_AS_VCR_VOL                直接还券数量                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
         14 SEC_LN_RP_VOL                  融券偿还数量                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
         15 BUY_STK_AS_VCR_AMT             买券还券金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 DRCT_AS_VCR_AMT                直接还券金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 SEC_LN_RP_AMT                  融券偿还金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 SEC_LN_LQD_VOL                 融券平仓数量                   D                     16                 24                       0 --(23)9.                                                                                                                         ?
         19 A_SHR_TRAD_AMT                 A股成交金额                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_CNCTR_DGRE' order by 1;

 *** Query completed. 3 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SEC_CNCTR_DGRE                 证券集中度                     D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 ACCT_CNCTR_DGRE                账户集中度                     D                      8                 10                       7 ----.9999999                                                                                                                     ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_SYS_IMPOT_SC' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          3 SYS_IMPOT_ID                   系统重要性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          4 S_Date                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 E_Date                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_BIZ_PRESS_IDX_INFO' order by 1;

 *** Query completed. 12 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 BIZ_TYPE                       业务类型                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 PRESS_FACTOR                   压力因子                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 FACTOR_VAL                     因子取值                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 STK_TYPE                       股票类型                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          6 DPST_GAP                       保证金缺口                     D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          7 FORC_LQD_TRAD_CNT              强制平仓交易笔数               D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          8 FORC_LQD_TRAD_CNT_PERCN        强制平仓交易笔数占比           D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          9 FORC_LQD_TRAD_QTT              强制平仓交易量                 D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         10 FORC_LQD_TRAD_QTT_PERCN        强制平仓交易量占比             D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         11 FORC_LQD_TRAD_AMT              强制平仓交易金额               D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         12 FORC_LQD_TRAD_AMT_PERCN        强制平仓交易金额占比           D                     16                 24                       7 --(17).9(7)                                                                                                                      ?

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
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_Name                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 CALC_Date                      计算日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 Data_WHOL_Id                   数据完整性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 T2_M_BIZ_ENING                 T-2月营业收入                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 T1_M_BIZ_ENING                 T-1月营业收入                  D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 T_M_BIZ_ENING                  T月营业收入                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 M3_ENING_AVG_VAL               三个月收入平均值               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 OPRT_Risk_CAP_REQR             操作风险资本要求               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 TRDN_BOND_INVSMT               交易性债券投资                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 TRDN_EQUT_INVSMT               交易性权益工具投资             D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 DERI_FINAC_Aset                衍生金融资产                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 AVAIL_Sell_FINAC_Aset          可供出售金融资产               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 MKT_Risk_CAP_REQR_TOT          市场风险资本要求合计           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 RM_CAP_F_SALE                  买入返售金融资产               D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 AR_FOA                         应收账款                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         18 AR_FOA_CNTR_PRD_INR            应收账款_合同期内              D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         19 AR_FOA_EXCD_CNTR_PRD           应收账款_超过合同期            D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         20 CRDT_Risk_WETN_Aset_TOT        信用风险加权资产合计           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         21 TOT_Risk_WETN_Aset             总风险加权资产                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'CFG_CRDT_WEIGHT' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 WEIGHT                         指标权重                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 TYP                            类型                           CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 S_DATE                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 E_DATE                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'NBS_STAT_DATA_M' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 IDX_CDE                        指标代码                       CV                   120                  ?                       ? X(120)                                                                                                                           ?
          2 IDX_VAL                        指标值                         D                     16                 38                      20 --(18).9(20)                                                                                                                     ?
          3 S_DATE                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          4 E_DATE                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          5 IDX_NAME                       ?                              CV                   120                  ?                       ? X(120)                                                                                                                           ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_TRAD_CNDT' order by 1;

 *** Query completed. 17 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 CLSF                           分类                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 FIN_NBUY_AMT                   融资净买入金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          4 FIN_BUY_AMT                    融资买入金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SLCPS_PAYBK_AMT                卖券还款金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 DRCT_PAYBK_AMT                 直接还款金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 FIN_RP_AMT                     融资偿还金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 FIN_LQD_AMT                    融资平仓金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 SEC_LN_SAL_AMT                 融券卖出金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 BUY_STK_AS_VCR_AMT             买券还券金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 AS_VCR_TRANS_AMT               还券划转金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         12 SEC_LN_RP_AMT                  融券偿还金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         13 SEC_LN_Net_SAL_AMT             融券净卖出金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         14 SEC_LN_LQD_AMT                 融券平仓金额                   D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         15 GAGE_BUY_AMT                   担保品买入金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         16 GAGE_SAL_AMT                   担保品卖出金额                 D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         17 A_SHR_TRAD_AMT                 A股成交金额                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_MKT_PRESS_IDX_INFO' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 SC_CDE                         证券公司代码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 SC_NAME                        证券公司名称                   CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 IDX_CDE                        指标代码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 IDX_NAME                       指标名称                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_VAL                        指标值                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          7 DATA_WHOL_ID                   数据完整性标识                 CF                     1                  ?                       ? X(1)                                                                                                                             ?

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
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Keep_GUART_Rate_LLMT           履约保障比例下限               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 Keep_GUART_Rate_ULMT           履约保障比例上限               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 ST_RPCHS_AMT                   待购回金额                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 CNTR_CNT                       合约笔数                       D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'vis_ntwk_press_idx_info' order by 1;

 *** Query completed. 10 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 BIZ_TYPE                       业务类型                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 PRESS_FACTOR                   压力因子                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 FACTOR_VAL                     因子取值                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          5 BANKRL_ITP                     资金融入方                     CV                    12                  ?                       ? X(12)                                                                                                                            ?
          6 BANKRL_RCP                     资金融出方                     CV                    12                  ?                       ? X(12)                                                                                                                            ?
          7 BANKRL_RCP_OVRAL_LOAN_BANKRL   资金融出方整体融出资金         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          8 PTY_BTWN_ST_RPCHS_AMT          主体间待购回金额               D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          9 PTY_BTWN_DPST_GAP              主体间保证金缺口               D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         10 BANKRL_RCP_OVRAL_DPST_GAP      资金融出方整体保证金缺口       D                     16                 24                       7 --(17).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'KPI_SEC_OPN_ACCT_VOL_0' order by 1;

 *** Query completed. 9 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 STAT_DATE                      统计日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           频度                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 SEC_EXCH_CDE                   证券交易所代码                 CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 ACCT_TYPE                      账户类型                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          5 STK_INVST_SORT                 股票投资者类别                 CV                     3                  ?                       ? X(3)                                                                                                                             ?
          6 DOM_FORN_INDC                  境内境外标志                   CV                     2                  ?                       ? X(2)                                                                                                                             ?
          7 INVST_OPN_ACCT_PPDM            投资者开户辖区                 CV                     2                  ?                       ? X(2)                                                                                                                             ?
          8 IDX_CDE                        指标编码                       CF                     5                  ?                       ? X(5)                                                                                                                             ?
          9 IDX_VAL                        指标值                         D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_ODNR_IDX_QRY_INFO' order by 1;

 *** Query completed. 13 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_DATE                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           频度                           CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 IDX_FIELD                      指标领域                       CV                    30                  ?                       ? X(30)                                                                                                                            ?
          4 IDX_TYPE                       指标类型                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 IDX_SORT                       指标类别                       CV                    50                  ?                       ? X(50)                                                                                                                            ?
          6 IDX_CDE                        指标编码                       CV                    20                  ?                       ? X(20)                                                                                                                            ?
          7 IDX_NAME                       指标名称                       CV                   100                  ?                       ? X(100)                                                                                                                           ?
          8 IDX_VAL                        指标值                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
          9 CHG_RATE                       涨跌幅                         D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         10 BOTH_VAL_1                     均值1                          D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         11 BOTH_VAL_2                     均值2                          D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         12 STDDEV_SAMP_1                  标准差1                        D                     16                 24                       7 --(17).9(7)                                                                                                                      ?
         13 STDDEV_SAMP_2                  标准差2                        D                     16                 24                       7 --(17).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_KEEP_GUART_RATE_STK_TYPE' order by 1;

 *** Query completed. 5 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 Keep_GUART_Rate_LLMT           履约保障比例下限               I                      4                  ?                       ? -(10)9                                                                                                                           ?
          3 Keep_GUART_Rate_ULMT           履约保障比例上限               I                      4                  ?                       ? -(10)9                                                                                                                           ?
          4 STK_TYPE                       股票类型                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          5 CNTR_CNT                       合约笔数                       D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_HKST_ACCT_CNDT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 HKST_PSTN_ACCT_VOL             港股通持仓账户数               D                     16                 24                       0 --(23)9.                                                                                                                         ?
          3 TRAD_ACCT_VOL                  交易账户数                     D                     16                 24                       0 --(23)9.                                                                                                                         ?
          4 New_HKST_PSTN_ACCT_VOL         新增港股通持仓账户数           D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_CNCTR_DGRE_ACCT' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 ACCT_HOLD_Rate_LLMT            账户持有比例下限               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          3 ACCT_HOLD_Rate_ULMT            账户持有比例上限               D                      8                 10                       7 ----.9999999                                                                                                                     ?
          4 ACCT_VOL                       账户数                         D                     16                 24                       0 --(23)9.                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_SMT_UND_PRES_FORC_LQD' order by 1;

 *** Query completed. 10 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 biz_date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 PRESS_VAL                      压力因子                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          3 st_rpchs_gap_ini               保证金缺口分子                 D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          4 st_rpchs_gap_tot               保证金缺口分母                 D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          5 forc_lqd_act_ini               强制平仓交易账户分子           D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 forc_lqd_act_tot               强制平仓交易账户分母           D                     16                 30                       0 --(29)9.                                                                                                                         ?
          7 forc_lqd_nbr_ini               强制平仓交易量分子             D                     16                 30                       0 --(29)9.                                                                                                                         ?
          8 forc_lqd_nbr_TOT               强制平仓交易量分母             D                     16                 30                       0 --(29)9.                                                                                                                         ?
          9 forc_lqd_val_ini               强制平仓交易金额分子           D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
         10 forc_lqd_val_TOT               强制平仓交易金额分母           D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_HGT_TRAD_AND_LMT_USE_CNDT' order by 1;

 *** Query completed. 11 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 HGT_BIZ_Sort_CDE               沪港通业务类别代码             CF                     3                  ?                       ? X(3)                                                                                                                             ?
          3 HGT_BIZ_Sort                   沪港通业务类别                 CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 Buy_AMT                        买入金额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          5 SAL_AMT                        卖出金额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          6 NBUY_AMT                       净买入金额                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          7 TRAD_AMT                       成交金额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          8 A_And_H_SHR_TRAD_AMT           A+H股成交额                    D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          9 ALRD_Used_LMT                  已用额度                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         10 AVAIL_LMT                      可用额度                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
         11 LMT_BAL                        额度余额                       D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

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
          1 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          2 Weight                         权重                           D                     16                 24                       6 --(18).9(6)                                                                                                                      ?
          3 SUPV_IDX_CDE                   上级指标编码                   CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 HRRC                           层级                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          5 Typ                            类型                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          6 S_Date                         开始日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          7 E_Date                         结束日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_UND_PRES_KEEP_GUART_RATE' order by 1;

 *** Query completed. 7 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 biz_date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 PRESS_VAL                      压力因子                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          3 cap_type                       股本类型                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          4 rate_llmt                      履约保障比例下限               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          5 rate_ulmt                      履约保障比例上限               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 st_rpchs_nbr                   待购回笔数                     D                     16                 30                       0 --(29)9.                                                                                                                         ?
          7 st_rpchs_sec_mkt_val           待购回金额                     D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_FORC_LQD_INFO' order by 1;

 *** Query completed. 12 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 biz_date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 cap_type                       股本类型                       CV                     2                  ?                       ? X(2)                                                                                                                             ?
          3 PRESS_VAL                      压力因子                       D                      8                 18                       2 -----------------.99                                                                                                             ?
          4 st_rpchs_plg_gap               保证金缺口                     D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
          5 init_cntr_nbr_ini              强制交易笔数分子               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          6 init_cntr_nbr_tot              强制交易笔数分母               D                     16                 30                       0 --(29)9.                                                                                                                         ?
          7 itp_sec_acct_ini               待补充质押账户数分子           D                     16                 30                       0 --(29)9.                                                                                                                         ?
          8 itp_sec_acct_tot               待补充质押账户数分母           D                     16                 30                       0 --(29)9.                                                                                                                         ?
          9 forc_lqd_nbr_ini               强制平仓交易量分子             D                     16                 30                       0 --(29)9.                                                                                                                         ?
         10 forc_lqd_nbr_TOT               强制平仓交易量分母             D                     16                 30                       0 --(29)9.                                                                                                                         ?
         11 forc_lqd_val_ini               强制平仓交易金额分子           D                     16                 30                       7 --(23).9(7)                                                                                                                      ?
         12 forc_lqd_val_TOT               强制平仓交易金额分母           D                     16                 30                       7 --(23).9(7)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'KPI_TIME_SERIES_0' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 Stat_Date                      统计日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 FREQ                           频度                           CF                     1                  ?                       ? X(1)                                                                                                                             ?
          3 IDX_CDE                        指标编码                       CV                    12                  ?                       ? X(12)                                                                                                                            ?
          4 IDX_VAL                        指标值                         D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-
select rank() over(order by columnid) as ColumnId, cast(columnname as varchar(30)) as ColumnName, cast(columntitle as varchar(30)) as ColumnTitle, columntype, columnlength, decimaltotaldigits, decimalfractionaldigits, columnformat, defaultvalue from dbc.columnsv where databasename = 'nsRMSMart' and tablename = 'VIS_STK_PLG_RPCHS_SCALE_INVST' order by 1;

 *** Query completed. 4 rows found. 9 columns returned. 
 *** Total elapsed time was 1 second.

   ColumnId ColumnName                     ColumnTitle                    ColumnType  ColumnLength DecimalTotalDigits DecimalFractionalDigits ColumnFormat                                                                                                                     DefaultValue
----------- ------------------------------ ------------------------------ ---------- ------------- ------------------ ----------------------- -------------------------------------------------------------------------------------------------------------------------------- -----------------------------------------------------------------------------------------------------------------
          1 BIZ_Date                       业务日期                       DA                     4                  ?                       ? YYYYMMDD                                                                                                                         ?
          2 STK_INVST_Sort                 股票投资者类别                 CV                    12                  ?                       ? X(12)                                                                                                                            ?
          3 STK_INVST_Name                 股票投资者名称                 CV                    50                  ?                       ? X(50)                                                                                                                            ?
          4 ST_RPCHS_AMT                   待购回金额                     D                     16                 24                       6 --(18).9(6)                                                                                                                      ?

+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+---------+-


.quit
 *** You are now logged off from the DBC.
 *** Exiting BTEQ...
 *** RC (return code) = 0 
