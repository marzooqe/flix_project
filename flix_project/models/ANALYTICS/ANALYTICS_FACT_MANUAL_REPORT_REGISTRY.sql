WITH LAST_CONVERSION AS
(
	SELECT 
		DISTINCT
		CURRENCY,
		LAST_VALUE(RATE_TO_EUR) OVER (PARTITION BY CURRENCY ORDER BY DATE) AS RATE_TO_EUR
		FROM {{ ref('ANALYTICS_DIM_FX_RATES_ECB') }}
)

SELECT
	MRR.REPORT_ID,
	ENT.ID AS ENTITY_ID,
	MRR.ENTITY,
	ENT.ENTITY AS ENTITY_MRR,
	MRR.DEPARTMENT,
	MRR.PURPOSE,
	MRR.SOURCE_SYSTEMS_USED,
	MRR.AVG_PREPARATION_HOURS,
	MRR.HOURLY_RATE_LOCAL,
	MRR.TOTAL_COST_LOCAL,
	MRR.HOURLY_RATE_LOCAL * FXR.RATE_TO_EUR AS HOURLY_RATE_EUR,
	MRR.TOTAL_COST_LOCAL  * FXR.RATE_TO_EUR AS TOTAL_COST_EUR,	
	MRR.REQUEST_FREQUENCY,
	CASE 
		WHEN MRR.REQUEST_FREQUENCY = 'quarterly' THEN 4
		WHEN MRR.REQUEST_FREQUENCY = 'monthly' THEN 12
		WHEN MRR.REQUEST_FREQUENCY = 'weekly' THEN 52
		WHEN MRR.REQUEST_FREQUENCY = 'daily' THEN 365
		ELSE NULL END AS YEARLY_REQUEST_COUNT,
	MRR.AUDIENCE
FROM {{ source('SMMOIDEEN','MANUAL_REPORT_REGISTRY') }} MRR
LEFT JOIN {{ ref('ANALYTICS_DIM_ENTITY') }} ENT 
	ON MRR.ENTITY = ENT.ENTITY
LEFT JOIN LAST_CONVERSION FXR 
	ON MRR.CURRENCY = FXR.CURRENCY