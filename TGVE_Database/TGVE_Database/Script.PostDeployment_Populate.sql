/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

IF '$(Populate)' = 'true'
BEGIN

DELETE [Booking];
DELETE [Event];
DELETE [Tour];
DELETE [Client];

INSERT INTO [Client] ([ClientID],[GivenName],[Surname],[Gender]) VALUES
(1,'Taylor','Price','M'),
(2,'Ellyse','Gamble','F'),
(3,'Tilly','Tan','F')

SET IDENTITY_INSERT [Tour] ON;
INSERT INTO [Tour] ([TourID],[TourName],[Description]) VALUES
(1,'West','Tour of wineries and outlets of the Geelong and Otways region'),
(2,'East','Tour of wineries and outlets of the Yarra Valley'),
(3,'South','Tour of wineries and outlets of Mornington Penisula'),
(4,'North','Tour of wineries and outlets of the Bedigo and Castlemaine region')
SET IDENTITY_INSERT [Tour] OFF;

SET IDENTITY_INSERT [Event] ON;
INSERT INTO [Event] ([EventID],[TourID],[EventDate],[fee]) VALUES
(1,4,'2016-01-09',200),
(2,4,'2016-02-13',225),
(3,3,'2016-01-16',200),
(4,1,'2016-01-29',225)
SET IDENTITY_INSERT [Event] OFF;

INSERT INTO [Booking] ([BookingID],[ClientID],[EventID],[Payment],[DateBooked]) VALUES
(1,1,1,200,'2015-12-10'),
(2,2,1,200,'2015-12-16'),
(3,1,2,225,'2016-01-08'),
(4,2,2,225,'2016-01-14'),
(5,3,2,225,'2016-02-03'),
(6,1,3,200,'2015-12-10'),
(7,2,3,200,'2015-12-18'),
(8,3,3,200,'2016-01-09'),
(9,2,4,200,'2015-12-17'),
(10,3,4,200,'2015-12-18')

END