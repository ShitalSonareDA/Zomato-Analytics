Use zomato_analysis;
Select * from Restaurants;

Select CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE) As OpeningDate,
year(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) As OpeningYear,
month(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) As OpeningMonth,
monthname(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) As OpeningMonthName,
quarter(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) As OpeningQtr,
DATE_FORMAT(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE), '%Y-%b') AS OpeningYearMonth,
dayofweek(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) as OpeningWeekdayNo,
dayname(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) as OpeningWeekdayName,
    CASE 
        WHEN MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) >= 4 
        THEN CONCAT('FM', MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) - 3)
        ELSE CONCAT('FM', MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) + 9)
    END AS FinancialMonth,
    CASE 
        WHEN MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) >= 4 AND MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) <= 6 THEN 'FQ1'
        WHEN MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) >= 7 AND MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) <= 9 THEN 'FQ2'
        WHEN MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) >=10 AND MONTH(CAST(REPLACE(DateKey_Opening, '_', '-') AS DATE)) <= 12 THEN 'FQ3'
        ELSE 'FQ4'
    END AS FinancialQuarter
 from Restaurants;
