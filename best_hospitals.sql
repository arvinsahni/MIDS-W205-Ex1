CREATE TABLE hospital_temp as SELECT hospital_name,Effective_Care_1.provider_id, avg(CAST(Effective_Care_1.score AS INT)) calc_score 
FROM Hospitals_1,Effective_Care_1 
WHERE Hospitals_1.provider_id=Effective_Care_1.provider_id
AND substr(trim(Effective_care_1.score),1,1) NOT IN ("L","H","M","V")
GROUP BY hospital_name,Effective_Care_1.provider_id;

SELECT * from hospital_temp
ORDER BY calc_score DESC
LIMIT 10;