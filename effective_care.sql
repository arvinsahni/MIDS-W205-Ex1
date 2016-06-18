CREATE TABLE Effective_care_1 AS SELECT provider_id, measure_id, condition, score, sample, footnote FROM effective_care WHERE footnote is NULL OR footnote=''; 
