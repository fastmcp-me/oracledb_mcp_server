select * from USER_TAB_COMMENTS where TABLE_TYPE='TABLE';

select col.table_name,
       col.column_name,
       col.comments
  from user_col_comments col,
       user_tab_comments tab
 where tab.table_name = col.table_name
   and tab.table_type = 'TABLE';

select TABLE_NAME,COMMENTS from USER_TAB_COMMENTS where TABLE_TYPE='TABLE'AND TABLE_NAME in ('ACCOUNTS','CUSTOMERS','CUS_ACC_RELATIONS');

desc ACCOUNTS;
desc CUS_ACC_RELATIONS;
desc CUSTOMERS;

select col.table_name,
       col.column_name,
       col.comments
  from user_col_comments col,
       user_tab_comments tab
 where tab.table_name = col.table_name
   and tab.table_type = 'TABLE'
   and col.column_name in ( 'ACC_AAD_ID',
                        'ACC_NBR',
                        'ACC_TITLE',
                        'CAR_CUS_ID',
                        'CAR_AAD_ID',
                        'CAR_RELATION_TYPE_CD',
                        'CAR_ENABLED_IND',
                        'CUS_ID',
                        'CUS_GENDER_CD',
                        'CUS_FIRST_NAME',
                        'CUS_MIDDLE_NAME',
                        'CUS_LAST_NAME',
                        'CUS_ENABLED_IND' )
   and col.table_name in ( 'ACCOUNTS',
                       'CUS_ACC_RELATIONS',
                       'CUSTOMERS' );


SELECT 
    c.CUS_FIRST_NAME,
    c.CUS_MIDDLE_NAME,
    c.CUS_LAST_NAME,
    c.CUS_GENDER_CD,
    a.ACC_NBR,
    a.ACC_TITLE,
    car.CAR_RELATION_TYPE_CD
FROM 
    CUSTOMERS c,
    CUS_ACC_RELATIONS car,
    ACCOUNTS a
WHERE
    c.CUS_ID = car.CAR_CUS_ID AND
    car.CAR_AAD_ID = a.ACC_AAD_ID;

SELECT 
    a.ACC_NBR,
    a.ACC_AAD_ID
FROM 
    ACCOUNTS a
WHERE 
    a.ACC_NBR = '20240600110067';

SELECT 
    c.CUS_ID,
    c.CUS_FIRST_NAME,
    c.CUS_MIDDLE_NAME,
    c.CUS_LAST_NAME,
    c.CUS_GENDER_CD,
    a.ACC_NBR,
    a.ACC_TITLE,
    car.CAR_RELATION_TYPE_CD
FROM 
    ACCOUNTS a
JOIN 
    CUS_ACC_RELATIONS car ON a.ACC_AAD_ID = car.CAR_AAD_ID
JOIN 
    CUSTOMERS c ON car.CAR_CUS_ID = c.CUS_ID
WHERE 
    a.ACC_NBR = 'MAST-MEM00121'
    AND c.CUS_ENABLED_IND = 'Y'
    AND car.CAR_ENABLED_IND = 'Y';

SELECT 
    c.CUS_ID,
    c.CUS_FIRST_NAME,
    c.CUS_MIDDLE_NAME,
    c.CUS_LAST_NAME,
    c.CUS_GENDER_CD,
    a.ACC_NBR,
    a.ACC_TITLE,
    car.CAR_RELATION_TYPE_CD
FROM 
    ACCOUNTS a
JOIN 
    CUS_ACC_RELATIONS car ON a.ACC_AAD_ID = car.CAR_AAD_ID
JOIN 
    CUSTOMERS c ON car.CAR_CUS_ID = c.CUS_ID
WHERE 
    a.ACC_NBR = 'LEASE_AMORT_ADV_MON_DD1_03'
    AND c.CUS_ENABLED_IND = 'Y'
    AND car.CAR_ENABLED_IND = 'Y';

select * FROM accounts where ACC_AAD_ID=5700;


-- Get allowed tables and column details from database. 
-- Only use these list of tables and column details to form queries.
-- Do not add new tables and columns to create sql. 
-- Generate SQL in a way that run on Oracle database.
-- Get me customer details for account LEASE_AMORT_ADV_MON_DD1_03. 