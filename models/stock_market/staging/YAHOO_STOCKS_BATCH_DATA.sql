--Set target properties
{{ config(
    database='DBT_STAGING',
     tags=["stocks_batch"],
    pre_hook="ALTER EXTERNAL TABLE DBT_RAW.LANDING_ZONE.BATCH_DATA_STOCKS REFRESH" 
) }}

SELECT
DATE
,TICKER
,ROUND(OPEN) AS OPEN
,ROUND(HIGH) AS HIGH
,ROUND(LOW) AS LOW
,ROUND(CLOSE) AS CLOSE
,VOLUME
FROM
DBT_RAW.LANDING_ZONE.BATCH_DATA_STOCKS


