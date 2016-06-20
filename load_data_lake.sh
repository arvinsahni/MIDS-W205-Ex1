tail -n+2 "Hospital General Information.csv"> "hospitals.csv"
tail -n+2 "Timely and Effective Care - Hospital.csv"> "effective_care.csv"
tail -n+2 "Readmissions and Deaths - Hospital.csv"> "readmissions.csv"
tail -n+2 "Measure Dates.csv"> "Measures.csv"
tail -n+2 "hvbp_hcahps_02_18_2016.csv"> "surveys_responses.csv"

hdfs dfs -put hospitals.csv /user/w205/hospital_compare
hdfs dfs -put effective_care.csv /user/w205/hospital_compare
hdfs dfs -put readmissions.csv /user/w205/hospital_compare
hdfs dfs -put Measures.csv /user/w205/hospital_compare
hdfs dfs -put surveys_responses.csv /user/w205/hospital_compare

   
