--Finding States with highest poverty rates
SELECT [State], AVG([PovertyRate]) as Average_Rate
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2015]
 GROUP BY [State]
 ORDER BY Average_Rate DESC

--Total counts
SELECT [State], SUM([LA1and10]) as Sum_LowAccess_tracts
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2015]
 GROUP BY [State]
 ORDER BY Sum_LowAccess_tracts DESC

--Percent of tracts that are low-access by state
SELECT [State], CAST(SUM([LA1and10]) AS DECIMAL) / CAST(COUNT(*) AS DECIMAL)  as Percent_LowAccess_Tracts
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2015]
 GROUP BY [State]
 ORDER BY Percent_LowAccess_Tracts DESC

 --Age and Poverty Rate
SELECT [TractKids], [Pop2010], CAST([TractKids] AS DECIMAL) / CAST([Pop2010] AS DECIMAL) AS percent_of_kids,
 [PovertyRate]
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2015]
 ORDER BY percent_of_kids DESC

 --Median Income and Food Accessibility
--Low access flag is true
SELECT [State], CAST(AVG([MedianFamilyIncome]) AS DECIMAL) AS AVG_INCOME
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2015]
 WHERE [LA1and10] = 1
 GROUP BY [STATE]

--Low access flag is not true
SELECT [State], CAST(AVG([MedianFamilyIncome]) AS DECIMAL) AS AVG_INCOME
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2015]
 WHERE [LA1and10] = 0
 GROUP BY [STATE]

 --Finding States with highest poverty rates
SELECT [State], AVG([PovertyRate]) as Average_Rate
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2019]
 GROUP BY [State]
 ORDER BY Average_Rate DESC

--Total counts
SELECT [State], SUM([LA1and10]) as Sum_LowAccess_tracts
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2019]
 GROUP BY [State]
 ORDER BY Sum_LowAccess_tracts DESC

--Percent of tracts that are low-access by state
SELECT [State], CAST(SUM([LA1and10]) AS DECIMAL) / CAST(COUNT(*) AS DECIMAL)  as Percent_LowAccess_Tracts
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2019]
 GROUP BY [State]
 ORDER BY Percent_LowAccess_Tracts DESC

 --Age and Poverty Rate
SELECT [TractKids], [Pop2010], CAST([TractKids] AS DECIMAL) / CAST([Pop2010] AS DECIMAL) AS percent_of_kids,
 [PovertyRate]
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2019]
 ORDER BY percent_of_kids DESC

-- Low Access Tracts and Ethnic Groups
SELECT [WRK_FoodAccessibility_2015].[CensusTract], [MedianFamilyIncome], [lapop10share]
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2015]
 JOIN [Food_Accessibility].[dbo].[WRK_RaceAccessibility_2019] ON 
 [Food_Accessibility].[dbo].[WRK_RaceAccessibility_2019].[RowNumber] = [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2015].[RowNumber]
 ORDER BY [MedianFamilyIncome] DESC

SELECT [WRK_FoodAccessibility_2015].[CensusTract], [MedianFamilyIncome], [PovertyRate], [lawhite10share], [lablack10share], [laasian10share], [lanhopi10share],
 [laaian10share], [laomultir10share], [lahisp10share], [lahunv10share]
 FROM [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2015]
 JOIN [Food_Accessibility].[dbo].[WRK_RaceAccessibility_2019] ON 
 [Food_Accessibility].[dbo].[WRK_RaceAccessibility_2019].[RowNumber] = [Food_Accessibility].[dbo].[WRK_FoodAccessibility_2015].[RowNumber]
 ORDER BY [MedianFamilyIncome] DESC