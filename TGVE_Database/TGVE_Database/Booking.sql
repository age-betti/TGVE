CREATE TABLE [dbo].[Booking]
(
	[Payment] MONEY NOT NULL, 
    [DateBooked] DATE NOT NULL,

	[ClientID] INT NOT NULL,
	FOREIGN KEY ([ClientID]) REFERENCES [Client]([ClientID]),
	[EventID] INT NOT NULL,
	FOREIGN KEY ([EventID]) REFERENCES [Event]([EventID]),

	PRIMARY KEY ([ClientID],[EventID]),
)
