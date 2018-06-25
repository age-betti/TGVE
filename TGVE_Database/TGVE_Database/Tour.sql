CREATE TABLE [dbo].[Tour]
(
	[TourID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [TourName] NCHAR(50) NOT NULL, 
    [Description] NCHAR(200) NULL

	CONSTRAINT [UniqueTourName] UNIQUE([TourName])
)
