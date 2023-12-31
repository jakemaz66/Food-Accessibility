USE [Food_Accessibility]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_FoodAccessibility_2019]    Script Date: 6/20/2023 6:45:54 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[BLD_WRK_FoodAccessibility_2019]

-- =============================================
-- Author:		<Mazurkiewicz, Jacob>
-- Create date: <2023-06-12>
-- Description:	<RAW -> WRK>
-- =============================================

AS
BEGIN
  -- =============================================
  -- Drop Table
  -- =============================================
  IF OBJECT_ID('WRK_FoodAccessibility_2019') IS NOT NULL
  DROP TABLE WRK_FoodAccessibility_2019

-- =============================================
-- CREATE TABLE BLOCK
-- =============================================
	
	CREATE TABLE WRK_FoodAccessibility_2019
	(
	[RowNumber] INT IDENTITY(1,1),
	[CensusTract] VARCHAR(50),
	[State] VARCHAR(50),
	[County] VARCHAR(150),
	[Urban] VARCHAR(1),
      [Pop2010] DECIMAL,
      [OHU2010] INT,
	  [PCTGQTRS] FLOAT, 
	  [PovertyRate] FLOAT,
      [MedianFamilyIncome] INT,
	  [LA1and10] INT,
      [LAhalfand10] INT,
      [LA1and20] INT,
      [LATracts_half] INT,
      [LATracts1] INT,
      [LATracts10] INT,
      [LATracts20] INT,
	  [TractLOWI] DECIMAL,
	  [TractKids] DECIMAL,
      [TractSeniors] DECIMAL,
      [TractWhite] DECIMAL,
      [TractBlack] DECIMAL,
      [TractAsian] DECIMAL,
      [TractNHOPI] DECIMAL,
      [TractAIAN] DECIMAL,
      [TractOMultir] DECIMAL,
      [TractHispanic] DECIMAL,
      [TractHUNV] DECIMAL,
      [TractSNAP] DECIMAL,
	  )

	  -- =============================================
	  -- Truncate Table
	  -- =============================================

	  TRUNCATE TABLE WRK_FoodAccessibility_2019

	  -- =============================================
	  -- INSERT INTO BLOCK
	  -- =============================================
	  SET IDENTITY_INSERT WRK_FoodAccessibility_2019 ON
	  INSERT INTO WRK_FoodAccessibility_2019 (
	  [CensusTract],
	[State],
	[County],
	[Urban],
      [Pop2010],
      [OHU2010],
	  [PCTGQTRS], 
	  [PovertyRate],
      [MedianFamilyIncome],
	  [LA1and10],
      [LAhalfand10],
      [LA1and20],
      [LATracts_half],
      [LATracts1],
      [LATracts10],
      [LATracts20],
	  [TractLOWI],
	  [TractKids],
      [TractSeniors],
      [TractWhite],
      [TractBlack],
      [TractAsian],
      [TractNHOPI],
      [TractAIAN],
      [TractOMultir],
      [TractHispanic],
      [TractHUNV],
      [TractSNAP])

	  SELECT
	  [CensusTract],
	[State],
	[County],
	[Urban],
      [Pop2010],
      [OHU2010],
	  [PCTGQTRS], 
	  [PovertyRate],
      [MedianFamilyIncome],
	  [LA1and10],
      [LAhalfand10],
      [LA1and20],
      [LATracts_half],
      [LATracts1],
      [LATracts10],
      [LATracts20],
	  [TractLOWI],
	  [TractKids],
      [TractSeniors],
      [TractWhite],
      [TractBlack],
      [TractAsian],
      [TractNHOPI],
      [TractAIAN],
      [TractOMultir],
      [TractHispanic],
      [TractHUNV],
      [TractSNAP]
	  
	  FROM [dbo].[RAW_FoodAcessibility_2019]

	  --Filters
	  WHERE ISNUMERIC([PCTGQTRS]) = 1 --Affects 25 Rows
	  AND ISNUMERIC([PovertyRate]) = 1 -- Affects 3 Rows
	  AND [MedianFamilyIncome] NOT LIKE '%NULL%' -- Affects 748 Rows
	  AND [TractLOWI] NOT LIKE '%NULL%' -- Affects 4 Rows
	  

END

