CREATE TABLE hap_temp as
SELECT hospital_temp.provider_id,calc_score,(CAST(HCAHPS_Base_Score AS INT)+CAST(HCAHPS_Consistency_Score AS INT)) sum_score
FROM hospital_temp, surveys_responses_1
WHERE hospital_temp.provider_id=surveys_responses_1.provider_id;

SELECT corr(calc_score,sum_score) FROM hap_temp;

