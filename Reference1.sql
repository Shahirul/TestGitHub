--SELECT * FROM TF a
--where tf_timestamp = (select max(tf_timestamp) from tf where TF_Portfolio = a.TF_Portfolio)
--order by tf_timestamp  asc

--SELECT * FROM "dbo"."WorstScenario" order by ws_timestamp  desc
--WHERE 
--WorstScenario.WS_AnalysisDate = {analysisdate:yyyy-MM-dd} and 
--WorstScenario.WS_Portfolio = {portfolio}

select * from AnnualizedBenchmark a 
where ABTimestamp = (select max(ABTimestamp) from AnnualizedBenchmark where ABAnalysisDate = a.ABAnalysisDate)

--order by ABTimestamp desc

select * from AnnualizedBenchmark a 
where ABAnalysisDate = (select max(ABAnalysisDate) from AnnualizedBenchmark where ABAnalysisDate = a.ABAnalysisDate)
order by ABAnalysisDate desc