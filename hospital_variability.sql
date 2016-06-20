CREATE TABLE variability_temp as
SELECT provider_id,measure_id,score 
FROM readmissions_1
UNION ALL
SELECT provider_id,measure_id,score 
FROM Effective_care_1
WHERE substr(trim(score),1,1) NOT IN (“L”,”H”,”M”,”V”);


CREATE TABLE variability_temp_1 as
SELECT measure_id,stddev_pop(CAST(score as INT)) dev_score
FROM variability_temp
GROUP BY measure_id;

SELECT measure_name ,dev_score
FROM Measures_1, variability_temp_1
where Measures_1.measure_id=variability_temp_1.measure_id
ORDER BY dev_score DESC
LIMIT 10;