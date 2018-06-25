CREATE TABLE [dbo].[Client]
(
	[ClientID] INT NOT NULL PRIMARY KEY, 
    [GivenName] NCHAR(50) NOT NULL, 
    [Surname] NCHAR(50) NOT NULL, 
    [Gender] CHAR(1) NULL

	CONSTRAINT [GenderMorF] CHECK ([Gender] IN('M','F'))	
)
