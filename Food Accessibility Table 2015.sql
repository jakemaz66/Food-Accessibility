USE [Food_Accessibility]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_FoodAccessibility_2015]    Script Date: 6/20/2023 6:44:40 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[BLD_WRK_FoodAccessibility_2015]

-- =============================================
-- Author:		<Mazurkiewicz, Jacob>
-- Create date: <2023-06-14>
-- Description:	<RAW -> WRK>
-- =============================================

AS
BEGIN
  -- =============================================
  -- Drop Table
  -- =============================================
  IF OBJECT_ID('WRK_FoodAccessibility_2015') IS NOT NULL
  DROP TABLE WRK_FoodAccessibility_2015

-- =============================================
-- CREATE TABLE BLOCK
-- =============================================
	
	CREATE TABLE WRK_FoodAccessibility_2015
	(
	[RowNumber] INT IDENTITY(1,1),
	[CensusTract] VARCHAR(50),
	[State] VARCHAR(50),
	[County] VARCHAR(150),
	[Urban] VARCHAR(1),
      [Pop2010] INT,
      [OHU2010] INT,
	  [PovertyRate] FLOAT,
      [MedianFamilyIncome] INT,
	  [LA1and10] INT,
      [LAhalfand10] INT,
      [LA1and20] INT,
      [LATracts_half] INT,
      [LATracts1] INT,
      [LATracts10] INT,
      [LATracts20] INT,
	  [TractLOWI] INT,
	  [TractKids] INT,
      [TractSeniors] INT,
      [TractWhite] INT,
      [TractBlack] INT,
      [TractAsian] INT,
      [TractNHOPI] INT,
      [TractAIAN] INT,
      [TractOMultir] INT,
      [TractHispanic] INT,
      [TractHUNV] INT,
      [TractSNAP] INT,
	  )

	  -- =============================================
	  -- Truncate Table
	  -- =============================================

	  TRUNCATE TABLE WRK_FoodAccessibility_2015

	  -- =============================================
	  -- INSERT INTO BLOCK
	  -- =============================================
	  INSERT INTO WRK_FoodAccessibility_2015 (
	  [CensusTract],
	[State],
	[County],
	[Urban],
      [Pop2010],
      [OHU2010],
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
	  
	  FROM [dbo].RAW_FoodAccessibility_2015

	  --Filters
	  WHERE [PovertyRate] != '0' -- Affects 780 Rows
	  AND [MedianFamilyIncome] != 0 -- Affects 838 Rows
	  AND [TractLOWI] != 0 -- Affects 685 Rows
	  
END

