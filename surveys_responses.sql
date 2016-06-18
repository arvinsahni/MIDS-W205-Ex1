CREATE TABLE surveys_responses_1 AS SELECT provider_id, Overall_Rating_of_Hospital_Achievement_Points,Overall_Rating_of_Hospital_Improvement_Points,Overall_Rating_of_Hospital_Dimension_Score,HCAHPS_Base_Score, HCAHPS_Consistency_Score FROM surveys_responses WHERE LOWER(LTRIM(RTRIM(Overall_Rating_of_Hospital_Achievement_Points)))<>"not available" AND LOWER(LTRIM(RTRIM(Overall_Rating_of_Hospital_Improvement_Points)))<>"not available" AND LOWER(LTRIM(RTRIM(Overall_Rating_of_Hospital_Dimension_Score)))<>"not available" AND LOWER(LTRIM(RTRIM(HCAHPS_Base_Score)))<>"not available" AND LOWER(LTRIM(RTRIM(HCAHPS_Consistency_Score)))<>"not available";
