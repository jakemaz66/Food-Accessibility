USE [Food_Accessibility]
GO
/****** Object:  StoredProcedure [dbo].[BLD_WRK_RaceAccessibility_2019]    Script Date: 6/20/2023 6:46:59 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

ALTER PROCEDURE [dbo].[BLD_WRK_RaceAccessibility_2019]

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
  IF OBJECT_ID('WRK_RaceAccessibility_2019') IS NOT NULL
  DROP TABLE WRK_RaceAccessibility_2019

-- =============================================
-- CREATE TABLE BLOCK
-- =============================================
	
	CREATE TABLE WRK_RaceAccessibility_2019
	(
	[RowNumber] INT IDENTITY(1,1),
	[CensusTract] VARCHAR(50),
	[State] VARCHAR(50),
	[County] VARCHAR(150),
	[lapop10] INT
      ,[lapop10share] FLOAT
      ,[lalowi10] INT
      ,[lalowi10share] FLOAT
      ,[lakids10] INT
      ,[lakids10share] FLOAT
      ,[laseniors10] INT
      ,[laseniors10share] FLOAT
      ,[lawhite10] INT
      ,[lawhite10share] FLOAT
      ,[lablack10] INT
      ,[lablack10share] FLOAT
      ,[laasian10] INT
      ,[laasian10share] FLOAT
      ,[lanhopi10] INT
      ,[lanhopi10share] FLOAT
      ,[laaian10] INT
      ,[laaian10share] FLOAT
      ,[laomultir10] INT
      ,[laomultir10share] FLOAT
      ,[lahisp10] INT
      ,[lahisp10share] FLOAT
      ,[lahunv10] INT
      ,[lahunv10share] FLOAT
      ,[lasnap10] INT
      ,[lasnap10share] FLOAT
	  )

	  -- =============================================
	  -- Truncate Table
	  -- =============================================

	  TRUNCATE TABLE WRK_RaceAccessibility_2019

	  -- =============================================
	  -- INSERT INTO BLOCK
	  -- =============================================
	  SET IDENTITY_INSERT WRK_RaceAccessibility_2019 ON
	  INSERT INTO WRK_RaceAccessibility_2019 (
	  [CensusTract] ,
	[State] ,
	[County] ,
	[lapop10] 
      ,[lapop10share]
      ,[lalowi10]
      ,[lalowi10share]
      ,[lakids10]
      ,[lakids10share]
      ,[laseniors10]
      ,[laseniors10share]
      ,[lawhite10]
      ,[lawhite10share]
      ,[lablack10]
      ,[lablack10share]
      ,[laasian10]
      ,[laasian10share]
      ,[lanhopi10]
      ,[lanhopi10share]
      ,[laaian10]
      ,[laaian10share]
      ,[laomultir10]
      ,[laomultir10share]
      ,[lahisp10]
      ,[lahisp10share]
      ,[lahunv10]
      ,[lahunv10share]
      ,[lasnap10]
      ,[lasnap10share])

	  SELECT
	  [CensusTract] ,
	[State] ,
	[County] ,
	[lapop10] 
      ,[lapop10share]
      ,[lalowi10]
      ,[lalowi10share]
      ,[lakids10]
      ,[lakids10share]
      ,[laseniors10]
      ,[laseniors10share]
      ,[lawhite10]
      ,[lawhite10share]
      ,[lablack10]
      ,[lablack10share]
      ,[laasian10]
      ,[laasian10share]
      ,[lanhopi10]
      ,[lanhopi10share]
      ,[laaian10]
      ,[laaian10share]
      ,[laomultir10]
      ,[laomultir10share]
      ,[lahisp10]
      ,[lahisp10share]
      ,[lahunv10]
      ,[lahunv10share]
      ,[lasnap10]
      ,[lasnap10share]
	  
	  FROM [dbo].RAW_FoodAcessibility_2019

	  --Filters
	  WHERE ISNUMERIC([lapop10]) = 1 AND 
	  ISNUMERIC([lalowi10]) = 1 AND 
	  ISNUMERIC([lakids10]) = 1 AND 
	  ISNUMERIC([laseniors10]) = 1 AND 
	  ISNUMERIC([lawhite10]) = 1 AND 
	  ISNUMERIC([lablack10]) = 1 AND 
	  ISNUMERIC([laasian10]) = 1 AND 
	  ISNUMERIC([lanhopi10]) = 1 AND 
	  ISNUMERIC([laaian10]) = 1 AND 
	  ISNUMERIC([laomultir10]) = 1 AND 
	  ISNUMERIC([lahisp10]) = 1 AND 
	  ISNUMERIC([lahunv10]) = 1 AND 
	  ISNUMERIC([lasnap10]) = 1
	
END

