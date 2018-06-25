CREATE TABLE [dbo].[Event]
(
	[EventID] INT IDENTITY(1,1) NOT NULL PRIMARY KEY, 
    [EventDate] DATE NOT NULL, 
    [Fee] MONEY NOT NULL,
	[TourID] INT NOT NULL,
	FOREIGN KEY ([TourID]) REFERENCES [Tour]([TourID]),

	CONSTRAINT [UniqueID] UNIQUE ([EventID]),
	CONSTRAINT [UniqueDate] UNIQUE ([EventDate])

)
