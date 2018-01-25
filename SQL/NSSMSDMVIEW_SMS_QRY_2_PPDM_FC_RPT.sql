REPLACE VIEW ${NSSMSDMVIEW}.SMS_QRY_2_PPDM_FC_RPT (
STAT_DATE                -- '统计月份'
,PPDM_CDE                -- '辖区代码'          
,PPDM_NAME               -- '辖区名称'          
,COMP_CNT                -- '公司家数'          
,BRH_CNT                 -- '营业部家数'        
,EMPLY_CNT               -- '期货公司就业人员数'
,TOT_ASET                -- '期货公司总资产'    
,NET_ASET                -- '期货公司净资产'    
,BIZ_ENING               -- '期货公司营业收入'  
,BIZ_SUPT                -- '期货公司营业支出'  
,PRFT_TOT_AMT            -- '期货公司利润总额'  
,NET_PRFT                -- '期货公司净利润'    
,NET_CAPTL_TOT_AMT       -- '期货公司净资本总额'
)
AS SELECT 
STAT_DATE                                                 (TITLE '统计月份')                                
,PPDM_CDE                                                 (TITLE '辖区代码')                                
,PPDM_NAME                                                (TITLE '辖区名称')                                
,SUM(CASE WHEN IDX_CDE = 'PI014' THEN IDX_VAL ELSE 0 END) (TITLE '公司家数')            AS COMP_CNT         
,SUM(CASE WHEN IDX_CDE = 'PI015' THEN IDX_VAL ELSE 0 END) (TITLE '营业部家数')          AS BRH_CNT          
,SUM(CASE WHEN IDX_CDE = 'PI016' THEN IDX_VAL ELSE 0 END) (TITLE '期货公司就业人员数')  AS EMPLY_CNT        
,SUM(CASE WHEN IDX_CDE = 'PI017' THEN IDX_VAL ELSE 0 END) (TITLE '期货公司总资产')      AS TOT_ASET         
,SUM(CASE WHEN IDX_CDE = 'PI018' THEN IDX_VAL ELSE 0 END) (TITLE '期货公司净资产')      AS NET_ASET         
,SUM(CASE WHEN IDX_CDE = 'PI020' THEN IDX_VAL ELSE 0 END) (TITLE '期货公司营业收入')    AS BIZ_ENING        
,SUM(CASE WHEN IDX_CDE = 'PI021' THEN IDX_VAL ELSE 0 END) (TITLE '期货公司营业支出')    AS BIZ_SUPT         
,SUM(CASE WHEN IDX_CDE = 'PI022' THEN IDX_VAL ELSE 0 END) (TITLE '期货公司利润总额')    AS PRFT_TOT_AMT     
,SUM(CASE WHEN IDX_CDE = 'PI023' THEN IDX_VAL ELSE 0 END) (TITLE '期货公司净利润')      AS NET_PRFT         
,SUM(CASE WHEN IDX_CDE = 'PI024' THEN IDX_VAL ELSE 0 END) (TITLE '期货公司净资本总额')  AS NET_CAPTL_TOT_AMT
FROM ${NSPUBVIEW}.KPI_FC_IDX A, ${NSPUBVIEW}.CDE_PPDM_CDE B
WHERE
A.REG_JUR = B.PPDM_CDE
AND A.FREQ = 'M'
GROUP BY 1,2,3
;

