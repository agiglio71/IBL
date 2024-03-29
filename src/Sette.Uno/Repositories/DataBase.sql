/****** Object:  Table [dbo].[Address]    Script Date: 24/06/2019 13:52:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[AddressID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[AddressLine1] [nvarchar](60) NOT NULL,
	[AddressLine2] [nvarchar](60) NULL,
	[City] [nvarchar](30) NOT NULL,
	[StateProvince] [nvarchar](50) NOT NULL,
	[CountryRegion] [nvarchar](50) NOT NULL,
	[PostalCode] [nvarchar](15) NOT NULL,
 CONSTRAINT [PK_Address_AddressID] PRIMARY KEY CLUSTERED 
(
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 24/06/2019 13:52:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[CustomerID] [int] IDENTITY(1,1) NOT FOR REPLICATION NOT NULL,
	[NameStyle] [bit] NOT NULL,
	[Title] [nvarchar](8) NULL,
	[FirstName] [nvarchar](50) NOT NULL,
	[MiddleName] [nvarchar](50) NULL,
	[LastName] [nvarchar](50) NOT NULL,
	[Suffix] [nvarchar](10) NULL,
	[CompanyName] [nvarchar](128) NULL,
	[SalesPerson] [nvarchar](256) NULL,
	[EmailAddress] [nvarchar](50) NULL,
	[Phone] [nvarchar](25) NULL,
 CONSTRAINT [PK_Customer_CustomerID] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CustomerAddress]    Script Date: 24/06/2019 13:52:36 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CustomerAddress](
	[CustomerID] [int] NOT NULL,
	[AddressID] [int] NOT NULL,
	[AddressType] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_CustomerAddress_CustomerID_AddressID] PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC,
	[AddressID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Address] ON 
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (9, N'8713 Yosemite Ct.', NULL, N'Bothell', N'Washington', N'United States', N'98011')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (11, N'1318 Lasalle Street', NULL, N'Bothell', N'Washington', N'United States', N'98011')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (25, N'9178 Jumping St.', NULL, N'Dallas', N'Texas', N'United States', N'75201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (28, N'9228 Via Del Sol', NULL, N'Phoenix', N'Arizona', N'United States', N'85004')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (32, N'26910 Indela Road', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (185, N'2681 Eagle Peak', NULL, N'Bellevue', N'Washington', N'United States', N'98004')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (297, N'7943 Walnut Ave', NULL, N'Renton', N'Washington', N'United States', N'98055')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (445, N'6388 Lake City Way', NULL, N'Burnaby', N'British Columbia', N'Canada', N'V5A 3A6')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (446, N'52560 Free Street', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (447, N'22580 Free Street', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (448, N'2575 Bloor Street East', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V6')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (449, N'Station E', NULL, N'Chalk Riber', N'Ontario', N'Canada', N'K0J 1J0')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (450, N'575 Rue St Amable', NULL, N'Quebec', N'Quebec', N'Canada', N'G1R')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (451, N'2512-4th Ave Sw', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (452, N'55 Lakeshore Blvd East', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V6')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (453, N'6333 Cote Vertu', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (454, N'3255 Front Street West', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V6')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (455, N'2550 Signet Drive', NULL, N'Weston', N'Ontario', N'Canada', N'M9V 4W3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (456, N'6777 Kingsway', NULL, N'Burnaby', N'British Columbia', N'Canada', N'V5H 3Z7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (457, N'5250-505 Burning St', NULL, N'Vancouver', N'British Columbia', N'Canada', N'V7L 4J4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (458, N'600 Slater Street', NULL, N'Ottawa', N'Ontario', N'Canada', N'K4B 1S2')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (459, N'25575 The Queensway', NULL, N'Etobicoke', N'Ontario', N'Canada', N'M9W 3P3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (460, N'2521 McPherson Street', NULL, N'Markham', N'Ontario', N'Canada', N'L3S 3K2')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (461, N'2560 Bay Street', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (462, N'630 University Avenue', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (463, N'992 St Clair Ave East', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (464, N'99, Rue Saint-pierre', NULL, N'Pnot-Rouge', N'Quebec', N'Canada', N'J1E 2T7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (465, N'25245 Rue Sherbrooke Ouest', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (466, N'655-4th Ave S.W.', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (467, N'25900-700-9th Ave S.W.', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (468, N'Po Box 83270', NULL, N'Vancouver', N'British Columbia', N'Canada', N'V7L 4J4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (469, N'400-25155 West Pender St', NULL, N'Vancouver', N'British Columbia', N'Canada', N'V7L 4J4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (470, N'2511 Baker Road', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (471, N'770 Notre Datme Quest Bureau 800', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (472, N'250551 Shellbridge Way', NULL, N'Richmond', N'British Columbia', N'Canada', N'V6B 3P7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (473, N'595 Burning Street', NULL, N'Vancouver', N'British Columbia', N'Canada', N'V7L 4J4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (474, N'252345 8810th Avenue', NULL, N'Surrey', N'British Columbia', N'Canada', N'V3T 4W3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (475, N'2512-410th Avenue S.W.', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (476, N'258 King Street East', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (477, N'6th Floor Ferguson Block', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (478, N'2545 King Street West', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (479, N'2550 Middlefield Road', NULL, N'Scarborough', N'Ontario', N'Canada', N'M1V 4M2')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (480, N'25 First Canadian Place', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (481, N'65 Gamelin Street', NULL, N'Hull', N'Quebec', N'Canada', N'8Y')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (482, N'2500 University Avenue', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (483, N'955 Green Valley Crescent', NULL, N'Ottawa', N'Ontario', N'Canada', N'K4B 1S1')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (484, N'2510 Crew Court', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (485, N'9900-6400 Boul, Taschereau', NULL, N'Brossard', N'Quebec', N'Canada', N'J4Z 1R4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (486, N'600 Boul. Rene-levesque Ouest', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (487, N'9259 - 1110th Avenue Sw', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (488, N'45259 Canada Way', NULL, N'Burnaby', N'British Columbia', N'Canada', N'V5G 4S4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (489, N'9960 King Street E.', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (490, N'9979 Bayview Drive', NULL, N'Barrie', N'Ontario', N'Canada', N'L4N')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (491, N'20225 Lansing Ave', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (492, N'99954 Boul. Laurier, Local 060, Place', NULL, N'Sainte-Foy', N'Quebec', N'Canada', N'G1W')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (493, N'6th Floor 5250 Main Street', NULL, N'Winnipeg', N'Manitoba', N'Canada', N'R3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (494, N'Box 99354 300 Union Street', NULL, N'Saint John', N'Brunswick', N'Canada', N'E2P 1E3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (495, N'Suite 800 2530 Slater Street', NULL, N'Ottawa', N'Ontario', N'Canada', N'K4B 1T7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (496, N'Suite 500 995 W. 11th Avenue', NULL, N'Mississauga', N'Ontario', N'Canada', N'L5A 1H6')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (497, N'#9900 2700 Production Way', NULL, N'Burnaby', N'British Columbia', N'Canada', N'V5A 4X1')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (498, N'25537 Hillside Avenue', NULL, N'Victoria', N'British Columbia', N'Canada', N'V8V')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (499, N'Suite 2502 410 Albert Street', NULL, N'Waterloo', N'Ontario', N'Canada', N'N2V')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (500, N'5700 Explorer Drive', NULL, N'Mississauga', N'Ontario', N'Canada', N'L4W 5J3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (501, N'965 De La Gauchetiere West', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (502, N'No. 25400 10665 Jasper Avenue', NULL, N'Edmonton', N'Alberta', N'Canada', N'T5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (503, N'P.O. Box 44000', NULL, N'Winnipeg', N'Manitoba', N'Canada', N'R3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (504, N'Suite 99320 255 - 510th Avenue S.W.', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (505, N'6400, 888 - 3rd Avenue', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (506, N'255117 - 101 Avenue', NULL, N'Surrey', N'British Columbia', N'Canada', N'V3T 4W3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (507, N'975 Princess Street', NULL, N'Kingston', N'Ontario', N'Canada', N'7L')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (508, N'2900 - 25055 Dunning Street', NULL, N'Vancouver', N'British Columbia', N'Canada', N'V7L 4J4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (509, N'Suite 25800 3401 - 10810th Avenue', NULL, N'Surrey', N'British Columbia', N'Canada', N'V3T 4W3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (510, N'750 Philip Street', NULL, N'Waterloo', N'Ontario', N'Canada', N'N2V')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (511, N'Bureau 9900 825, Avenue Querbes', NULL, N'Outremont', N'Quebec', N'Canada', N'H1Y 2G5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (512, N'700 Bureau Road', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (513, N'253711 Mayfield Place, Unit 150', NULL, N'Richmond', N'British Columbia', N'Canada', N'V6B 3P7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (514, N'63 West Beaver Creek', NULL, N'Richmond Hill', N'Ontario', N'Canada', N'L4E 3M5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (515, N'9900 Ronson Drive', NULL, N'Etobicoke', N'Ontario', N'Canada', N'M9W 3P3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (516, N'251 Indell Lane', NULL, N'Brampton', N'Ontario', N'Canada', N'L6W 2T7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (517, N'2573 Dufferin Street', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (518, N'995 Crescent', NULL, N'Richmond Hill', N'Ontario', N'Canada', N'L4E 3M5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (519, N'2500-622 5th Ave Sw', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (520, N'6700 Boul Taschereau', NULL, N'Brossard', N'Quebec', N'Canada', N'J4Z 1C5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (521, N'55 Standish Court', NULL, N'Mississauga', N'Ontario', N'Canada', N'L5B 3V4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (522, N'43251 Viking Way, Unit 130', NULL, N'Richmond', N'British Columbia', N'Canada', N'V6B 3P7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (523, N'46990 Viking Way', NULL, N'Richmond', N'British Columbia', N'Canada', N'V6B 3P7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (524, N'9693 Louis H Lafontaine', NULL, N'Ville De''anjou', N'Quebec', N'Canada', N'J1G 2R3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (525, N'69251 Creditview Road', NULL, N'Mississauga', N'Ontario', N'Canada', N'L5B 3V4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (526, N'251420a 170th Street', NULL, N'Edmonton', N'Alberta', N'Canada', N'T5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (527, N'252851 Rowan Place', NULL, N'Richmond', N'British Columbia', N'Canada', N'V6B 3P7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (528, N'5990 Avebury Road', NULL, N'Mississauga', N'Ontario', N'Canada', N'L5B 3V4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (529, N'254480 River Rd', NULL, N'Richmond', N'British Columbia', N'Canada', N'V6B 3P7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (530, N'Suite #9902', NULL, N'North York', N'Ontario', N'Canada', N'M4C 4K6')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (531, N'5th Floor, 79 Place D''armes', NULL, N'Kingston', N'Ontario', N'Canada', N'7L')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (532, N'#500-75 O''Connor Street', NULL, N'Ottawa', N'Ontario', N'Canada', N'K4B 1S2')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (533, N'4400 March Road', NULL, N'Kanata', N'Ontario', N'Canada', N'K2L 1H5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (534, N'Depot 80', NULL, N'Sillery', N'Quebec', N'Canada', N'G1T')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (535, N'250 Kingsbridge Garden Circle', NULL, N'Mississauga', N'Ontario', N'Canada', N'L5B 3V4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (536, N'No. 2000-25080 Beaver Hall Hill', NULL, N'Quebec', N'Quebec', N'Canada', N'G1R')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (537, N'No. 25800-130 King Street West', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (538, N'25 Danger Street West', N'Floor 7', N'Toronto', N'Ontario', N'Canada', N'M4B 1V5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (539, N'6th Floor, 25st Canadian Place', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (540, N'254 Colonnade Road', NULL, N'Nepean', N'Ontario', N'Canada', N'K2J 2W5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (541, N'25981 College Street', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H5')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (542, N'5 place Ville-Marie', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (543, N'6030 Conroy Road', NULL, N'Ottawa', N'Ontario', N'Canada', N'K4B 1S3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (544, N'30025 Wayburne Drive, Suite 275', NULL, N'Burnaby', N'British Columbia', N'Canada', N'V5G 4W1')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (545, N'999 West Georgia St.', NULL, N'Vancouver', N'Ontario', N'Canada', N'V5T 1Y9')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (546, N'250333 Southport Road, S.W.', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (547, N'7000 Victoria Park Avenue', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (548, N'63 Free St.', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (549, N'609 Evans Avenue', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (550, N'2520 Flanders Road', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (551, N'32605 West 252 Mile Road, Suite 250', NULL, N'Aurora', N'Ontario', N'Canada', N'L4G 7N6')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (552, N'25730, boul. St-Régis', NULL, N'Dorval', N'Quebec', N'Canada', N'H9P 1H1')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (553, N'253131 Lake Frasier Drive, Office No. 2', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (554, N'9984 Wellington Street', NULL, N'Ottawa', N'Ontario', N'Canada', N'K4B 1S2')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (555, N'9950 Ferrand Drive, 9th Floor', NULL, N'Toronto', N'Ontario', N'Canada', N'M4B 1V4')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (556, N'990th Floor 700 De La GauchetiSre Ou', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H3')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (557, N'660 Saint-Jacques, Bureau 400', NULL, N'Montreal', N'Quebec', N'Canada', N'H1Y 2H8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (558, N'67255 - 8th Street N.E., Suite 350', NULL, N'Calgary', N'Alberta', N'Canada', N'T2P 2G8')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (559, N'12345 Sterling Avenue', NULL, N'Irving', N'Texas', N'United States', N'75061')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (560, N'800 Interchange Blvd.', N'Suite 2501', N'Austin', N'Texas', N'United States', N'78701')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (561, N'90025 Sterling St', NULL, N'Irving', N'Texas', N'United States', N'75061')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (562, N'2505 Gateway Drive', NULL, N'North Sioux City', N'South Dakota', N'United States', N'57049')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (563, N'74400 France Avenue South', NULL, N'Edina', N'Minnesota', N'United States', N'55436')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (564, N'509 Nafta Boulevard', NULL, N'Laredo', N'Texas', N'United States', N'78040')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (565, N'25149 Howard Dr', NULL, N'West Chicago', N'Illinois', N'United States', N'60185')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (566, N'63 W Monroe', NULL, N'Chicago', N'Illinois', N'United States', N'60610')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (567, N'Corporate Office', NULL, N'Garland', N'Texas', N'United States', N'75040')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (568, N'25269 N. Wood Dale Rd', NULL, N'Wood Dale', N'Illinois', N'United States', N'60191')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (569, N'Sapp Road West', NULL, N'Round Rock', N'Texas', N'United States', N'78664')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (570, N'52500 Liberty Way', NULL, N'Fort Worth', N'Texas', N'United States', N'76102')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (571, N'25550 Executive Dr', NULL, N'Elgin', N'Illinois', N'United States', N'60120')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (572, N'P.O. Box 6256916', NULL, N'Dallas', N'Texas', N'United States', N'75201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (573, N'25269 Wood Dale Rd.', NULL, N'Wood Dale', N'Illinois', N'United States', N'60191')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (574, N'Po Box 8259024', NULL, N'Dallas', N'Texas', N'United States', N'75201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (575, N'42500 W 76th St', NULL, N'Chicago', N'Illinois', N'United States', N'60610')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (576, N'4255 East Lies Road', NULL, N'Carol Stream', N'Illinois', N'United States', N'60188')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (577, N'2500 North Stemmons Freeway', NULL, N'Dallas', N'Texas', N'United States', N'75201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (578, N'220 Mercy Drive', NULL, N'Garland', N'Texas', N'United States', N'75040')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (579, N'25 N State St', NULL, N'Chicago', N'Illinois', N'United States', N'60610')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (580, N'2509 W. Frankford', NULL, N'Carrollton', N'Texas', N'United States', N'75006')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (581, N'Po Box 8035996', NULL, N'Dallas', N'Texas', N'United States', N'75201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (582, N'5700 Legacy Dr', NULL, N'Plano', N'Texas', N'United States', N'75074')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (583, N'625 W Jackson Blvd. Unit 2502', NULL, N'Chicago', N'Illinois', N'United States', N'60610')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (584, N'250880 Baur Blvd', NULL, N'Saint Louis', N'Missouri', N'United States', N'63103')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (585, N'Noah Lane', NULL, N'Chicago', N'Illinois', N'United States', N'60610')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (586, N'6030 Robinson Road', NULL, N'Jefferson City', N'Missouri', N'United States', N'65101')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (587, N'25500 Old Spanish Trail', NULL, N'Houston', N'Texas', N'United States', N'77003')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (588, N'99828 Routh Street, Suite 825', NULL, N'Dallas', N'Texas', N'United States', N'75201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (589, N'One Dancing, Rr No. 25', N'Box 8033', N'Round Rock', N'Texas', N'United States', N'78664')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (590, N'9995 West Central Entrance', NULL, N'Duluth', N'Minnesota', N'United States', N'55802')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (591, N'48255 I-10 E. @ Eastpoint Blvd.', NULL, N'Baytown', N'Texas', N'United States', N'77520')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (592, N'9903 Highway 6 South', NULL, N'Houston', N'Texas', N'United States', N'77003')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (593, N'2345 North Freeway', NULL, N'Houston', N'Texas', N'United States', N'77003')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (594, N'123 W. Lake Ave.', NULL, N'Peoria', N'Illinois', N'United States', N'61606')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (595, N'660 Lindbergh', NULL, N'Saint Louis', N'Missouri', N'United States', N'63103')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (596, N'72540 Blanco Rd.', NULL, N'San Antonio', N'Texas', N'United States', N'78204')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (597, N'99450 Highway 59 North', NULL, N'Humble', N'Texas', N'United States', N'77338')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (598, N'455 256th St.', NULL, N'Moline', N'Illinois', N'United States', N'61265')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (599, N'70 N.W. Plaza', NULL, N'Saint Ann', N'Missouri', N'United States', N'63074')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (600, N'25095 W. Florissant', NULL, N'Ferguson', N'Missouri', N'United States', N'63135')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (601, N'6996 South Lindbergh', NULL, N'Saint Louis', N'Missouri', N'United States', N'63103')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (602, N'6425 Nw Loop 410', NULL, N'San Antonio', N'Texas', N'United States', N'78204')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (603, N'9500b E. Central Texas Expressway', NULL, N'Killeen', N'Texas', N'United States', N'76541')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (604, N'1200 First Ave.', NULL, N'Joliet', N'Illinois', N'United States', N'60433')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (605, N'7760 N. Pan Am Expwy', NULL, N'San Antonio', N'Texas', N'United States', N'78204')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (606, N'99433 S. Greenbay Rd.', NULL, N'Racine', N'Wisconsin', N'United States', N'53182')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (607, N'25220 Airline Road', NULL, N'Corpus Christi', N'Texas', N'United States', N'78404')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (608, N'25306 Harvey Rd.', NULL, N'College Station', N'Texas', N'United States', N'77840')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (609, N'3900 S. 997th St.', NULL, N'Milwaukee', N'Wisconsin', N'United States', N'53202')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (610, N'44025 W. Empire', NULL, N'Denby', N'South Dakota', N'United States', N'57716')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (611, N'23025 S.W. Military Rd.', NULL, N'San Antonio', N'Texas', N'United States', N'78204')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (612, N'Ring Plaza', NULL, N'Norridge', N'Illinois', N'United States', N'60706')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (613, N'Lakeline Mall', NULL, N'Cedar Park', N'Texas', N'United States', N'78613')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (614, N'Town East Center', NULL, N'Mesquite', N'Texas', N'United States', N'75149')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (615, N'Fountains On The Lake', NULL, N'Stafford', N'Texas', N'United States', N'77477')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (616, N'Southwest Outlet', NULL, N'Hillsboro', N'Texas', N'United States', N'76645')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (617, N'Johnson Creek', NULL, N'Johnson Creek', N'Wisconsin', N'United States', N'53038')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (618, N'Blue Ridge Mall', NULL, N'Kansas City', N'Missouri', N'United States', N'64106')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (619, N'First Colony Mall', NULL, N'Sugar Land', N'Texas', N'United States', N'77478')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (620, N'Horizon Outlet', NULL, N'Woodbury', N'Minnesota', N'United States', N'55125')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (621, N'Tanger Factory', NULL, N'Branch', N'Minnesota', N'United States', N'55056')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (622, N'Management Mall', NULL, N'San Antonio', N'Texas', N'United States', N'78204')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (623, N'Ohms Road', NULL, N'Houston', N'Texas', N'United States', N'77003')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (624, N'Factory Merchants', NULL, N'Branson', N'Missouri', N'United States', N'65616')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (625, N'Cedar Creek Stores', NULL, N'Mosinee', N'Wisconsin', N'United States', N'54455')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (626, N'Lone Star Factory', NULL, N'La Marque', N'Texas', N'United States', N'77568')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (627, N'Sports Stores @ Tuscola', NULL, N'Tuscola', N'Illinois', N'United States', N'61953')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (628, N'City Center', NULL, N'Minneapolis', N'Minnesota', N'United States', N'55402')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (629, N'St. Louis Marketplace', NULL, N'Saint Louis', N'Missouri', N'United States', N'63103')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (630, N'Lincoln Square', NULL, N'Arlington', N'Texas', N'United States', N'76010')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (631, N'Kansas City Factory Outlet', NULL, N'Odessa', N'Missouri', N'United States', N'64076')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (632, N'Fiesta Trail Shopping Center', NULL, N'San Antonio', N'Texas', N'United States', N'78204')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (633, N'Medford Outlet Center', NULL, N'Medford', N'Minnesota', N'United States', N'55049')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (634, N'Ward Parkway Center', NULL, N'Kansas City', N'Missouri', N'United States', N'64106')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (635, N'93-2501, Blackfriars Road,', NULL, N'London', N'England', N'United Kingdom', N'SE1 8HL')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (636, N'Science Park South, Birchwood', N'Stanford House', N'Warrington', N'England', N'United Kingdom', N'WA3 7BH')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (637, N'Phoenix Way, Cirencester', NULL, N'Gloucestershire', N'England', N'United Kingdom', N'GL7 1RY')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (638, N'255 Irving Street', NULL, N'London', N'England', N'United Kingdom', N'C2H 7AU')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (639, N'Garamonde Drive, Wymbush', N'PO Box 4023', N'Milton Keynes', N'England', N'United Kingdom', N'MK8 8ZD')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (640, N'251 The Metro Center', NULL, N'Wokingham', N'England', N'United Kingdom', N'RG41 1QW')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (641, N'Bradford', NULL, N'W. York', N'England', N'United Kingdom', N'BD1 4SJ')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (642, N'Galashiels', NULL, N'Liverpool', N'England', N'United Kingdom', N'L4 4HB')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (643, N'Banbury', NULL, N'Oxon', N'England', N'United Kingdom', N'OX16 8RS')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (644, N'Bradford', N'Raven House, Kingsgate', N'W. York', N'England', N'United Kingdom', N'BD1 4SJ')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (645, N'Garamonde Drive, Wymbush', N'P.O. Box 803', N'Milton Keynes', N'England', N'United Kingdom', N'MK8 8ZD')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (646, N'Butterfield Hse, 7-251 Chapel St', NULL, N'Lancaster', N'England', N'United Kingdom', N'LA1 1LN')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (647, N'Wade Road', NULL, N'Basingstoke Hants', N'England', N'United Kingdom', N'RG24 8PL')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (648, N'586 Fulham Road,', NULL, N'London', N'England', N'United Kingdom', N'SW6 SBY')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (649, N'Knaves Beech Ind.', NULL, N'High Wycombe', N'England', N'United Kingdom', N'HP10 9QY')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (650, N'Elmhurst Road, Goring', NULL, N'Reading', N'England', N'United Kingdom', N'RG7 5H7')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (651, N'New Millhouse, 2583 Milton Park', NULL, N'Abingdon', N'England', N'United Kingdom', N'OX14 4SE')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (652, N'Wymbush', NULL, N'Milton Keynes', N'England', N'United Kingdom', N'MK8 8DF')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (653, N'Burgess Hill', N'Edward Way', N'West Sussex', N'England', N'United Kingdom', N'RH15 9UD')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (654, N'308-3250 Casting Road', NULL, N'York', N'England', N'United Kingdom', N'Y024 1GF')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (655, N'Wharfdale Road', NULL, N'Berkshire', N'England', N'United Kingdom', N'RG11 5TP')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (656, N'7 Pioneer Business Park', NULL, N'York', N'England', N'United Kingdom', N'Y03 4TN')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (657, N'Unit 99a Battery Retail Pk', NULL, N'Birmingham', N'England', N'United Kingdom', N'B29 6SL')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (658, N'Ellesfield Ave', NULL, N'Bracknell', N'England', N'United Kingdom', N'RG12 8TB')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (659, N'Warrington Ldc Unit 25/2', NULL, N'Woolston', N'England', N'United Kingdom', N'WA1 4SY')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (660, N'6 The Farm, Liberty Road', NULL, N'Maidenhead', N'England', N'United Kingdom', N'SL67RJ')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (661, N'725a The Arches', NULL, N'Berks', N'England', N'United Kingdom', N'SL4 1RH')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (662, N'Paramount House', NULL, N'London', N'England', N'United Kingdom', N'W1N 9FA')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (663, N'2524 Barlby Road', NULL, N'London', N'England', N'United Kingdom', N'W10 6BL')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (664, N'99-3 Forest Works', NULL, N'London', N'England', N'United Kingdom', N'E17 6JF')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (665, N'46-44 Albemarle Street', NULL, N'London', N'England', N'United Kingdom', N'W1X3SE')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (666, N'399 Clearing Green', NULL, N'London', N'England', N'United Kingdom', N'EC1R 0DU')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (667, N'997b Tradescant Road', NULL, N'London', N'England', N'United Kingdom', N'SW8 1XD')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (668, N'2574 Milton Park', NULL, N'Oxford', N'England', N'United Kingdom', N'OX14 4SE')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (669, N'Internet House, 3399 Science Park', NULL, N'Cambridge', N'England', N'United Kingdom', N'CB4 4BZ')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (670, N'7 Garden House Cloisters, 8 Batters', NULL, N'London', N'England', N'United Kingdom', N'SW8 4BG')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (671, N'25 Hartfield Road, Wimbledon', NULL, N'London', N'England', N'United Kingdom', N'SW19 3RU')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (672, N'99 Dean Street, Soho', NULL, N'London', N'England', N'United Kingdom', N'W1V 5RN')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (673, N'Park House-4th Floor, 2516 Park St.', NULL, N'London', N'England', N'United Kingdom', N'W1Y 3RA')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (674, N'67 Vincent Square, Victoria', NULL, N'London', N'England', N'United Kingdom', N'SW1P 2NU')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (756, N'855 East Main Avenue', NULL, N'Zeeland', N'Michigan', N'United States', N'49464')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (774, N'9920 North Telegraph Rd.', NULL, N'Pontiac', N'Michigan', N'United States', N'48342')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (775, N'46460 West Oaks Drive', NULL, N'Novi', N'Michigan', N'United States', N'48375')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (776, N'997000 Telegraph Rd.', NULL, N'Southfield', N'Michigan', N'United States', N'48034')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (785, N'399700 John R. Rd.', NULL, N'Madison Heights', N'Michigan', N'United States', N'48071')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (786, N'6789 Warren Road', NULL, N'Westland', N'Michigan', N'United States', N'48185')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (788, N'2533 Eureka Rd.', NULL, N'Southgate', N'Michigan', N'United States', N'48195')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (789, N'250000 Eight Mile Road', NULL, N'Detroit', N'Michigan', N'United States', N'48226')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (794, N'998 Forest Road', NULL, N'Saginaw', N'Michigan', N'United States', N'48601')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (795, N'99800 Tittabawasee Rd.', NULL, N'Saginaw', N'Michigan', N'United States', N'48601')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (797, N'678 Eastman Ave.', NULL, N'Midland', N'Michigan', N'United States', N'48640')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (801, N'Horizon Outlet Center', NULL, N'Holland', N'Michigan', N'United States', N'49423')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (806, N'Horizon Outlet Center', NULL, N'Monroe', N'Michigan', N'United States', N'98272')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (810, N'Redford Plaza', NULL, N'Redford', N'Michigan', N'United States', N'48239')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (825, N'Port Huron', NULL, N'Port Huron', N'Michigan', N'United States', N'48060')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (826, N'Kensington Valley Shops', NULL, N'Howell', N'Michigan', N'United States', N'48843')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (832, N'2251 Elliot Avenue', NULL, N'Seattle', N'Washington', N'United States', N'98104')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (833, N'3207 S Grady Way', NULL, N'Renton', N'Washington', N'United States', N'98055')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (834, N'99300 223rd Southeast', NULL, N'Bothell', N'Washington', N'United States', N'98011')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (835, N'259826 Russell Rd. South', NULL, N'Kent', N'Washington', N'United States', N'98031')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (836, N'35525-9th Street Sw', NULL, N'Puyallup', N'Washington', N'United States', N'98371')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (837, N'640 South 994th St. W.', NULL, N'Billings', N'Montana', N'United States', N'59101')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (838, N'25300 Biddle Road', NULL, N'Medford', N'Oregon', N'United States', N'97504')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (839, N'Gateway', NULL, N'Portland', N'Oregon', N'United States', N'97205')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (840, N'Great Northwestern', NULL, N'North Bend', N'Washington', N'United States', N'98045')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (841, N'Washington Square', NULL, N'Portland', N'Oregon', N'United States', N'97205')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (842, N'258101 Nw Evergreen Parkway', NULL, N'Beaverton', N'Oregon', N'United States', N'97005')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (843, N'253950 N.E. 178th Place', NULL, N'Woodinville', N'Washington', N'United States', N'98072')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (844, N'755 Nw Grandstand', NULL, N'Issaquah', N'Washington', N'United States', N'98027')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (845, N'22571 South 2500 East', NULL, N'Idaho Falls', N'Idaho', N'United States', N'83402')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (846, N'257700 Ne 76th Street', NULL, N'Redmond', N'Washington', N'United States', N'98052')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (847, N'25102 Springwater', NULL, N'Wenatchee', N'Washington', N'United States', N'98801')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (848, N'Bldg. 9n/99298', NULL, N'Redmond', N'Washington', N'United States', N'98052')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (849, N'4251 First Avenue', NULL, N'Seattle', N'Washington', N'United States', N'98104')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (850, N'558 S 6th St', NULL, N'Klamath Falls', N'Oregon', N'United States', N'97601')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (851, N'994 Sw Cherry Park Rd', NULL, N'Troutdale', N'Oregon', N'United States', N'97060')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (852, N'25718 Se Sunnyside Rd', NULL, N'Clackamas', N'Oregon', N'United States', N'97015-6403')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (853, N'567 Sw Mcloughlin Blvd', NULL, N'Milwaukie', N'Oregon', N'United States', N'97222')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (854, N'490 Ne 4th St', NULL, N'Renton', N'Washington', N'United States', N'98055')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (855, N'15 East Main', NULL, N'Port Orchard', N'Washington', N'United States', N'98366')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (856, N'3025 E Waterway Blvd', NULL, N'Shelton', N'Washington', N'United States', N'98584')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (857, N'7990 Ocean Beach Hwy.', NULL, N'Longview', N'Washington', N'United States', N'98632')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (858, N'2345 West Spencer Road', NULL, N'Lynnwood', N'Washington', N'United States', N'98036')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (859, N'1050 Oak Street', NULL, N'Seattle', N'Washington', N'United States', N'98104')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (860, N'4927 S Meridian Ave Ste D', NULL, N'Puyallup', N'Washington', N'United States', N'98371')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (861, N'25915 140th Ave Ne', NULL, N'Bellevue', N'Washington', N'United States', N'98004')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (862, N'3307 Evergreen Blvd', N'Ste 1071', N'Washougal', N'Washington', N'United States', N'98671')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (863, N'2507 Pacific Ave S', NULL, N'Tacoma', N'Washington', N'United States', N'98403')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (864, N'67 Rainer Ave S', NULL, N'Renton', N'Washington', N'United States', N'98055')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (865, N'750 Lakeway Dr', NULL, N'Bellingham', N'Washington', N'United States', N'98225')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (866, N'2528 Meridian E', NULL, N'Puyallup', N'Washington', N'United States', N'98371')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (867, N'48995 Evergreen Wy.', NULL, N'Everett', N'Washington', N'United States', N'98201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (868, N'25111 228th St Sw', NULL, N'Bothell', N'Washington', N'United States', N'98011')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (869, N'2583 Se 272nd St', NULL, N'Kent', N'Washington', N'United States', N'98031')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (870, N'409 S. Main Ste. 25', NULL, N'Ellensburg', N'Washington', N'United States', N'98926')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (871, N'2502 Evergreen Ste E', NULL, N'Everett', N'Washington', N'United States', N'98201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (872, N'755 W Washington Ave Ste D', NULL, N'Sequim', N'Washington', N'United States', N'98382')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (873, N'44606 N Division St', NULL, N'Spokane', N'Washington', N'United States', N'99202')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (874, N'2550 Ne Sandy Blvd', NULL, N'Portland', N'Oregon', N'United States', N'97205')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (875, N'2540 Dell Range Blvd', NULL, N'Cheyenne', N'Wyoming', N'United States', N'82001')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (876, N'765 Delridge Way Sw', NULL, N'Seattle', N'Washington', N'United States', N'98104')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (877, N'4781 Highway 95', NULL, N'Sandpoint', N'Idaho', N'United States', N'83864')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (878, N'4210 E Sprague Ave', NULL, N'Spokane', N'Washington', N'United States', N'99202')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (879, N'Valley Mall', NULL, N'Union Gap', N'Washington', N'United States', N'98903')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (880, N'S Sound Ctr Suite 25300', NULL, N'Lacey', N'Washington', N'United States', N'98503')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (881, N'Southgate Mall', NULL, N'Missoula', N'Montana', N'United States', N'59801')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (882, N'Medford', NULL, N'Medford', N'Oregon', N'United States', N'97504')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (883, N'Heritage Mall', NULL, N'Albany', N'Oregon', N'United States', N'97321')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (884, N'Lewis County Mall', NULL, N'Chehalis', N'Washington', N'United States', N'98532')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (885, N'755 Columbia Ctr Blvd', NULL, N'Kennewick', N'Washington', N'United States', N'99337')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (886, N'Lancaster Mall', NULL, N'Salem', N'Oregon', N'United States', N'97301')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (887, N'Lewiston Mall', NULL, N'Lewiston', N'Idaho', N'United States', N'83501')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (888, N'Three Rivers Mall', NULL, N'Kelso', N'Washington', N'United States', N'98626')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (889, N'Eastridge Mall', NULL, N'Casper', N'Wyoming', N'United States', N'82601')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (890, N'Holiday Village Mall', NULL, N'Great Falls', N'Montana', N'United States', N'59401')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (891, N'2526a Tri-Lake Blvd Ne', NULL, N'Kirkland', N'Washington', N'United States', N'98033')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (892, N'Frontier Mall', NULL, N'Cheyenne', N'Wyoming', N'United States', N'82001')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (893, N'White Mountain Mall', NULL, N'Rock Springs', N'Wyoming', N'United States', N'82901')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (894, N'3390 South 23rd St.', NULL, N'Tacoma', N'Washington', N'United States', N'98403')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (895, N'3250 South Meridian', NULL, N'Puyallup', N'Washington', N'United States', N'98371')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (896, N'2255 254th Avenue Se', NULL, N'Albany', N'Oregon', N'United States', N'97321')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (897, N'705 SE Mall Parkway', NULL, N'Everett', N'Washington', N'United States', N'98201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (898, N'700 Se Sunnyside Road', NULL, N'Clackamas', N'Oregon', N'United States', N'97015')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (899, N'North 93270 Newport Highway', NULL, N'Spokane', N'Washington', N'United States', N'99202')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (900, N'25708 Dell Range Blvd.', NULL, N'Cheyenne', N'Wyoming', N'United States', N'82001')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (901, N'No. 60 Bellis Fair Parkway', NULL, N'Bellingham', N'Washington', N'United States', N'98225')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (902, N'950 Gateway Street', NULL, N'Springfield', N'Oregon', N'United States', N'97477')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (903, N'250775 SW Hillsdale Hwy', NULL, N'Beaverton', N'Oregon', N'United States', N'97005')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (904, N'9905 Three Rivers Drive', NULL, N'Kelso', N'Washington', N'United States', N'98626')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (905, N'225 South 314th Street', NULL, N'Federal Way', N'Washington', N'United States', N'98003')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (906, N'7009 Sw Hall Blvd.', NULL, N'Tigard', N'Oregon', N'United States', N'97223')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (907, N'99295 S.e. Tualatin Valley_hwy.', NULL, N'Hillsboro', N'Oregon', N'United States', N'97123')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (988, N'482505 Warm Springs Blvd.', NULL, N'Fremont', N'California', N'United States', N'94536')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (989, N'39933 Mission Oaks Blvd', NULL, N'Camarillo', N'California', N'United States', N'93010')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (990, N'5420 West 22500 South', NULL, N'Salt Lake City', N'Utah', N'United States', N'84101')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (991, N'60025 Bollinger Canyon Road', NULL, N'San Ramon', N'California', N'United States', N'94583')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (992, N'9992 Whipple Rd', NULL, N'Union City', N'California', N'United States', N'94587')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (993, N'Corporate Office', NULL, N'El Segundo', N'California', N'United States', N'90245')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (994, N'25001 Montague Expressway', NULL, N'Milpitas', N'California', N'United States', N'95035')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (995, N'4460 Newport Center Drive', NULL, N'Newport Beach', N'California', N'United States', N'92625')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (996, N'2575 West 2700 South', NULL, N'Salt Lake City', N'Utah', N'United States', N'84101')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (997, N'70259 West Sunnyview Ave', NULL, N'Visalia', N'California', N'United States', N'93291')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (998, N'60750 San Clemente', NULL, N'Hayward', N'California', N'United States', N'94541')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (999, N'Receiving', NULL, N'Fullerton', N'California', N'United States', N'92831')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1000, N'22555 Paseo De Las Americas', NULL, N'San Diego', N'California', N'United States', N'92102')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1001, N'Incom Sports Center', NULL, N'Ontario', N'California', N'United States', N'91764')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1002, N'C/O Starpak, Inc.', NULL, N'Greeley', N'Colorado', N'United States', N'80631')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1003, N'5967 W Las Positas Blvd', NULL, N'Pleasanton', N'California', N'United States', N'94566')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1004, N'25600 E St Andrews Pl', NULL, N'Santa Ana', N'California', N'United States', N'92701')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1005, N'6756 Mowry', NULL, N'Newark', N'California', N'United States', N'94560')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1006, N'25472 Marlay Ave', NULL, N'Fontana', N'California', N'United States', N'92335')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1007, N'77 Beale Street', N'Room 99767c', N'San Francisco', N'California', N'United States', N'94109')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1008, N'910 Main Street.', NULL, N'Sparks', N'Nevada', N'United States', N'89431')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1009, N'2500 N Serene Blvd', N'19th Floor', N'El Segundo', N'California', N'United States', N'90245')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1010, N'5650 West 88th Ave.', NULL, N'Westminster', N'Colorado', N'United States', N'80030')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1011, N'9700 Sisk Road', NULL, N'Modesto', N'California', N'United States', N'95354')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1012, N'789 West Alameda', NULL, N'Westminster', N'Colorado', N'United States', N'80030')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1013, N'54254 Pacific Ave.', NULL, N'Stockton', N'California', N'United States', N'95202')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1014, N'25136 Jefferson Blvd.', NULL, N'Culver City', N'California', N'United States', N'90232')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1015, N'99000 S. Avalon Blvd. Suite 750', NULL, N'Carson', N'California', N'United States', N'90746')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1016, N'72502 Eastern Ave.', NULL, N'Bell Gardens', N'California', N'United States', N'90201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1017, N'2560 E. Newlands Dr', NULL, N'Fernley', N'Nevada', N'United States', N'89408')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1018, N'630 N. Capitol Ave.', NULL, N'San Jose', N'California', N'United States', N'95112')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1019, N'4660 Rodeo Road', NULL, N'Santa Fe', N'New Mexico', N'United States', N'87501')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1020, N'251340 E. South St.', NULL, N'Cerritos', N'California', N'United States', N'90703')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1021, N'440 West Huntington Dr.', NULL, N'Monrovia', N'California', N'United States', N'91016')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1022, N'99235 Hawthorne Blvd.', NULL, N'Torrance', N'California', N'United States', N'90505')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1023, N'870 N. 54th Ave.', NULL, N'Chandler', N'Arizona', N'United States', N'85225')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1024, N'9952 E. Lohman Ave.', NULL, N'Las Cruces', N'New Mexico', N'United States', N'88001')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1025, N'2530 South Colorado Blvd.', NULL, N'Denver', N'Colorado', N'United States', N'80203')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1026, N'955 E. County Line Rd.', NULL, N'Englewood', N'Colorado', N'United States', N'80110')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1027, N'409 Santa Monica Blvd.', NULL, N'Santa Monica', N'California', N'United States', N'90401')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1028, N'Mall Of Orange', NULL, N'Orange', N'California', N'United States', N'92867')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1029, N'Topanga Plaza', NULL, N'Canoga Park', N'California', N'United States', N'91303')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1030, N'Escondido', NULL, N'Escondido', N'California', N'United States', N'92025')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1031, N'Natomas Marketplace', NULL, N'Sacramento', N'California', N'United States', N'95814')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1032, N'Simi @ The Plaza', NULL, N'Simi Valley', N'California', N'United States', N'93065')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1033, N'Lakewood Mall', NULL, N'Lakewood', N'California', N'United States', N'90712')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1034, N'Oxnard Outlet', NULL, N'Oxnard', N'California', N'United States', N'93030')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1035, N'Vista Marketplace', NULL, N'Alhambra', N'California', N'United States', N'91801')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1036, N'Sports Store At Park City', NULL, N'Park City', N'Utah', N'United States', N'84098')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1037, N'North County Square', NULL, N'Vista', N'California', N'United States', N'92084')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1038, N'123 Camelia Avenue', NULL, N'Oxnard', N'California', N'United States', N'93030')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1039, N'Mountain Square', NULL, N'Upland', N'California', N'United States', N'91786')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1040, N'Fox Hills', NULL, N'Culver City', N'California', N'United States', N'90232')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1041, N'Parkway Plaza', NULL, N'El Cajon', N'California', N'United States', N'92020')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1042, N'Stonewood Mall', NULL, N'Downey', N'California', N'United States', N'90241')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1043, N'Hanford Mall', NULL, N'Hanford', N'California', N'United States', N'93230')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1044, N'Ontario Mills', NULL, N'Ontario', N'California', N'United States', N'91764')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1045, N'Nut Tree Factory', NULL, N'Vacaville', N'California', N'United States', N'95688')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1046, N'Rocky Mountain Pines Outlet', NULL, N'Loveland', N'Colorado', N'United States', N'80537')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1047, N'Stevens Creek Shopping Center', NULL, N'San Jose', N'California', N'United States', N'95112')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1048, N'Factory Merchants', NULL, N'Barstow', N'California', N'United States', N'92311')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1049, N'The Citadel Commerce Plaza', NULL, N'City Of Commerce', N'California', N'United States', N'90040')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1050, N'University Town Center', NULL, N'San Diego', N'California', N'United States', N'92102')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1051, N'Pavillion @ Redlands', NULL, N'Redlands', N'California', N'United States', N'92373')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1052, N'San Diego Factory', NULL, N'San Ysidro', N'California', N'United States', N'92173')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1053, N'Pacific West Outlet', NULL, N'Gilroy', N'California', N'United States', N'95020')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1054, N'Belz Factory Outlet', NULL, N'Las Vegas', N'Nevada', N'United States', N'89106')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1055, N'Camarillo Athletic Stores', NULL, N'Camarillo', N'California', N'United States', N'93010')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1056, N'Lake Elisnor Place', NULL, N'Lake Elsinore', N'California', N'United States', N'92530')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1057, N'Norwalk Square', NULL, N'Norwalk', N'California', N'United States', N'90650')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1058, N'Riverside', NULL, N'Sherman Oaks', N'California', N'United States', N'91403')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1059, N'The Quad @ WestView', NULL, N'Whittier', N'California', N'United States', N'90605')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1060, N'Arcadia Crossing', NULL, N'Phoenix', N'Arizona', N'United States', N'85004')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1061, N'Eastern Beltway Center', NULL, N'Las Vegas', N'Nevada', N'United States', N'89106')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1062, N'Factory Stores/tucson', NULL, N'Tucson', N'Arizona', N'United States', N'85701')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1063, N'Viejas Outlet Center', NULL, N'Alpine', N'California', N'United States', N'91901')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1064, N'West Park Plaza', NULL, N'Irvine', N'California', N'United States', N'92614')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1065, N'Factory Stores Of America', NULL, N'Mesa', N'Arizona', N'United States', N'85201')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1066, N'Prime Outlets', NULL, N'Phoenix', N'Arizona', N'United States', N'85004')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1067, N'Bayshore Mall', NULL, N'Eureka', N'California', N'United States', N'95501')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1068, N'7709 West Virginia Avenue', NULL, N'Phoenix', N'Arizona', N'United States', N'85004')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1069, N'6900 Sisk Road', NULL, N'Modesto', N'California', N'United States', N'95354')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1070, N'3250 Baldwin Park Blvd', NULL, N'Baldwin Park', N'California', N'United States', N'91706')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1071, N'5867 Sunrise Boulevard', NULL, N'Citrus Heights', N'California', N'United States', N'95610')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1072, N'6500 East Grant Road', NULL, N'Tucson', N'Arizona', N'United States', N'85701')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1073, N'3065 Santa Margarita Parkway', NULL, N'Trabuco Canyon', N'California', N'United States', N'92679')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1074, N'9920 Bridgepointe Parkway', NULL, N'San Mateo', N'California', N'United States', N'94404')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1075, N'5525 South Hover Road', NULL, N'Longmont', N'Colorado', N'United States', N'80501')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1076, N'8525 South Parker Road', NULL, N'Parker', N'Colorado', N'United States', N'80138')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1077, N'7505 Laguna Boulevard', NULL, N'Elk Grove', N'California', N'United States', N'95624')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1078, N'9909 W. Ventura Boulevard', NULL, N'Camarillo', N'California', N'United States', N'93010')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1079, N'25150 El Camino Real', NULL, N'San Bruno', N'California', N'United States', N'94066')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1080, N'2575 Rocky Mountain Ave.', NULL, N'Loveland', N'Colorado', N'United States', N'80537')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1081, N'25871 North Main Street', NULL, N'Walnut Creek', N'California', N'United States', N'94596')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1082, N'2551 East Warner Road', NULL, N'Gilbert', N'Arizona', N'United States', N'85233')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1083, N'22589 West Craig Road', NULL, N'North Las Vegas', N'Nevada', N'United States', N'89030')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1084, N'25751 University Drive', NULL, N'Vista', N'California', N'United States', N'92084')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1085, N'49925 Crestview Drive N.E.', NULL, N'Rio Rancho', N'New Mexico', N'United States', N'87124')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1086, N'57251 Serene Blvd', NULL, N'Van Nuys', N'California', N'United States', N'91411')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1087, N'253731 West Bell Road', NULL, N'Surprise', N'Arizona', N'United States', N'85374')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1088, N'99040 California Avenue', NULL, N'Sand City', N'California', N'United States', N'93955')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1089, N'25620 Firestone Boulevard', NULL, N'Norwalk', N'California', N'United States', N'90650')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1090, N'25130 South State Street', NULL, N'Sandy', N'Utah', N'United States', N'84070')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1091, N'5500 Grossmont Center Drive', NULL, N'La Mesa', N'California', N'United States', N'91941')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1092, N'99700 Bell Road', NULL, N'Auburn', N'California', N'United States', N'95603')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1093, N'7750 E Marching Rd', NULL, N'Scottsdale', N'Arizona', N'United States', N'85257')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1094, N'25250 N 90th St', NULL, N'Scottsdale', N'Arizona', N'United States', N'85257')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1095, N'9980 S Alma School Road', NULL, N'Chandler', N'Arizona', N'United States', N'85225')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1096, N'6753 Howard Hughes Parkway', NULL, N'Las Vegas', N'Nevada', N'United States', N'89106')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1097, N'Corp Ofc Accts Payable', NULL, N'El Segundo', N'California', N'United States', N'90245')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1098, N'Po Box 252525', NULL, N'Santa Ana', N'California', N'United States', N'92701')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1099, N'62500 Neil Road', NULL, N'Reno', N'Nevada', N'United States', N'89502')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1100, N'4635 S. Harrison Blvd.', NULL, N'Ogden', N'Utah', N'United States', N'84401')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1101, N'825 W 500 S', NULL, N'Bountiful', N'Utah', N'United States', N'84010')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1102, N'603 Gellert Blvd', NULL, N'Daly City', N'California', N'United States', N'94015')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1103, N'2564 S. Redwood Rd.', NULL, N'Riverton', N'Utah', N'United States', N'84065')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1104, N'9927 N. Main St.', NULL, N'Tooele', N'Utah', N'United States', N'84074')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (1105, N'566 S. Main', NULL, N'Cedar City', N'Utah', N'United States', N'84720')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (11380, N'165 North Main', NULL, N'Austin', N'Texas', N'United States', N'78701')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (11381, N'2000 300th Street', NULL, N'Denver', N'Colorado', N'United States', N'80203')
GO
INSERT [dbo].[Address] ([AddressID], [AddressLine1], [AddressLine2], [City], [StateProvince], [CountryRegion], [PostalCode]) VALUES (11382, N'99 Front Street', NULL, N'Minneapolis', N'Minnesota', N'United States', N'55402')
GO
SET IDENTITY_INSERT [dbo].[Address] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (1, 0, N'Mr.', N'Orlando', N'N.', N'Gee', NULL, N'A Bike Store', N'adventure-works\pamela0', N'orlando0@adventure-works.com', N'245-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (2, 0, N'Mr.', N'Keith', NULL, N'Harris', NULL, N'Progressive Sports', N'adventure-works\david8', N'keith0@adventure-works.com', N'170-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (3, 0, N'Ms.', N'Donna', N'F.', N'Carreras', NULL, N'Advanced Bike Components', N'adventure-works\jillian0', N'donna0@adventure-works.com', N'279-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (4, 0, N'Ms.', N'Janet', N'M.', N'Gates', NULL, N'Modular Cycle Systems', N'adventure-works\jillian0', N'janet1@adventure-works.com', N'710-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (5, 0, N'Mr.', N'Lucy', NULL, N'Harrington', NULL, N'Metropolitan Sports Supply', N'adventure-works\shu0', N'lucy0@adventure-works.com', N'828-555-0186')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (6, 0, N'Ms.', N'Rosmarie', N'J.', N'Carroll', NULL, N'Aerobic Exercise Company', N'adventure-works\linda3', N'rosmarie0@adventure-works.com', N'244-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (7, 0, N'Mr.', N'Dominic', N'P.', N'Gash', NULL, N'Associated Bikes', N'adventure-works\shu0', N'dominic0@adventure-works.com', N'192-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (10, 0, N'Ms.', N'Kathleen', N'M.', N'Garza', NULL, N'Rural Cycle Emporium', N'adventure-works\josé1', N'kathleen0@adventure-works.com', N'150-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (11, 0, N'Ms.', N'Katherine', NULL, N'Harding', NULL, N'Sharp Bikes', N'adventure-works\josé1', N'katherine0@adventure-works.com', N'926-555-0159')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (12, 0, N'Mr.', N'Johnny', N'A.', N'Caprio', N'Jr.', N'Bikes and Motorbikes', N'adventure-works\garrett1', N'johnny0@adventure-works.com', N'112-555-0191')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (16, 0, N'Mr.', N'Christopher', N'R.', N'Beck', N'Jr.', N'Bulk Discount Store', N'adventure-works\jae0', N'christopher1@adventure-works.com', N'1 (11) 500 555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (18, 0, N'Mr.', N'David', N'J.', N'Liu', NULL, N'Catalog Store', N'adventure-works\michael9', N'david20@adventure-works.com', N'440-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (19, 0, N'Mr.', N'John', N'A.', N'Beaver', NULL, N'Center Cycle Shop', N'adventure-works\pamela0', N'john8@adventure-works.com', N'521-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (20, 0, N'Ms.', N'Jean', N'P.', N'Handley', NULL, N'Central Discount Store', N'adventure-works\david8', N'jean1@adventure-works.com', N'582-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (21, 0, NULL, N'Jinghao', NULL, N'Liu', NULL, N'Chic Department Stores', N'adventure-works\jillian0', N'jinghao1@adventure-works.com', N'928-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (22, 0, N'Ms.', N'Linda', N'E.', N'Burnett', NULL, N'Travel Systems', N'adventure-works\jillian0', N'linda4@adventure-works.com', N'121-555-0121')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (23, 0, N'Mr.', N'Kerim', NULL, N'Hanif', NULL, N'Bike World', N'adventure-works\shu0', N'kerim0@adventure-works.com', N'216-555-0122')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (24, 0, N'Mr.', N'Kevin', NULL, N'Liu', NULL, N'Eastside Department Store', N'adventure-works\linda3', N'kevin5@adventure-works.com', N'926-555-0164')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (25, 0, N'Mr.', N'Donald', N'L.', N'Blanton', NULL, N'Coalition Bike Company', N'adventure-works\shu0', N'donald0@adventure-works.com', N'357-555-0161')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (28, 0, N'Ms.', N'Jackie', N'E.', N'Blackwell', NULL, N'Commuter Bicycle Store', N'adventure-works\josé1', N'jackie0@adventure-works.com', N'972-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29, 0, N'Mr.', N'Bryan', NULL, N'Hamilton', NULL, N'Cross-Country Riding Supplies', N'adventure-works\josé1', N'bryan2@adventure-works.com', N'344-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30, 0, N'Mr.', N'Todd', N'R.', N'Logan', NULL, N'Cycle Merchants', N'adventure-works\garrett1', N'todd0@adventure-works.com', N'783-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (34, 0, N'Ms.', N'Barbara', N'J.', N'German', NULL, N'Cycles Wholesaler & Mfg.', N'adventure-works\jae0', N'barbara4@adventure-works.com', N'1 (11) 500 555-0181')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (37, 0, N'Mr.', N'Jim', NULL, N'Geist', NULL, N'Two Bike Shops', N'adventure-works\pamela0', N'jim1@adventure-works.com', N'724-555-0161')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (38, 0, N'Ms.', N'Betty', N'M.', N'Haines', NULL, N'Finer Mart', N'adventure-works\david8', N'betty0@adventure-works.com', N'867-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (39, 0, N'Ms.', N'Sharon', N'J.', N'Looney', NULL, N'Fitness Hotel', N'adventure-works\jillian0', N'sharon2@adventure-works.com', N'377-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (40, 0, N'Mr.', N'Darren', NULL, N'Gehring', NULL, N'Journey Sporting Goods', N'adventure-works\jillian0', N'darren0@adventure-works.com', N'417-555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (41, 0, N'Ms.', N'Erin', N'M.', N'Hagens', NULL, N'Distant Inn', N'adventure-works\shu0', N'erin1@adventure-works.com', N'244-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (42, 0, N'Mr.', N'Jeremy', NULL, N'Los', NULL, N'Healthy Activity Store', N'adventure-works\linda3', N'jeremy0@adventure-works.com', N'911-555-0165')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (43, 0, N'Ms.', N'Elsa', NULL, N'Leavitt', NULL, N'Frugal Bike Shop', N'adventure-works\shu0', N'elsa0@adventure-works.com', N'482-555-0174')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (46, 0, N'Mr.', N'David', N'O', N'Lawrence', NULL, N'Gear-Shift Bikes Limited', N'adventure-works\josé1', N'david19@adventure-works.com', N'653-555-0159')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (47, 0, N'Ms.', N'Hattie', N'J.', N'Haemon', NULL, N'Greater Bike Store', N'adventure-works\josé1', N'hattie0@adventure-works.com', N'141-555-0172')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (48, 0, N'Ms.', N'Anita', N'R.', N'Lucerne', NULL, N'Grand Industries', N'adventure-works\garrett1', N'anita0@adventure-works.com', N'164-555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (52, 0, N'Ms.', N'Rebecca', NULL, N'Laszlo', NULL, N'Instruments and Parts Company', N'adventure-works\jae0', N'rebecca2@adventure-works.com', N'1 (11) 500 555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (55, 0, N'Mr.', N'Eric', NULL, N'Lang', NULL, N'Kickstands and Accessories Company', N'adventure-works\pamela0', N'eric6@adventure-works.com', N'932-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (56, 0, N'Mr.', N'Brian', NULL, N'Groth', NULL, N'Latest Accessories Sales', N'adventure-works\david8', N'brian5@adventure-works.com', N'461-555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (57, 0, N'Ms.', N'Judy', N'R.', N'Lundahl', NULL, N'Leading Sales & Repair', N'adventure-works\jillian0', N'judy1@adventure-works.com', N'260-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (58, 0, N'Mr.', N'Peter', NULL, N'Kurniawan', NULL, N'Largest Bike Store', N'adventure-works\jillian0', N'peter4@adventure-works.com', N'436-555-0160')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (59, 0, N'Mr.', N'Douglas', NULL, N'Groncki', NULL, N'Locks Company', N'adventure-works\shu0', N'douglas2@adventure-works.com', N'385-555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (60, 0, N'Mr.', N'Sean', N'J.', N'Lunt', NULL, N'Main Bicycle Services', N'adventure-works\linda3', N'sean4@adventure-works.com', N'183-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (61, 0, N'Mr.', N'Jeffrey', NULL, N'Kurtz', NULL, N'Many Bikes Store', N'adventure-works\shu0', N'jeffrey3@adventure-works.com', N'452-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (64, 0, N'Mr.', N'Vamsi', NULL, N'Kuppa', NULL, N'Metal Clearing House', N'adventure-works\josé1', N'vamsi1@adventure-works.com', N'290-555-0196')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (65, 0, N'Ms.', N'Jane', N'P.', N'Greer', NULL, N'Metro Manufacturing', N'adventure-works\josé1', N'jane2@adventure-works.com', N'737-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (66, 0, N'Mr.', N'Alexander', N'J.', N'Deborde', NULL, N'Neighborhood Store', N'adventure-works\garrett1', N'alexander1@adventure-works.com', N'394-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (70, 0, N'Mr.', N'Deepak', NULL, N'Kumar', NULL, N'Outdoor Aerobic Systems Company', N'adventure-works\jae0', N'deepak0@adventure-works.com', N'1 (11) 500 555-0122')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (73, 0, N'Ms.', N'Margaret', N'T.', N'Krupka', NULL, N'Outdoor Sports Supply', N'adventure-works\pamela0', N'margaret1@adventure-works.com', N'107-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (74, 0, N'Mr.', N'Christopher', N'M.', N'Bright', NULL, N'Parcel Express Delivery Service', N'adventure-works\david8', N'christopher2@adventure-works.com', N'162-555-0166')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (75, 0, N'Ms.', N'Aidan', NULL, N'Delaney', NULL, N'Paint Supply', N'adventure-works\jillian0', N'aidan0@adventure-works.com', N'358-555-0188')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (76, 0, N'Mr.', N'James', N'J.', N'Krow', NULL, N'Out-of-the-Way Hotels', N'adventure-works\jillian0', N'james11@adventure-works.com', N'265-555-0190')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (77, 0, N'Mr.', N'Michael', NULL, N'Brundage', NULL, N'Mechanical Products Ltd.', N'adventure-works\shu0', N'michael13@adventure-works.com', N'128-555-0148')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (78, 0, N'Mr.', N'Stefan', NULL, N'Delmarco', NULL, N'Preferred Bikes', N'adventure-works\linda3', N'stefan0@adventure-works.com', N'819-555-0186')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (79, 0, N'Mr.', N'Mitch', NULL, N'Kennedy', NULL, N'Reasonable Bicycle Sales', N'adventure-works\shu0', N'mitch0@adventure-works.com', N'996-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (82, 0, N'Mr.', N'James', N'D.', N'Kramer', NULL, N'Refined Department Stores', N'adventure-works\josé1', N'james10@adventure-works.com', N'814-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (83, 0, N'Mr.', N'Eric', N'J.', N'Brumfield', NULL, N'Requisite Part Supply', N'adventure-works\josé1', N'eric3@adventure-works.com', N'644-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (84, 0, N'Ms.', N'Della', N'F.', N'Demott Jr', NULL, N'Rewarding Activities Company', N'adventure-works\garrett1', N'della0@adventure-works.com', N'752-555-0185')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (88, 0, N'Ms.', N'Pamala', N'M.', N'Kotc', NULL, N'Closest Bicycle Store', N'adventure-works\jae0', N'pamala0@adventure-works.com', N'1 (11) 500 555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (91, 0, N'Ms.', N'Joy', N'R.', N'Koski', NULL, N'Scooters and Bikes Store', N'adventure-works\pamela0', N'joy0@adventure-works.com', N'810-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (92, 0, N'Ms.', N'Jovita', N'A.', N'Carmody', NULL, N'Sports Commodities', N'adventure-works\david8', N'jovita0@adventure-works.com', N'646-555-0137')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (93, 0, N'Mr.', N'Prashanth', NULL, N'Desai', NULL, N'Stationary Bikes and Stands', N'adventure-works\jillian0', N'prashanth0@adventure-works.com', N'138-555-0156')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (94, 0, N'Mr.', N'Scott', NULL, N'Konersmann', NULL, N'Specialty Sports Store', N'adventure-works\jillian0', N'scott6@adventure-works.com', N'556-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (95, 0, N'Ms.', N'Jane', N'N.', N'Carmichael', NULL, N'Rural Department Store', N'adventure-works\shu0', N'jane0@adventure-works.com', N'716-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (96, 0, N'Ms.', N'Bonnie', N'B.', N'Lepro', NULL, N'More Bikes!', N'adventure-works\linda3', N'bonnie2@adventure-works.com', N'354-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (97, 0, N'Mr.', N'Eugene', NULL, N'Kogan', NULL, N'Mountain Bike Center', N'adventure-works\shu0', N'eugene2@adventure-works.com', N'136-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (100, 0, N'Mr.', N'Kirk', N'T', N'King', NULL, N'Up-To-Date Sports', N'adventure-works\josé1', N'kirk2@adventure-works.com', N'979-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (101, 0, N'Mr.', N'William', N'J.', N'Conner', NULL, N'Urban Sports Emporium', N'adventure-works\josé1', N'william1@adventure-works.com', N'383-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (102, 0, N'Ms.', N'Linda', NULL, N'Leste', NULL, N'National Manufacturing', N'adventure-works\garrett1', N'linda7@adventure-works.com', N'493-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (106, 0, N'Ms.', N'Andrea', N'A.', N'Thomsen', NULL, N'West Side Mart', N'adventure-works\jae0', N'andrea1@adventure-works.com', N'1 (11) 500 555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (109, 0, N'Mr.', N'Daniel', N'P.', N'Thompson', NULL, N'Travel Sports', N'adventure-works\pamela0', N'daniel2@adventure-works.com', N'247-555-0197')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (110, 0, N'Ms.', N'Kendra', N'N.', N'Thompson', NULL, N'Vintage Sport Boutique', N'adventure-works\david8', N'kendra0@adventure-works.com', N'464-555-0188')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (111, 0, N'Mr.', N'Scott', N'A.', N'Colvin', NULL, N'Westside Cycle Store', N'adventure-works\jillian0', N'scott1@adventure-works.com', N'119-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (112, 0, N'Ms.', N'Elsie', N'L.', N'Lewin', NULL, N'Town Industries', N'adventure-works\jillian0', N'elsie0@adventure-works.com', N'803-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (113, 0, N'Mr.', N'Donald', N'M.', N'Thompson', NULL, N'Trendy Department Stores', N'adventure-works\shu0', N'donald1@adventure-works.com', N'273-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (114, 0, N'Mr.', N'John', N'L.', N'Colon', NULL, N'Two Wheels Cycle Store', N'adventure-works\linda3', N'john14@adventure-works.com', N'397-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (115, 0, N'Mr.', N'George', N'Z.', N'Li', NULL, N'Security Racks and Locks Wholesalers', N'adventure-works\shu0', N'george3@adventure-works.com', N'699-555-0183')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (118, 0, N'Mr.', N'Yale', NULL, N'Li', NULL, N'Rapid Bikes', N'adventure-works\josé1', N'yale0@adventure-works.com', N'316-555-0138')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (119, 0, N'Ms.', N'Phyllis', N'A.', N'Thomas', NULL, N'Red Bicycle Company', N'adventure-works\josé1', N'phyllis2@adventure-works.com', N'667-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (120, 0, N'Mr.', N'Pat', NULL, N'Coleman', NULL, N'Machines & Cycles Store', N'adventure-works\garrett1', N'pat2@adventure-works.com', N'292-555-0128')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (124, 0, N'Ms.', N'Yuhong', NULL, N'Li', NULL, N'Nearby Sporting Goods', N'adventure-works\jae0', N'yuhong1@adventure-works.com', N'1 (11) 500 555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (127, 0, N'Mr.', N'Joseph', N'M.', N'Lique', NULL, N'Front Sporting Goods', N'adventure-works\pamela0', N'joseph2@adventure-works.com', N'119-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (128, 0, N'Ms.', N'Judy', N'J.', N'Thames', NULL, N'Demand Distributors', N'adventure-works\david8', N'judy3@adventure-works.com', N'799-555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (129, 0, N'Ms.', N'Connie', N'L.', N'Coffman', NULL, N'Discount Bicycle Specialists', N'adventure-works\jillian0', N'connie0@adventure-works.com', N'426-555-0181')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (130, 0, N'Mr.', N'Paulo', N'H.', N'Lisboa', NULL, N'Elite Bikes', N'adventure-works\jillian0', N'paulo0@adventure-works.com', N'380-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (131, 0, N'Ms.', N'Vanessa', N'J.', N'Tench', NULL, N'Eighth Bike Store', N'adventure-works\shu0', N'vanessa0@adventure-works.com', N'785-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (132, 0, N'Ms.', N'Teanna', N'M.', N'Cobb', NULL, N'Another Sporting Goods Company', N'adventure-works\linda3', N'teanna0@adventure-works.com', N'661-555-0168')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (133, 0, N'Mr.', N'Michael', NULL, N'Graff', NULL, N'Commercial Sporting Goods', N'adventure-works\shu0', N'michael16@adventure-works.com', N'132-555-0150')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (136, 0, N'Mr.', N'Derek', NULL, N'Graham', NULL, N'Wholesale Parts', N'adventure-works\josé1', N'derek0@adventure-works.com', N'674-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (137, 0, NULL, N'Gytis', N'M', N'Barzdukas', NULL, N'Transportation Options', N'adventure-works\josé1', N'gytis0@adventure-works.com', N'257-555-0119')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (138, 0, N'Ms.', N'Jane', NULL, N'Clayton', NULL, N'South Bike Company', N'adventure-works\garrett1', N'jane1@adventure-works.com', N'206-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (142, 0, N'Mr.', N'Jon', NULL, N'Grande', NULL, N'Riding Cycles', N'adventure-works\jae0', N'jon1@adventure-works.com', N'1 (11) 500 555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (145, 0, N'Mr.', N'Ted', NULL, N'Bremer', NULL, N'Raw Materials Inc', N'adventure-works\pamela0', N'ted0@adventure-works.com', N'962-555-0166')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (146, 0, N'Mr.', N'Richard', NULL, N'Bready', NULL, N'Latest Sports Equipment', N'adventure-works\david8', N'richard1@adventure-works.com', N'340-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (147, 0, N'Ms.', N'Alice', NULL, N'Clark', NULL, N'Local Hardware Factory', N'adventure-works\jillian0', N'alice1@adventure-works.com', N'221-555-0141')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (148, 0, N'Mr.', N'Alan', NULL, N'Brewer', NULL, N'Lots of Bikes Storehouse', N'adventure-works\jillian0', N'alan1@adventure-works.com', N'494-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (149, 0, N'Mr.', N'Cornelius', N'L.', N'Brandon', NULL, N'Initial Bike Company', N'adventure-works\shu0', N'cornelius0@adventure-works.com', N'229-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (150, 0, N'Ms.', N'Jill', N'J.', N'Christie', NULL, N'Fleet Bikes', N'adventure-works\linda3', N'jill1@adventure-works.com', N'927-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (151, 0, N'Mr.', N'Walter', N'J.', N'Brian', N'IV', N'Futuristic Bikes', N'adventure-works\shu0', N'walter0@adventure-works.com', N'163-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (154, 0, N'Mr.', N'Carlton', N'M.', N'Carlisle', NULL, N'Camping and Sports Store', N'adventure-works\josé1', N'carlton0@adventure-works.com', N'193-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (155, 0, N'Mr.', N'Joseph', N'N.', N'Castellucio', NULL, N'Corner Bicycle Supply', N'adventure-works\josé1', N'joseph1@adventure-works.com', N'180-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (156, 0, N'Mr.', N'Lester', N'J.', N'Bowman', N'Sr.', N'Metal Processing Company', N'adventure-works\garrett1', N'lester0@adventure-works.com', N'844-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (160, 0, N'Ms.', N'Brigid', N'F.', N'Cavendish', NULL, N'Vigorous Sports Store', N'adventure-works\jae0', N'brigid0@adventure-works.com', N'1 (11) 500 555-0178')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (163, 0, N'Mr.', N'Andrew', NULL, N'Cencini', NULL, N'Sports Merchandise', N'adventure-works\pamela0', N'andrew2@adventure-works.com', N'644-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (164, 0, N'Ms.', N'Cindy', N'M.', N'Dodd', NULL, N'Suburban Cycle Shop', N'adventure-works\david8', N'cindy0@adventure-works.com', N'706-555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (165, 0, N'Mr.', N'Randall', NULL, N'Boseman', NULL, N'Third Bike Store', N'adventure-works\jillian0', N'randall0@adventure-works.com', N'383-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (166, 0, N'Ms.', N'Stacey', N'M.', N'Cereghino', NULL, N'Fitness Toy Store', N'adventure-works\jillian0', N'stacey0@adventure-works.com', N'351-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (167, 0, N'Mr.', N'Blaine', NULL, N'Dockter', NULL, N'Farthermost Bike Shop', N'adventure-works\shu0', N'blaine0@adventure-works.com', N'156-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (168, 0, N'Sr.', N'Luis', NULL, N'Bonifaz', NULL, N'Economy Bikes Company', N'adventure-works\linda3', N'luis0@adventure-works.com', N'688-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (169, 0, N'Ms.', N'Brenda', NULL, N'Diaz', NULL, N'Downtown Hotel', N'adventure-works\shu0', N'brenda2@adventure-works.com', N'147-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (172, 0, N'Ms.', N'Gabriele', NULL, N'Dickmann', NULL, N'Certified Sports Supply', N'adventure-works\josé1', N'gabriele0@adventure-works.com', N'835-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (173, 0, N'Mr.', N'Rudolph', N'J.', N'Dillon', N'Sr.', N'Sundry Sporting Goods', N'adventure-works\josé1', N'rudolph0@adventure-works.com', N'722-555-0169')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (174, 0, N'Mr.', N'Michael', N'L.', N'Bohling', NULL, N'Toy Manufacturing Inc', N'adventure-works\garrett1', N'michael12@adventure-works.com', N'838-555-0147')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (178, 0, N'Mr.', N'Dick', NULL, N'Dievendorff', NULL, N'Rampart Amusement Company', N'adventure-works\jae0', N'dick1@adventure-works.com', N'1 (11) 500 555-0193')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (180, 0, N'Ms.', N'Nicky', N'E.', N'Chesnut', NULL, N'Full-Service Bike Store', N'adventure-works\michael9', N'nicky0@adventure-works.com', N'264-555-0164')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (181, 0, N'Mr.', N'Michael', N'J.', N'Lee', NULL, N'Family Entertainment Center', N'adventure-works\pamela0', N'michael18@adventure-works.com', N'396-555-0139')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (182, 0, N'Mr.', N'Stanley', N'A.', N'Alan', N'Jr.', N'Another Bicycle Company', N'adventure-works\david8', N'stanley0@adventure-works.com', N'156-555-0126')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (183, 0, N'Mr.', N'Yao-Qiang', NULL, N'Cheng', NULL, N'This Area Sporting Goods', N'adventure-works\jillian0', N'yao-qiang0@adventure-works.com', N'344-555-0181')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (184, 0, N'Ms.', N'Marjorie', N'M.', N'Lee', NULL, N'Go-cart and Bike Specialists', N'adventure-works\jillian0', N'marjorie0@adventure-works.com', N'306-555-0166')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (185, 0, N'Mr.', N'Sandeep', NULL, N'Kaliyath', NULL, N'Weekend Bike Tours', N'adventure-works\shu0', N'sandeep1@adventure-works.com', N'495-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (186, 0, N'Mr.', N'Pei', NULL, N'Chow', NULL, N'Thrilling Bike Tours', N'adventure-works\linda3', N'pei0@adventure-works.com', N'789-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (187, 0, N'Mr.', N'Frank', NULL, N'Campbell', NULL, N'Trailblazing Sports', N'adventure-works\shu0', N'frank4@adventure-works.com', N'491-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (190, 0, N'Mr.', N'Mark', NULL, N'Lee', NULL, N'Racing Partners', N'adventure-works\josé1', N'mark5@adventure-works.com', N'371-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (191, 0, N'Ms.', N'Sandra', N'T.', N'Kitt', NULL, N'Non-Slip Pedal Company', N'adventure-works\josé1', N'sandra2@adventure-works.com', N'303-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (192, 0, N'Mr.', N'Hao', NULL, N'Chen', NULL, N'Nuts and Bolts Mfg.', N'adventure-works\garrett1', N'hao1@adventure-works.com', N'117-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (196, 0, N'Ms.', N'Jolie', NULL, N'Lenehan', NULL, N'Exhibition Showroom', N'adventure-works\jae0', N'jolie0@adventure-works.com', N'1 (11) 500 555-0126')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (197, 0, N'Ms.', N'Diane', N'F.', N'Krane', NULL, N'Fabrikam Inc., West', N'adventure-works\michael9', N'diane4@adventure-works.com', N'224-555-0126')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (198, 0, N'Mr.', N'Payton', N'P.', N'Benson', NULL, N'Field Trip Inc', N'adventure-works\michael9', N'payton0@adventure-works.com', N'528-555-0183')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (199, 0, N'Mr.', N'Roger', NULL, N'Lengel', NULL, N'Authorized Bike Sales and Rental', N'adventure-works\pamela0', N'roger1@adventure-works.com', N'947-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (200, 0, N'Ms.', N'Peggy', N'J.', N'Justice', NULL, N'Basic Bike Company', N'adventure-works\david8', N'peggy0@adventure-works.com', N'170-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (201, 0, N'Ms.', N'Edna', N'J.', N'Benson', NULL, N'Unsurpassed Bikes', N'adventure-works\jillian0', N'edna0@adventure-works.com', N'789-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (202, 0, NULL, N'A.', N'Francesca', N'Leonetti', NULL, N'Two-Seater Bikes', N'adventure-works\jillian0', N'a0@adventure-works.com', N'645-555-0193')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (203, 0, N'Ms.', N'Jean', NULL, N'Jordan', NULL, N'Separate Parts Corporation', N'adventure-works\shu0', N'jean3@adventure-works.com', N'207-555-0129')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (204, 0, N'Mr.', N'Ido', NULL, N'Ben-Sachar', NULL, N'Traction Tire Company', N'adventure-works\linda3', N'ido0@adventure-works.com', N'973-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (205, 0, N'Mr.', N'Frank', NULL, N'Mart¡nez', NULL, N'Rally Master Company Inc', N'adventure-works\shu0', N'frank5@adventure-works.com', N'171-555-0147')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (208, 0, N'Mr.', N'Steve', NULL, N'Masters', NULL, N'Professional Cyclists', N'adventure-works\josé1', N'steve2@adventure-works.com', N'154-555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (209, 0, N'Mr.', N'Robert', N'E.', N'Jones', NULL, N'Purple Bicycle Company', N'adventure-works\josé1', N'robert6@adventure-works.com', N'595-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (210, 0, N'Mr.', N'Josh', NULL, N'Barnhill', NULL, N'Gasless Cycle Shop', N'adventure-works\garrett1', N'josh0@adventure-works.com', N'584-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (214, 0, N'Ms.', N'Jennifer', N'J.', N'Maxham', NULL, N'Exclusive Bicycle Mart', N'adventure-works\jae0', N'jennifer1@adventure-works.com', N'1 (11) 500 555-0175')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (217, 0, N'Mr.', N'Chris', NULL, N'Maxwell', NULL, N'City Manufacturing', N'adventure-works\pamela0', N'chris6@adventure-works.com', N'642-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (218, 0, N'Mr.', N'David', NULL, N'Johnson', NULL, N'Sure & Reliable Sporting Goods', N'adventure-works\david8', N'david18@adventure-works.com', N'476-555-0139')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (219, 0, N'Mr.', N'Brian', NULL, N'Johnson', NULL, N'Extras Sporting Goods', N'adventure-works\jillian0', N'brian6@adventure-works.com', N'320-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (220, 0, N'Mr.', N'Robert', NULL, N'Brown', NULL, N'Best o'' Bikes', N'adventure-works\jillian0', N'robert5@adventure-works.com', N'575-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (221, 0, N'Ms.', N'Sandra', N'B.', N'Maynard', NULL, N'Bike Dealers Association', N'adventure-works\shu0', N'sandra4@adventure-works.com', N'993-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (222, 0, N'Mr.', N'Barry', NULL, N'Johnson', NULL, N'Sample Bike Store', N'adventure-works\linda3', N'barry1@adventure-works.com', N'858-555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (223, 0, N'Ms.', N'Joyce', NULL, N'Jarvis', NULL, N'Paints and Solvents Company', N'adventure-works\shu0', N'joyce0@adventure-works.com', N'458-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (226, 0, N'Ms.', N'Vance', N'P.', N'Johns', NULL, N'Leisure Activities', N'adventure-works\josé1', N'vance0@adventure-works.com', N'103-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (227, 0, N'Ms.', N'Robin', N'M.', N'McGuigan', NULL, N'Health Spa, Limited', N'adventure-works\josé1', N'robin0@adventure-works.com', N'431-555-0153')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (228, 0, N'Ms.', N'Danielle', N'B.', N'Johnson', NULL, N'Home Town Bike Store', N'adventure-works\garrett1', N'danielle1@adventure-works.com', N'356-555-0190')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (232, 0, N'Mr.', N'David', NULL, N'Jaffe', NULL, N'Exceptional Cycle Services', N'adventure-works\jae0', N'david17@adventure-works.com', N'1 (11) 500 555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (235, 0, N'Ms.', N'Mary', NULL, N'Alexander', NULL, N'Certified Bicycle Supply', N'adventure-works\pamela0', N'mary7@adventure-works.com', N'344-555-0133')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (236, 0, N'Ms.', N'Lola', N'M.', N'McCarthy', NULL, N'Closeout Boutique', N'adventure-works\david8', N'lola0@adventure-works.com', N'173-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (237, 0, N'Ms.', N'Mary', N'K.', N'Browning', NULL, N'Client Discount Store', N'adventure-works\jillian0', N'mary5@adventure-works.com', N'658-555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (238, 0, N'Ms.', N'Jodan', N'M.', N'Jacobson', NULL, N'A Great Bicycle Company', N'adventure-works\jillian0', N'jodan0@adventure-works.com', N'652-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (239, 0, N'Ms.', N'Jane', N'A.', N'McCarty', NULL, N'Bicycle Merchandise Warehouse', N'adventure-works\shu0', N'jane3@adventure-works.com', N'529-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (240, 0, N'Mr.', N'Jessie', N'E.', N'Valerio', NULL, N'Wire Baskets and Parts', N'adventure-works\linda3', N'jessie0@adventure-works.com', N'103-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (241, 0, N'Mr.', N'Eric', N'A.', N'Jacobsen', NULL, N'Vale Riding Supplies', N'adventure-works\shu0', N'eric5@adventure-works.com', N'703-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (244, 0, N'Mr.', N'Bronson', N'R.', N'Jacobs', NULL, N'Retail Discount Store', N'adventure-works\josé1', N'bronson0@adventure-works.com', N'697-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (245, 0, N'Mr.', N'James', N'L.', N'McCoy', N'II', N'Leather Seat Factory', N'adventure-works\josé1', N'james12@adventure-works.com', N'191-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (246, 0, N'Ms.', N'Esther', N'K.', N'Valle', NULL, N'Large Bike Shop', N'adventure-works\garrett1', N'esther0@adventure-works.com', N'481-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (250, 0, N'Ms.', N'Denean', N'J.', N'Ison', NULL, N'Express Bike Services', N'adventure-works\jae0', N'denean0@adventure-works.com', N'1 (11) 500 555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (253, 0, N'Mr.', N'Erik', NULL, N'Ismert', NULL, N'Roving Sports', N'adventure-works\pamela0', N'erik0@adventure-works.com', N'116-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (254, 0, N'Mr.', N'Robert', N'M.', N'Bernacchi', NULL, N'Safe Cycles Shop', N'adventure-works\david8', N'robert4@adventure-works.com', N'449-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (255, 0, N'Mr.', N'Sunil', NULL, N'Uppal', NULL, N'Swift Cycles', N'adventure-works\jillian0', N'sunil0@adventure-works.com', N'184-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (256, 0, N'Mr.', N'Richard', N'L.', N'Irwin', NULL, N'Rental Bikes', N'adventure-works\jillian0', N'richard4@adventure-works.com', N'367-555-0124')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (257, 0, N'Mr.', N'Matthias', NULL, N'Berndt', NULL, N'Number 1 Supply', N'adventure-works\shu0', N'matthias1@adventure-works.com', N'384-555-0169')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (258, 0, N'Mr.', N'Sairaj', NULL, N'Uddin', NULL, N'Quantity Discounts', N'adventure-works\linda3', N'sairaj1@adventure-works.com', N'767-555-0193')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (259, 0, N'Mr.', N'Lucio', NULL, N'Iallo', NULL, N'Highway Bike Shop', N'adventure-works\shu0', N'lucio0@adventure-works.com', N'199-555-0135')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (262, 0, N'Ms.', N'Beth', NULL, N'Inghram', NULL, N'General Industries', N'adventure-works\josé1', N'beth0@adventure-works.com', N'718-555-0152')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (263, 0, N'Mr.', N'Timothy', N'B.', N'Burnett', N'Jr.', N'Farthest Bike Store', N'adventure-works\josé1', N'timothy0@adventure-works.com', N'251-555-0172')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (264, 0, N'Ms.', N'Phyllis', N'B.', N'Tuffield', NULL, N'Fasteners & Bolts Outlet', N'adventure-works\garrett1', N'phyllis3@adventure-works.com', N'277-555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (268, 0, N'Mr.', N'Richard', N'A.', N'Byham', NULL, N'Channel Outlet', N'adventure-works\jae0', N'richard2@adventure-works.com', N'1 (11) 500 555-0138')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (271, 0, N'Mr.', N'Jared', N'L.', N'Bustamante', NULL, N'Alternative Vehicles', N'adventure-works\pamela0', N'jared0@adventure-works.com', N'164-555-0147')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (272, 0, N'Mr.', N'Henry', N'L.', N'Campen', NULL, N'Metro Cycle Shop', N'adventure-works\david8', N'henry0@adventure-works.com', N'635-555-0126')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (273, 0, N'Ms.', N'Christie', N'J.', N'Trujillo', NULL, N'A Typical Bike Shop', N'adventure-works\jillian0', N'christie0@adventure-works.com', N'686-555-0180')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (274, 0, N'Ms.', N'Janet', N'J.', N'Gilliat', NULL, N'Active Systems', N'adventure-works\jillian0', N'janet2@adventure-works.com', N'521-555-0183')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (275, 0, N'Mr.', N'Chris', NULL, N'Cannon', NULL, N'Outdoor Sporting Goods', N'adventure-works\shu0', N'chris5@adventure-works.com', N'118-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (276, 0, N'Mr.', N'Michael John', N'R.', N'Troyer', NULL, N'Thrifty Parts and Sales', N'adventure-works\linda3', N'michaeljohn0@adventure-works.com', N'308-555-0175')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (277, 0, N'Mr.', N'Guy', NULL, N'Gilbert', NULL, N'The Bicycle Accessories Company', N'adventure-works\shu0', N'guy0@adventure-works.com', N'583-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (280, 0, N'Mr.', N'Frances', N'J.', N'Giglio', NULL, N'Standard Bikes', N'adventure-works\josé1', N'frances1@adventure-works.com', N'692-555-0136')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (281, 0, N'Ms.', N'Suzana De Abreu', N'A.', N'Canuto', NULL, N'Petroleum Products Distributors', N'adventure-works\josé1', N'suzanadeabreu0@adventure-works.com', N'990-555-0141')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (282, 0, N'Mr.', N'Billy', N'J.', N'Trent', NULL, N'Quick Parts and Service', N'adventure-works\garrett1', N'billy0@adventure-works.com', N'882-555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (286, 0, N'Mr.', N'Leo', NULL, N'Giakoumakis', NULL, N'Number One Bike Co.', N'adventure-works\jae0', N'leo0@adventure-works.com', N'1 (11) 500 555-0169')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (287, 0, N'Mr.', N'Grant', NULL, N'Culbertson', NULL, N'Handy Bike Services', N'adventure-works\michael9', N'grant1@adventure-works.com', N'859-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (288, 0, N'Mr.', N'Robert', N'L.', N'Barker', NULL, N'Kickstand Sellers', N'adventure-works\michael9', N'robert3@adventure-works.com', N'241-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (289, 0, N'Ms.', N'Gabriel', N'L.', N'Bockenkamp', NULL, N'Moderately-Priced Bikes Store', N'adventure-works\pamela0', N'gabriel0@adventure-works.com', N'763-555-0145')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (290, 0, N'Mr.', N'Scott', NULL, N'Culp', NULL, N'Friendly Bike Shop', N'adventure-works\david8', N'scott3@adventure-works.com', N'119-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (291, 0, N'Mr.', N'Wayne', N'N.', N'Banack', NULL, N'Grand Bicycle Stores', N'adventure-works\jillian0', N'wayne0@adventure-works.com', N'640-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (292, 0, N'Mr.', N'Michael', N'Greg', N'Blythe', NULL, N'Grease and Oil Products Company', N'adventure-works\jillian0', N'michael11@adventure-works.com', N'126-555-0172')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (293, 0, N'Mr.', N'Conor', NULL, N'Cunningham', NULL, N'Fashionable Bikes and Accessories', N'adventure-works\shu0', N'conor0@adventure-works.com', N'115-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (294, 0, N'Mr.', N'Alberto', N'F.', N'Baltazar', NULL, N'Flawless Bike Shop', N'adventure-works\linda3', N'alberto0@adventure-works.com', N'780-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (295, 0, N'Mr.', N'Joseph', N'P.', N'Mitzner', N'Jr.', N'Engineered Bike Systems', N'adventure-works\shu0', N'joseph4@adventure-works.com', N'129-555-0164')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (298, 0, N'Mr.', N'Robert', NULL, N'Mitosinka', NULL, N'City Cycling', N'adventure-works\josé1', N'robert10@adventure-works.com', N'239-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (299, 0, N'Mr.', N'Thierry', NULL, N'D''Hers', NULL, N'Citywide Service and Repair', N'adventure-works\josé1', N'thierry1@adventure-works.com', N'680-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (300, 0, N'Mr.', N'Daniel', NULL, N'Blanco', NULL, N'Nice Bikes', N'adventure-works\garrett1', N'daniel0@adventure-works.com', N'221-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (304, 0, N'Ms.', N'Linda', NULL, N'Mitchell', NULL, N'Essential Bike Works', N'adventure-works\jae0', N'linda9@adventure-works.com', N'1 (11) 500 555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (306, 0, N'Mr.', N'Stephen', N'M.', N'Ayers', NULL, N'Work and Play Association', N'adventure-works\michael9', N'stephen1@adventure-works.com', N'818-555-0171')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (307, 0, N'Ms.', N'Neva', N'M.', N'Mitchell', NULL, N'Riding Associates', N'adventure-works\pamela0', N'neva0@adventure-works.com', N'992-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (308, 0, N'Ms.', N'Megan', N'N.', N'Davis', NULL, N'Rugged Bikes', N'adventure-works\david8', N'megan1@adventure-works.com', N'839-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (309, 0, N'Mr.', N'John', NULL, N'Arthur', NULL, N'The Gear Store', N'adventure-works\jillian0', N'john6@adventure-works.com', N'149-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (310, 0, N'Mr.', N'Frank', NULL, N'Miller', NULL, N'Orange Bicycle Company', N'adventure-works\jillian0', N'frank6@adventure-works.com', N'118-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (311, 0, N'Sr.', N'Alvaro', NULL, N'De Matos Miranda Filho', NULL, N'Principal Bike Company', N'adventure-works\shu0', N'alvaro0@adventure-works.com', N'551-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (312, 0, N'Mr.', N'Thomas', N'B.', N'Armstrong', N'Jr.', N'Resale Services', N'adventure-works\linda3', N'thomas1@adventure-works.com', N'226-555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (313, 0, N'Mr.', N'Dylan', NULL, N'Miller', NULL, N'Metropolitan Manufacturing', N'adventure-works\shu0', N'dylan1@adventure-works.com', N'140-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (316, 0, N'Mr.', N'Ben', NULL, N'Miller', NULL, N'Low Price Cycles', N'adventure-works\josé1', N'ben1@adventure-works.com', N'207-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (317, 0, N'Mr.', N'Jacob', N'N.', N'Dean', NULL, N'Finer Riding Supplies', N'adventure-works\josé1', N'jacob0@adventure-works.com', N'767-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (318, 0, N'Ms.', N'Ann', NULL, N'Beebe', NULL, N'First-Rate Outlet', N'adventure-works\garrett1', N'ann0@adventure-works.com', N'277-555-0169')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (322, 0, N'Mr.', N'Matthew', N'J.', N'Miller', NULL, N'Tachometers and Accessories', N'adventure-works\jae0', N'matthew5@adventure-works.com', N'1 (11) 500 555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (323, 0, N'Mr.', N'Jo', NULL, N'Brown', NULL, N'Metro Bike Works', N'adventure-works\michael9', N'jo2@adventure-works.com', N'689-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (325, 0, N'Ms.', N'Virginia', N'L.', N'Miller', NULL, N'All Cycle Shop', N'adventure-works\pamela0', N'virginia0@adventure-works.com', N'918-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (326, 0, N'Mr.', N'Scott', NULL, N'Gode', NULL, N'Year-Round Sports', N'adventure-works\david8', N'scott4@adventure-works.com', N'164-555-0145')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (327, 0, N'Ms.', N'Caroline', N'A.', N'Vicknair', NULL, N'World of Bikes', N'adventure-works\jillian0', N'caroline0@adventure-works.com', N'695-555-0158')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (328, 0, N'Mr.', N'Robert', N'R.', N'Vessa', NULL, N'Totes & Baskets Company', N'adventure-works\jillian0', N'robert13@adventure-works.com', N'560-555-0171')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (329, 0, NULL, N'Andreas', NULL, N'Berglund', NULL, N'Unicycles, Bicycles, and Tricycles', N'adventure-works\shu0', N'andreas1@adventure-works.com', N'795-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (330, 0, N'Mr.', N'Mete', NULL, N'Goktepe', NULL, N'The New Bike Store', N'adventure-works\linda3', N'mete0@adventure-works.com', N'637-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (331, 0, N'Ms.', N'Wanda', N'F.', N'Vernon', NULL, N'Technical Parts Manufacturing', N'adventure-works\shu0', N'wanda0@adventure-works.com', N'433-555-0168')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (334, 0, N'Ms.', N'Dora', N'P.', N'Verdad', NULL, N'Retreat Inn', N'adventure-works\josé1', N'dora0@adventure-works.com', N'155-555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (335, 0, N'Mr.', N'John', N'M.', N'Berger', N'Jr.', N'Scratch-Resistant Finishes Company', N'adventure-works\josé1', N'john10@adventure-works.com', N'156-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (336, 0, N'Mr.', N'Brian', N'R', N'Goldstein', NULL, N'Primary Bike Distributors', N'adventure-works\garrett1', N'brian4@adventure-works.com', N'495-555-0161')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (340, 0, N'Mr.', N'Raja', N'D.', N'Venugopal', NULL, N'Nearby Cycle Shop', N'adventure-works\jae0', N'raja0@adventure-works.com', N'1 (11) 500 555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (343, 0, N'Ms.', N'Patricia', N'M.', N'Vasquez', NULL, N'Mail-Order Outlet', N'adventure-works\pamela0', N'patricia2@adventure-works.com', N'490-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (344, 0, N'Ms.', N'Karren', N'K.', N'Burkhardt', NULL, N'Fifth Bike Store', N'adventure-works\david8', N'karren0@adventure-works.com', N'652-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (345, 0, N'Ms.', N'Abigail', N'J.', N'Gonzalez', NULL, N'Genial Bike Associates', N'adventure-works\jillian0', N'abigail0@adventure-works.com', N'121-555-0139')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (346, 0, N'Mr.', N'Ranjit', N'Rudra', N'Varkey Chudukatil', NULL, N'Great Bicycle Supply', N'adventure-works\jillian0', N'ranjit1@adventure-works.com', N'810-555-0160')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (347, 0, N'Ms.', N'Ingrid', N'K.', N'Burkhardt', NULL, N'Bike Universe', N'adventure-works\shu0', N'ingrid0@adventure-works.com', N'857-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (348, 0, N'Mr.', N'Oscar', N'L.', N'Alpuerto', NULL, N'Bold Bike Accessories', N'adventure-works\linda3', N'oscar0@adventure-works.com', N'855-555-0174')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (349, 0, N'Mr.', N'Gary', N'T', N'Vargas', NULL, N'Exercise Center', N'adventure-works\shu0', N'gary6@adventure-works.com', N'112-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (352, 0, N'Mr.', N'Shane', N'S.', N'Kim', NULL, N'Twelfth Bike Store', N'adventure-works\josé1', N'shane2@adventure-works.com', N'155-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (353, 0, N'Ms.', N'Joan', N'M.', N'Campbell', NULL, N'Two-Wheeled Transit Company', N'adventure-works\josé1', N'joan0@adventure-works.com', N'700-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (354, 0, N'Mr.', N'Maxwell', N'J.', N'Amland', NULL, N'Serious Cycles', N'adventure-works\garrett1', N'maxwell0@adventure-works.com', N'614-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (358, 0, N'Mr.', N'Joe', NULL, N'Kim', NULL, N'Mail Market', N'adventure-works\jae0', N'joe1@adventure-works.com', N'1 (11) 500 555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (360, 0, N'Ms.', N'Ramona', N'J.', N'Antrim', NULL, N'Novelty Bikes', N'adventure-works\michael9', N'ramona0@adventure-works.com', N'327-555-0148')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (361, 0, N'Ms.', N'Karan', NULL, N'Khanna', NULL, N'Fitness Supplies', N'adventure-works\pamela0', N'karan1@adventure-works.com', N'390-555-0150')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (362, 0, N'Ms.', N'Sharon', N'A.', N'Crow', NULL, N'Grand Cycle Store', N'adventure-works\david8', N'sharon1@adventure-works.com', N'889-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (363, 0, N'Mr.', N'Chris', NULL, N'Ashton', NULL, N'Immense Manufacturing Company', N'adventure-works\jillian0', N'chris3@adventure-works.com', N'556-555-0145')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (364, 0, N'Mr.', N'Imtiaz', NULL, N'Khan', NULL, N'District Mall', N'adventure-works\jillian0', N'imtiaz0@adventure-works.com', N'249-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (365, 0, N'Mr.', N'Jack', NULL, N'Creasey', NULL, N'Distinctive Store', N'adventure-works\shu0', N'jack2@adventure-works.com', N'539-555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (366, 0, N'Ms.', N'Teresa', NULL, N'Atkinson', NULL, N'Extended Bike Sales', N'adventure-works\linda3', N'teresa0@adventure-works.com', N'129-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (367, 0, N'Ms.', N'Tammy', N'J.', N'Khan', NULL, N'Brown Bicycle Company', N'adventure-works\shu0', N'tammy0@adventure-works.com', N'145-555-0166')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (370, 0, N'Ms.', N'Elizabeth', NULL, N'Keyser', NULL, N'Acceptable Sales & Service', N'adventure-works\josé1', N'elizabeth2@adventure-works.com', N'656-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (371, 0, N'Mr.', N'Bruno', NULL, N'Costa Da Silva', NULL, N'Custom Sales and Service', N'adventure-works\josé1', N'bruno0@adventure-works.com', N'140-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (372, 0, N'Ms.', N'Katherine', N'K.', N'Swan', NULL, N'Top Bike Market', N'adventure-works\garrett1', N'katherine1@adventure-works.com', N'421-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (376, 0, N'Ms.', N'Mary', N'R.', N'Kesslep', NULL, N'Commerce Bicycle Specialists', N'adventure-works\jae0', N'mary8@adventure-works.com', N'1 (11) 500 555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (377, 0, N'Mr.', N'Marlin', N'M.', N'Coriell', NULL, N'Grand Sport Boutique', N'adventure-works\michael9', N'marlin0@adventure-works.com', N'941-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (379, 0, N'Mr.', N'Kevin', NULL, N'Kennedy', NULL, N'Fad Outlet', N'adventure-works\pamela0', N'kevin4@adventure-works.com', N'275-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (380, 0, N'Ms.', N'Eva', NULL, N'Corets', NULL, N'First Department Stores', N'adventure-works\david8', N'eva0@adventure-works.com', N'542-555-0164')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (381, 0, N'Ms.', N'Julie', NULL, N'Taft-Rider', NULL, N'Bicycle Lines Distributors', N'adventure-works\jillian0', N'julie1@adventure-works.com', N'145-555-0194')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (382, 0, N'Mr.', N'Robert', NULL, N'Kelly', NULL, N'Beneficial Exercises and Activities', N'adventure-works\jillian0', N'robert7@adventure-works.com', N'510-555-0123')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (383, 0, N'Mr.', N'Scott', NULL, N'Cooper', NULL, N'Vehicle Shop', N'adventure-works\shu0', N'scott2@adventure-works.com', N'773-555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (384, 0, N'Mr.', N'Clarence', N'R.', N'Tatman', NULL, N'Sparkling Paint and Finishes', N'adventure-works\linda3', N'clarence0@adventure-works.com', N'787-555-0128')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (385, 0, N'Mr.', N'John', NULL, N'Kelly', NULL, N'Sturdy Toys', N'adventure-works\shu0', N'john22@adventure-works.com', N'330-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (388, 0, N'Mr.', N'Victor', N'A.', N'Kelley', NULL, N'Road Way Sales and Rental', N'adventure-works\josé1', N'victor0@adventure-works.com', N'112-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (389, 0, N'Ms.', N'Dorothy', N'J.', N'Contreras', NULL, N'Sixth Bike Store', N'adventure-works\josé1', N'dorothy0@adventure-works.com', N'428-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (390, 0, N'Mr.', N'Mike', N'M.', N'Taylor', NULL, N'Plastic Parts Company', N'adventure-works\garrett1', N'mike6@adventure-works.com', N'204-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (394, 0, N'Ms.', N'Bonnie', NULL, N'Kearney', NULL, N'Little Sports Center', N'adventure-works\jae0', N'bonnie1@adventure-works.com', N'1 (11) 500 555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (395, 0, N'Ms.', N'June', N'B.', N'Brunner', NULL, N'Online Bike Sellers', N'adventure-works\michael9', N'june0@adventure-works.com', N'249-555-0172')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (397, 0, N'Mr.', N'Sandeep', NULL, N'Katyal', NULL, N'Capable Sales and Service', N'adventure-works\pamela0', N'sandeep2@adventure-works.com', N'928-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (398, 0, N'Ms.', N'Shirley', N'R.', N'Bruner', NULL, N'Commendable Bikes', N'adventure-works\david8', N'shirley0@adventure-works.com', N'383-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (399, 0, N'Mr.', N'Chad', N'J.', N'Tedford', NULL, N'Big Cycle Mall', N'adventure-works\jillian0', N'chad1@adventure-works.com', N'588-555-0128')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (400, 0, N'Mr.', N'Peter', NULL, N'Houston', NULL, N'Local Sales and Rental', N'adventure-works\jillian0', N'peter3@adventure-works.com', N'632-555-0171')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (401, 0, N'Mr.', N'Tom', N'H', N'Johnston', NULL, N'Brightwork Company', N'adventure-works\shu0', N'tom1@adventure-works.com', N'883-555-0177')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (402, 0, N'Ms.', N'Marian', N'M.', N'Berch', NULL, N'Pro Sporting Goods', N'adventure-works\linda3', N'marian0@adventure-works.com', N'640-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (403, 0, N'Ms.', N'Juanita', N'J.', N'Holman', NULL, N'Affordable Sports Equipment', N'adventure-works\shu0', N'juanita0@adventure-works.com', N'996-555-0196')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (406, 0, N'Mr.', N'Eddie', N'M.', N'Holmes', NULL, N'The Commissary', N'adventure-works\josé1', N'eddie0@adventure-works.com', N'570-555-0199')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (407, 0, N'Mr.', N'Robert', N'A.', N'Avalos', NULL, N'Workout Emporium', N'adventure-works\josé1', N'robert2@adventure-works.com', N'665-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (408, 0, N'Mr.', N'Alexander', N'J.', N'Berger', N'II', N'Odometers and Accessories Company', N'adventure-works\garrett1', N'alexander0@adventure-works.com', N'519-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (412, 0, N'Ms.', N'Jean', N'J.', N'Holloway', NULL, N'Leisure Clearing House', N'adventure-works\jae0', N'jean2@adventure-works.com', N'1 (11) 500 555-0181')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (415, 0, N'Mr.', N'Greg', NULL, N'Chapman', NULL, N'Imaginary Toys', N'adventure-works\pamela0', N'greg1@adventure-works.com', N'708-555-0169')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (416, 0, N'Ms.', N'Angela', NULL, N'Barbariol', NULL, N'Impromptu Trips', N'adventure-works\david8', N'angela1@adventure-works.com', N'134-555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (417, 0, N'Ms.', N'Ruth', N'A.', N'Choin', NULL, N'Genuine Bike Shop', N'adventure-works\jillian0', N'ruth1@adventure-works.com', N'273-555-0181')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (418, 0, N'Mr.', N'Lee', N'J.', N'Chapla', NULL, N'Good Bike Shop', N'adventure-works\jillian0', N'lee0@adventure-works.com', N'223-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (419, 0, N'Mr.', N'Darrell', N'M.', N'Banks', NULL, N'Exertion Activities Club', N'adventure-works\shu0', N'darrell0@adventure-works.com', N'816-555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (420, 0, N'Mr.', N'Anthony', NULL, N'Chor', NULL, N'Extreme Riding Supplies', N'adventure-works\linda3', N'anthony0@adventure-works.com', N'429-555-0145')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (421, 0, N'Mr.', N'Forrest', N'J.', N'Chandler', NULL, N'Fitness Cycling', N'adventure-works\shu0', N'forrest0@adventure-works.com', N'448-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (424, 0, N'Mr.', N'Eli', NULL, N'Bowen', NULL, N'Bikes for Two', N'adventure-works\josé1', N'eli0@adventure-works.com', N'371-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (425, 0, N'Mr.', N'Stephen', N'Yuan', N'Jiang', NULL, N'Bikes for Kids and Adults', N'adventure-works\josé1', N'stephen3@adventure-works.com', N'910-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (426, 0, N'Mr.', N'Dirk', N'J.', N'Bruno', NULL, N'Custom Accessories Company', N'adventure-works\garrett1', N'dirk0@adventure-works.com', N'817-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (430, 0, N'Sr.', N'Gustavo', NULL, N'Camargo', NULL, N'Uttermost Bike Shop', N'adventure-works\jae0', N'gustavo1@adventure-works.com', N'1 (11) 500 555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (431, 0, N'Mr.', N'Douglas', N'A.', N'Baldwin', N'Jr.', N'Small Cycle Store', N'adventure-works\michael9', N'douglas1@adventure-works.com', N'583-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (433, 0, N'Ms.', N'Lindsey', N'R.', N'Camacho', NULL, N'Thorough Parts and Repair Services', N'adventure-works\pamela0', N'lindsey0@adventure-works.com', N'827-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (434, 0, N'Mr.', N'James', N'B.', N'Bailey', N'Jr.', N'Road-Way Mart', N'adventure-works\david8', N'james3@adventure-works.com', N'234-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (435, 0, N'Ms.', N'Carol', N'B.', N'Elliott', NULL, N'Satin Finish Company', N'adventure-works\jillian0', N'carol2@adventure-works.com', N'847-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (436, 0, N'Ms.', N'Barbara', N'J.', N'Calone', NULL, N'Sheet Metal Manufacturing', N'adventure-works\jillian0', N'barbara2@adventure-works.com', N'145-555-0152')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (437, 0, N'Ms.', N'Megan', N'E.', N'Burke', NULL, N'Professional Cycle Store', N'adventure-works\shu0', N'megan0@adventure-works.com', N'148-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (438, 0, N'Mr.', N'Cory', N'K.', N'Booth', NULL, N'Remarkable Bike Store', N'adventure-works\linda3', N'cory0@adventure-works.com', N'121-555-0157')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (439, 0, N'Ms.', N'Shannon', N'P.', N'Elliott', NULL, N'Regional Manufacturing', N'adventure-works\shu0', N'shannon0@adventure-works.com', N'425-555-0158')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (442, 0, N'Ms.', N'Jauna', N'E.', N'Elson', NULL, N'Original Bicycle Supply Company', N'adventure-works\josé1', N'jauna0@adventure-works.com', N'185-555-0190')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (443, 0, N'Sra.', N'Janaina Barreiro Gambaro', NULL, N'Bueno', NULL, N'Courteous Bicycle Specialists', N'adventure-works\josé1', N'janainabarreirogambaro0@adventure-works.com', N'476-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (444, 0, N'Mr.', N'Shaun', NULL, N'Beasley', NULL, N'Finer Cycle Shop', N'adventure-works\garrett1', N'shaun0@adventure-works.com', N'396-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (448, 0, N'Mr.', N'Terry', NULL, N'Eminhizer', NULL, N'Action Bicycle Specialists', N'adventure-works\jae0', N'terry1@adventure-works.com', N'1 (11) 500 555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (451, 0, N'Mr.', N'John', NULL, N'Emory', NULL, N'Roadway Bike Emporium', N'adventure-works\pamela0', N'john16@adventure-works.com', N'691-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (452, 0, N'Ms.', N'Olga', N'J.', N'Trau', NULL, N'A Cycle Shop', N'adventure-works\david8', N'olga0@adventure-works.com', N'398-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (453, 0, N'Mr.', N'Jon', NULL, N'Ganio', NULL, N'Unique Bikes', N'adventure-works\jillian0', N'jon0@adventure-works.com', N'672-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (454, 0, N'Ms.', N'Gail', NULL, N'Erickson', NULL, N'Sleek Bikes ', N'adventure-works\jillian0', N'gail1@adventure-works.com', N'834-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (455, 0, N'Mr.', N'James', N'R.', N'Tran', NULL, N'Timely Shipping Service', N'adventure-works\shu0', N'james15@adventure-works.com', N'740-555-0159')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (456, 0, N'Mr.', N'Michael', NULL, N'Galos', NULL, N'Riding Excursions', N'adventure-works\linda3', N'michael15@adventure-works.com', N'912-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (457, 0, N'Mr.', N'Mark', N'B', N'Erickson', NULL, N'Retail Sporting Equipment', N'adventure-works\shu0', N'mark2@adventure-works.com', N'962-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (460, 0, N'Ms.', N'Martha', N'R.', N'Espinoza', NULL, N'Price-Cutter Discount Bikes', N'adventure-works\josé1', N'martha0@adventure-works.com', N'753-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (461, 0, N'Mr.', N'Glenn', N'J.', N'Track', N'II', N'Active Life Toys', N'adventure-works\josé1', N'glenn0@adventure-works.com', N'907-555-0170')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (462, 0, N'Mr.', N'Bob', NULL, N'Gage', NULL, N'General Riding Supplies', N'adventure-works\garrett1', N'bob1@adventure-works.com', N'962-555-0175')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (466, 0, N'Sra.', N'Janeth', NULL, N'Esteves', NULL, N'Central Bicycle Specialists', N'adventure-works\jae0', N'janeth1@adventure-works.com', N'1 (11) 500 555-0136')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (468, 0, N'Mr.', N'Paul', N'J.', N'Fulton', NULL, N'Blue Bicycle Company', N'adventure-works\michael9', N'paul3@adventure-works.com', N'492-555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (469, 0, N'Ms.', N'Twanna', N'R.', N'Evans', NULL, N'Vast Bike Sales and Rental', N'adventure-works\pamela0', N'twanna0@adventure-works.com', N'554-555-0124')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (470, 0, N'Ms.', N'Delia', N'B.', N'Toone', NULL, N'Wingtip Toys', N'adventure-works\david8', N'delia0@adventure-works.com', N'328-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (471, 0, N'Mr.', N'John', NULL, N'Ford', NULL, N'Social Activities Club', N'adventure-works\jillian0', N'john19@adventure-works.com', N'596-555-0153')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (472, 0, N'Ms.', N'Ann', N'R.', N'Evans', NULL, N'Summer Sports Place', N'adventure-works\jillian0', N'ann1@adventure-works.com', N'252-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (473, 0, N'Ms.', N'Kay', N'E.', N'Krane', NULL, N'Racing Toys', N'adventure-works\shu0', N'kay0@adventure-works.com', N'731-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (474, 0, N'Mr.', N'Mihail', NULL, N'Frintu', NULL, N'Retail Cycle Shop', N'adventure-works\linda3', N'mihail1@adventure-works.com', N'777-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (475, 0, N'Mr.', N'John', NULL, N'Evans', NULL, N'Real Sporting Goods', N'adventure-works\shu0', N'john17@adventure-works.com', N'581-555-0172')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (478, 0, N'Ms.', N'Ruby Sue', N'R.', N'Styles', NULL, N'Major Cycling', N'adventure-works\josé1', N'rubysue0@adventure-works.com', N'512-555-0122')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (479, 0, N'Ms.', N'Lori', NULL, N'Kane', NULL, N'General Supplies', N'adventure-works\josé1', N'lori2@adventure-works.com', N'765-555-0141')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (480, 0, N'Ms.', N'Susan', N'E.', N'French', NULL, N'General Bike Corporation', N'adventure-works\garrett1', N'susan3@adventure-works.com', N'994-555-0194')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (484, 0, N'Mr.', N'Gary', N'J.', N'Suess', NULL, N'Downhill Bicycle Specialists', N'adventure-works\jae0', N'gary5@adventure-works.com', N'1 (11) 500 555-0199')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (487, 0, N'Ms.', N'Ruth', N'J.', N'Suffin', NULL, N'Bike Experts', N'adventure-works\pamela0', N'ruth2@adventure-works.com', N'924-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (488, 0, N'Ms.', N'Margaret', N'J.', N'Smith', NULL, N'Bicycle Accessories and Kits', N'adventure-works\david8', N'margaret0@adventure-works.com', N'959-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (489, 0, N'Ms.', N'Dorothy', N'J.', N'Fox', NULL, N'Cash & Carry Bikes', N'adventure-works\jillian0', N'dorothy1@adventure-works.com', N'191-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (490, 0, N'Ms.', N'Elizabeth', N'J.', N'Sullivan', NULL, N'Extraordinary Bike Works', N'adventure-works\jillian0', N'elizabeth4@adventure-works.com', N'306-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (491, 0, N'Ms.', N'Frances', N'B.', N'Adams', NULL, N'Area Bike Accessories', N'adventure-works\shu0', N'frances0@adventure-works.com', N'991-555-0183')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (492, 0, N'Mr.', N'Garth', NULL, N'Fort', NULL, N'Basic Sports Equipment', N'adventure-works\linda3', N'garth0@adventure-works.com', N'768-555-0125')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (493, 0, N'Mr.', N'Michael', NULL, N'Sullivan', NULL, N'Valley Bicycle Distributors', N'adventure-works\shu0', N'michael24@adventure-works.com', N'323-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (496, 0, N'Ms.', N'Marcia', N'J.', N'Sultan', NULL, N'Top Sports Supply', N'adventure-works\josé1', N'marcia0@adventure-works.com', N'613-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (497, 0, N'Ms.', N'Amy', N'E.', N'Alberts', NULL, N'Valley Toy Store', N'adventure-works\josé1', N'amy1@adventure-works.com', N'727-555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (498, 0, N'Ms.', N'Kelly', NULL, N'Focht', NULL, N'Quick Delivery Service', N'adventure-works\garrett1', N'kelly0@adventure-works.com', N'272-555-0123')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (502, 0, N'Mr.', N'Krishna', NULL, N'Sunkammurali', NULL, N'Metropolitan Bicycle Supply', N'adventure-works\jae0', N'krishna1@adventure-works.com', N'1 (11) 500 555-0177')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (504, 0, N'Ms.', N'Mae', N'M.', N'Black', NULL, N'Historic Bicycle Sales', N'adventure-works\michael9', N'mae1@adventure-works.com', N'264-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (505, 0, N'Mr.', N'Brad', NULL, N'Sutton', NULL, N'Honest Repair Service', N'adventure-works\pamela0', N'brad0@adventure-works.com', N'688-555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (506, 0, N'Mr.', N'François', NULL, N'Ferrier', NULL, N'Great Bikes ', N'adventure-works\david8', N'françois1@adventure-works.com', N'571-555-0128')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (507, 0, N'Mr.', N'Mary', NULL, N'Bishop', NULL, N'Global Sporting Goods', N'adventure-works\jillian0', N'mary4@adventure-works.com', N'176-555-0136')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (508, 0, N'Mr.', N'Martin', N'J.', N'Svoboda', N'IV', N'Designer Department Stores', N'adventure-works\jillian0', N'martin1@adventure-works.com', N'132-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (509, 0, N'Mr.', N'Robert', N'E.', N'Ahlering', NULL, N'Fun Toys and Bikes', N'adventure-works\shu0', N'robert1@adventure-works.com', N'678-555-0175')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (510, 0, N'Mr.', N'Jimmy', NULL, N'Bischoff', NULL, N'World Bike Discount Store', N'adventure-works\linda3', N'jimmy1@adventure-works.com', N'992-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (511, 0, N'Mr.', N'Abraham', N'L.', N'Swearengin', NULL, N'Wheel Gallery', N'adventure-works\shu0', N'abraham0@adventure-works.com', N'926-555-0136')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (514, 0, N'Mr.', N'Ryan', NULL, N'Calafato', NULL, N'Retail Mall', N'adventure-works\josé1', N'ryan1@adventure-works.com', N'726-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (515, 0, N'Mr.', N'Dragan', NULL, N'Tomic', NULL, N'Rural Bicycle Supply', N'adventure-works\josé1', N'dragan1@adventure-works.com', N'833-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (516, 0, N'Mr.', N'Thomas', N'R.', N'Michaels', NULL, N'Seats and Saddles Company', N'adventure-works\garrett1', N'thomas2@adventure-works.com', N'162-555-0174')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (520, 0, N'Ms.', N'Mari', N'B.', N'Caldwell', NULL, N'Metro Metals Co.', N'adventure-works\jae0', N'mari0@adventure-works.com', N'1 (11) 500 555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (523, 0, N'Ms.', N'Mary', N'M.', N'Gimmi', NULL, N'Futuristic Sport Distributors', N'adventure-works\shu0', N'mary6@adventure-works.com', N'149-555-0196')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (526, 0, N'Mr.', N'David', N'L.', N'Givens', NULL, N'Finer Sales and Service', N'adventure-works\josé1', N'david15@adventure-works.com', N'605-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (527, 0, N'Ms.', N'Diane', NULL, N'Tibbott', NULL, N'Fun Times Club', N'adventure-works\shu0', N'diane5@adventure-works.com', N'847-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (528, 0, N'Ms.', N'Helen', N'M.', N'Meyer', NULL, N'Alpine Ski House', N'adventure-works\linda3', N'helen2@adventure-works.com', N'519-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (529, 0, N'Ms.', N'Jeanie', N'R.', N'Glenn', N'PhD', N'Big-Time Bike Store', N'adventure-works\shu0', N'jeanie0@adventure-works.com', N'669-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (532, 0, N'Ms.', N'Diane', N'R.', N'Glimp', NULL, N'The Showroom', N'adventure-works\josé1', N'diane3@adventure-works.com', N'898-555-0137')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (533, 0, N'Ms.', N'Yuping', NULL, N'Tian', NULL, N'Tenth Bike Store', N'adventure-works\josé1', N'yuping0@adventure-works.com', N'744-555-0123')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (534, 0, N'Mr.', N'Stephen', N'A.', N'Mew', NULL, N'Recommended Bicycles', N'adventure-works\garrett1', N'stephen4@adventure-works.com', N'399-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (538, 0, N'Mr.', N'John', N'R.', N'Brooks', NULL, N'Prosperous Tours', N'adventure-works\jae0', N'john12@adventure-works.com', N'1 (11) 500 555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (541, 0, N'Mr.', N'Willie', N'P.', N'Brooks', N'Jr.', N'Nonskid Tire Company', N'adventure-works\pamela0', N'willie0@adventure-works.com', N'525-555-0174')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (542, 0, N'Mr.', N'Andrew', N'P.', N'Kobylinski', NULL, N'Finer Parts Shop', N'adventure-works\david8', N'andrew5@adventure-works.com', N'129-555-0185')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (543, 0, N'Mr.', N'R. Morgan', N'L.', N'Mendoza', NULL, N'Friendly Neighborhood Bikes', N'adventure-works\jillian0', N'rmorgan0@adventure-works.com', N'963-555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (544, 0, N'Mr.', N'Jay', NULL, N'Adams', NULL, N'Valley Bicycle Specialists', N'adventure-works\jillian0', N'jay1@adventure-works.com', N'158-555-0142')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (545, 0, N'Mr.', N'Christian', NULL, N'Kleinerman', NULL, N'Finish and Sealant Products', N'adventure-works\shu0', N'christian1@adventure-works.com', N'362-555-0177')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (546, 0, N'Mr.', N'Anton', NULL, N'Kirilov', NULL, N'Field Trip Store', N'adventure-works\linda3', N'anton0@adventure-works.com', N'608-555-0162')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (547, 0, N'Ms.', N'Gladys', N'F.', N'Mendiola', NULL, N'Curbside Sporting Goods', N'adventure-works\shu0', N'gladys0@adventure-works.com', N'535-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (550, 0, N'Ms.', N'Raquel', NULL, N'Mello', NULL, N'Remote Bicycle Specialists', N'adventure-works\josé1', N'raquel0@adventure-works.com', N'723-555-0124')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (551, 0, N'Mr.', N'Samuel', N'N.', N'Agcaoili', NULL, N'Vinyl and Plastic Goods Corporation', N'adventure-works\josé1', N'samuel0@adventure-works.com', N'554-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (552, 0, N'Mr.', N'Tim', NULL, N'Kim', NULL, N'Consolidated Messenger', N'adventure-works\garrett1', N'tim0@adventure-works.com', N'244-555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (556, 0, N'Ms.', N'Nancy', N'A.', N'McPhearson', NULL, N'Variety Cycling', N'adventure-works\jae0', N'nancy3@adventure-works.com', N'1 (11) 500 555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (559, 0, N'Ms.', N'Nkenge', NULL, N'McLin', NULL, N'Some Discount Store', N'adventure-works\pamela0', N'nkenge0@adventure-works.com', N'158-555-0123')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (560, 0, N'Mr.', N'Paul', N'L.', N'Alcorn', NULL, N'Major Sport Suppliers', N'adventure-works\david8', N'paul2@adventure-works.com', N'331-555-0162')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (561, 0, N'Mr.', N'Marvin', N'N.', N'Allen', NULL, N'Mountain Toy Store', N'adventure-works\jillian0', N'marvin0@adventure-works.com', N'447-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (562, 0, N'Ms.', N'Yvonne', NULL, N'McKay', NULL, N'Practical Bike Supply Company', N'adventure-works\jillian0', N'yvonne1@adventure-works.com', N'623-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (563, 0, N'Mr.', N'Sean', N'P.', N'Jacobson', NULL, N'Systematic Sales', N'adventure-works\shu0', N'sean2@adventure-works.com', N'555-555-0162')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (564, 0, N'Ms.', N'Michelle', NULL, N'Alexander', NULL, N'Imported and Domestic Cycles', N'adventure-works\linda3', N'michelle0@adventure-works.com', N'115-555-0175')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (565, 0, N'Mr.', N'Richard', N'M.', N'Bentley', N'Jr.', N'Metallic Paint and Overcoat Co', N'adventure-works\shu0', N'richard0@adventure-works.com', N'911-555-0153')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (568, 0, N'Mr.', N'Curtis', N'P.', N'Howard', NULL, N'Economy Center', N'adventure-works\josé1', N'curtis0@adventure-works.com', N'555-555-0162')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (569, 0, N'Mr.', N'Cecil', N'J.', N'Allison', NULL, N'Designated Distributors', N'adventure-works\josé1', N'cecil0@adventure-works.com', N'699-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (570, 0, N'Mr.', N'Gregory', N'F.', N'Alderson', NULL, N'Family''s Favorite Bike Shop', N'adventure-works\garrett1', N'gregory0@adventure-works.com', N'968-555-0153')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (574, 0, N'Ms.', N'Janice', N'K.', N'Hows', NULL, N'Area Sheet Metal Supply', N'adventure-works\jae0', N'janice1@adventure-works.com', N'1 (11) 500 555-0119')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (577, 0, N'Mr.', N'George', N'M.', N'Huckaby', NULL, N'Synthetic Materials Manufacturing', N'adventure-works\pamela0', N'george1@adventure-works.com', N'851-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (578, 0, N'Ms.', N'Carolyn', NULL, N'Farino', NULL, N'The Bike Shop', N'adventure-works\david8', N'carolyn0@adventure-works.com', N'957-555-0125')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (579, 0, N'Ms.', N'Kim', NULL, N'Abercrombie', NULL, N'Riders Company', N'adventure-works\jillian0', N'kim2@adventure-works.com', N'334-555-0137')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (580, 0, N'Mr.', N'Joshua', N'J.', N'Huff', NULL, N'Rural Sales and Service', N'adventure-works\jillian0', N'joshua0@adventure-works.com', N'190-555-0186')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (581, 0, N'Ms.', N'Geri', N'P.', N'Farrell', NULL, N'Safe Toys', N'adventure-works\shu0', N'geri0@adventure-works.com', N'329-555-0183')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (582, 0, N'Ms.', N'Catherine', N'R.', N'Abel', NULL, N'Professional Sales and Service', N'adventure-works\linda3', N'catherine0@adventure-works.com', N'747-555-0171')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (583, 0, N'Ms.', N'Laura', N'C.', N'Steele', NULL, N'Professional Containers and Packaging Co.', N'adventure-works\shu0', N'laura3@adventure-works.com', N'741-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (586, 0, N'Ms.', N'Shanay', N'B.', N'Steelman', NULL, N'One Bike Company', N'adventure-works\josé1', N'shanay0@adventure-works.com', N'797-555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (587, 0, N'Ms.', N'Rhoda', N'J.', N'Finley', NULL, N'Our Sporting Goods Store', N'adventure-works\josé1', N'rhoda0@adventure-works.com', N'920-555-0191')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (588, 0, N'Mr.', N'Pat', N'A.', N'Chambers', NULL, N'General Cycle Storehouse', N'adventure-works\garrett1', N'pat1@adventure-works.com', N'127-555-0124')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (592, 0, N'Mr.', N'Stefano', NULL, N'Stefani', NULL, N'Cycling Goods', N'adventure-works\jae0', N'stefano0@adventure-works.com', N'1 (11) 500 555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (595, 0, N'Mr.', N'Alan', NULL, N'Steiner', NULL, N'Cycle Clearance', N'adventure-works\pamela0', N'alan4@adventure-works.com', N'792-555-0194')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (596, 0, N'Ms.', N'Kathie', NULL, N'Flood', NULL, N'Coho Sports', N'adventure-works\david8', N'kathie1@adventure-works.com', N'627-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (597, 0, N'Mr.', N'Bob', NULL, N'Hodges', NULL, N'All Seasons Sports Supply', N'adventure-works\jillian0', N'bob2@adventure-works.com', N'129-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (598, 0, N'Mr.', N'Derik', NULL, N'Stenerson', NULL, N'Black Bicycle Company', N'adventure-works\jillian0', N'derik0@adventure-works.com', N'441-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (599, 0, N'Mr.', N'Raul', N'E.', N'Casts', NULL, N'Westside Plaza', N'adventure-works\shu0', N'raul0@adventure-works.com', N'362-555-0162')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (600, 0, N'Ms.', N'Holly', N'J.', N'Holt', NULL, N'Strenuous Exercise Shop', N'adventure-works\linda3', N'holly1@adventure-works.com', N'654-555-0150')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (601, 0, N'Mr.', N'Vassar', N'J.', N'Stern', NULL, N'Transport Bikes', N'adventure-works\shu0', N'vassar0@adventure-works.com', N'328-555-0123')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (604, 0, N'Ms.', N'Wathalee', N'R.', N'Steuber', NULL, N'Sellers of Cycles', N'adventure-works\pamela0', N'wathalee0@adventure-works.com', N'517-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (605, 0, N'Mr.', N'Matthew', N'J.', N'Cavallari', NULL, N'Outstanding Cycles', N'adventure-works\david8', N'matthew1@adventure-works.com', N'695-555-0161')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (606, 0, N'Ms.', N'Helge', NULL, N'Hoeing', NULL, N'Little Bicycle Supply Shop', N'adventure-works\jillian0', N'helge0@adventure-works.com', N'850-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (607, 0, N'Ms.', N'Alice', N'M.', N'Steiner', NULL, N'Maintenance and Repair for Bicycles', N'adventure-works\jillian0', N'alice4@adventure-works.com', N'355-555-0180')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (608, 0, N'Mr.', N'Steven', N'B.', N'Brown', N'IV', N'Golf and Cycle Store', N'adventure-works\shu0', N'steven1@adventure-works.com', N'280-555-0124')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (609, 0, N'Mr.', N'David', NULL, N'Hodgson', NULL, N'Good Toys', N'adventure-works\linda3', N'david16@adventure-works.com', N'969-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (610, 0, N'Ms.', N'Liza Marie', N'N.', N'Stevens', NULL, N'Fitness Department Stores', N'adventure-works\shu0', N'lizamarie0@adventure-works.com', N'366-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (613, 0, N'Mr.', N'Jim', NULL, N'Stewart', NULL, N'Famous Bike Shop', N'adventure-works\garrett1', N'jim5@adventure-works.com', N'226-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (617, 0, N'Ms.', N'Arlene', NULL, N'Huff', NULL, N'Tubeless Tire Company', N'adventure-works\jae0', N'arlene0@adventure-works.com', N'1 (11) 500 555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (620, 0, N'Mr.', N'Matthew', N'M.', N'Hunter', NULL, N'Tires and Tubes', N'adventure-works\pamela0', N'matthew4@adventure-works.com', N'482-555-0188')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (621, 0, N'Mr.', N'Matthew', NULL, N'Hink', NULL, N'Running and Cycling Gear', N'adventure-works\david8', N'matthew3@adventure-works.com', N'146-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (622, 0, N'Mr.', N'Robert', N'B.', N'Stotka', NULL, N'Gift and Toy Store', N'adventure-works\jillian0', N'robert12@adventure-works.com', N'493-555-0185')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (623, 0, N'Ms.', N'Phyllis', N'R.', N'Huntsman', NULL, N'Hardware Components', N'adventure-works\jillian0', N'phyllis1@adventure-works.com', N'153-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (624, 0, N'Mr.', N'Mike', NULL, N'Hines', NULL, N'First Cycle Store', N'adventure-works\shu0', N'mike3@adventure-works.com', N'454-555-0160')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (625, 0, N'Ms.', N'Kayla', N'M.', N'Stotler', NULL, N'Major Sporting Goods', N'adventure-works\linda3', N'kayla0@adventure-works.com', N'315-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (626, 0, N'Mr.', N'Lawrence', N'E.', N'Hurkett', NULL, N'Retail Sporting Goods', N'adventure-works\shu0', N'lawrence0@adventure-works.com', N'129-555-0185')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (629, 0, N'Mr.', N'Ryan', NULL, N'Ihrig', NULL, N'Efficient Cycling', N'adventure-works\josé1', N'ryan4@adventure-works.com', N'809-555-0152')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (630, 0, N'Mr.', N'Andrew', N'R.', N'Hill', NULL, N'Eastside Parts Shop', N'adventure-works\josé1', N'andrew4@adventure-works.com', N'194-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (631, 0, N'Mr.', N'Robert', N'P.', N'Lyeba', NULL, N'Tandem Sales and Service', N'adventure-works\garrett1', N'robert8@adventure-works.com', N'631-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (635, 0, N'Mr.', N'Roger', NULL, N'Van Houten', NULL, N'Sports Store', N'adventure-works\jae0', N'roger2@adventure-works.com', N'1 (11) 500 555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (637, 0, N'Mr.', N'Robert', NULL, N'Lyon', NULL, N'Reliable Retail Center', N'adventure-works\garrett1', N'robert9@adventure-works.com', N'666-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (641, 0, N'Ms.', N'Rose', N'M.', N'Vandenouer', NULL, N'Extended Tours', N'adventure-works\jae0', N'rose1@adventure-works.com', N'1 (11) 500 555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (643, 0, N'Ms.', N'Denise', N'R.', N'Maccietto', NULL, N'Friendly Bike Shop', N'adventure-works\michael9', N'denise1@adventure-works.com', N'537-555-0190')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (644, 0, N'Mr.', N'Gregory', N'T.', N'Vanderbout', N'Jr.', N'Convenient Sales and Service', N'adventure-works\pamela0', N'gregory1@adventure-works.com', N'684-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (645, 0, N'Mr.', N'Ronald', N'K.', N'Heymsfield', NULL, N'Superior Hardware Distributors', N'adventure-works\david8', N'ronald1@adventure-works.com', N'784-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (646, 0, N'Mr.', N'Scott', NULL, N'MacDonald', NULL, N'Yellow Bicycle Company', N'adventure-works\jillian0', N'scott7@adventure-works.com', N'470-555-0171')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (647, 0, N'Mr.', N'Michael', NULL, N'Vanderhyde', NULL, N'Solid Bike Parts', N'adventure-works\jillian0', N'michael25@adventure-works.com', N'918-555-0141')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (648, 0, N'Ms.', N'Cheryl', N'M.', N'Herring', NULL, N'Small Bike Shop', N'adventure-works\shu0', N'cheryl0@adventure-works.com', N'158-555-0154')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (649, 0, N'Mr.', N'Walter', N'J.', N'Mays', N'Sr.', N'Sports Products Store', N'adventure-works\linda3', N'walter1@adventure-works.com', N'245-555-0191')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (650, 0, N'Ms.', N'Margaret', N'J.', N'Vanderkamp', NULL, N'Permanent Finish Products', N'adventure-works\shu0', N'margaret2@adventure-works.com', N'265-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (653, 0, N'Ms.', N'Kara', N'N.', N'Vanderlinden', NULL, N'Mercantile Outlet', N'adventure-works\josé1', N'kara0@adventure-works.com', N'680-555-0160')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (654, 0, N'Mr.', N'Jésus', NULL, N'Hernandez', NULL, N'Online Bike Warehouse', N'adventure-works\josé1', N'jésus0@adventure-works.com', N'214-555-0145')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (655, 0, N'Ms.', N'Irene', N'J.', N'Hernandez', NULL, N'Operational Manufacturing', N'adventure-works\garrett1', N'irene0@adventure-works.com', N'790-555-0197')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (659, 0, N'Mr.', N'Ajay', NULL, N'Manchepalli', NULL, N'Shipping Specialists', N'adventure-works\jae0', N'ajay0@adventure-works.com', N'1 (11) 500 555-0174')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (660, 0, N'Mr.', N'Nieves', N'J.', N'Vargas', N'II', N'Exhilarating Cycles', N'adventure-works\michael9', N'nieves0@adventure-works.com', N'371-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (661, 0, N'Mr.', N'Kari', NULL, N'Hensien', NULL, N'General Department Stores', N'adventure-works\garrett1', N'kari0@adventure-works.com', N'143-555-0129')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (665, 0, N'Mr.', N'Tomas', N'M.', N'Manzanares', N'II', N'Authentic Sales and Service', N'adventure-works\jae0', N'tomas0@adventure-works.com', N'1 (11) 500 555-0178')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (668, 0, N'Ms.', N'Kathy', N'R.', N'Marcovecchio', NULL, N'Official Parts Shop', N'adventure-works\pamela0', N'kathy0@adventure-works.com', N'942-555-0141')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (669, 0, N'Ms.', N'Patricia', NULL, N'Doyle', NULL, N'Racing Bike Outlet', N'adventure-works\david8', N'patricia0@adventure-works.com', N'899-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (670, 0, N'Ms.', N'Valerie', N'M.', N'Hendricks', NULL, N'First Bike Store', N'adventure-works\jillian0', N'valerie0@adventure-works.com', N'859-555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (671, 0, N'Ms.', N'Jill', N'K.', N'Markwood', NULL, N'Contoso, Ltd.', N'adventure-works\jillian0', N'jill2@adventure-works.com', N'747-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (672, 0, N'Mr.', N'Gerald', N'M.', N'Drury', NULL, N'Utilitarian Sporting Goods', N'adventure-works\shu0', N'gerald0@adventure-works.com', N'169-555-0178')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (673, 0, N'Mr.', N'John', NULL, N'Hanson', NULL, N'Countryside Company', N'adventure-works\linda3', N'john20@adventure-works.com', N'107-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (674, 0, N'Ms.', N'Melissa', N'R.', N'Marple', NULL, N'Discount Tours', N'adventure-works\shu0', N'melissa0@adventure-works.com', N'685-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (677, 0, N'Ms.', N'Cecelia', N'L.', N'Marshall', NULL, N'Tire Exchange', N'adventure-works\josé1', N'cecelia0@adventure-works.com', N'394-555-0168')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (678, 0, N'Mr.', N'Reuben', NULL, N'D''sa', NULL, N'Vigorous Exercise Company', N'adventure-works\josé1', N'reuben1@adventure-works.com', N'916-555-0137')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (679, 0, N'Ms.', N'Brenda', N'F.', N'Heaney', NULL, N'Superb Sales and Repair', N'adventure-works\garrett1', N'brenda3@adventure-works.com', N'393-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (683, 0, N'Ms.', N'Linda', NULL, N'Martin', NULL, N'Oils and Fluids Warehouse', N'adventure-works\jae0', N'linda8@adventure-works.com', N'1 (11) 500 555-0137')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (685, 0, N'Mr.', N'James', N'B.', N'Haugh', N'Jr.', N'Family Cycle Store', N'adventure-works\garrett1', N'james8@adventure-works.com', N'763-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (689, 0, N'Ms.', N'Sandra', N'I.', N'Martinez', NULL, N'Consumer Equipment', N'adventure-works\jae0', N'sandra3@adventure-works.com', N'1 (11) 500 555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (692, 0, N'Ms.', N'Bev', N'L.', N'Desalvo', NULL, N'Successful Sales Company', N'adventure-works\pamela0', N'bev0@adventure-works.com', N'143-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (693, 0, N'Mr.', N'Bart', NULL, N'Duncan', NULL, N'Stock Parts and Supplies', N'adventure-works\david8', N'bart0@adventure-works.com', N'539-555-0121')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (694, 0, N'Ms.', N'Ann', N'T.', N'Hass', NULL, N'The Accessories Store', N'adventure-works\jillian0', N'ann2@adventure-works.com', N'713-555-0168')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (695, 0, N'Mr.', N'Rob', NULL, N'Caron', NULL, N'Responsible Bike Dealers', N'adventure-works\jillian0', N'rob2@adventure-works.com', N'620-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (696, 0, N'Mr.', N'Maciej', NULL, N'Dusza', NULL, N'Roadway Supplies', N'adventure-works\shu0', N'maciej1@adventure-works.com', N'962-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (697, 0, N'Mr.', N'Roger', NULL, N'Harui', NULL, N'Brakes and Gears', N'adventure-works\linda3', N'roger0@adventure-works.com', N'774-555-0133')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (698, 0, N'Mr.', N'Andy', NULL, N'Carothers', NULL, N'Western Bike Supplies', N'adventure-works\shu0', N'andy1@adventure-works.com', N'944-555-0148')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (701, 0, N'Ms.', N'Linda', N'R.', N'Ecoffey', NULL, N'Future Bikes', N'adventure-works\josé1', N'linda5@adventure-works.com', N'674-555-0188')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29485, 0, N'Ms.', N'Catherine', N'R.', N'Abel', NULL, N'Professional Sales and Service', N'adventure-works\linda3', N'catherine0@adventure-works.com', N'747-555-0171')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29486, 0, N'Ms.', N'Kim', NULL, N'Abercrombie', NULL, N'Riders Company', N'adventure-works\jillian0', N'kim2@adventure-works.com', N'334-555-0137')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29489, 0, N'Ms.', N'Frances', N'B.', N'Adams', NULL, N'Area Bike Accessories', N'adventure-works\shu0', N'frances0@adventure-works.com', N'991-555-0183')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29490, 0, N'Ms.', N'Margaret', N'J.', N'Smith', NULL, N'Bicycle Accessories and Kits', N'adventure-works\david8', N'margaret0@adventure-works.com', N'959-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29492, 0, N'Mr.', N'Jay', NULL, N'Adams', NULL, N'Valley Bicycle Specialists', N'adventure-works\jillian0', N'jay1@adventure-works.com', N'158-555-0142')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29494, 0, N'Mr.', N'Samuel', N'N.', N'Agcaoili', NULL, N'Vinyl and Plastic Goods Corporation', N'adventure-works\josé1', N'samuel0@adventure-works.com', N'554-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29496, 0, N'Mr.', N'Robert', N'E.', N'Ahlering', NULL, N'Fun Toys and Bikes', N'adventure-works\shu0', N'robert1@adventure-works.com', N'678-555-0175')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29497, 0, N'Mr.', N'François', NULL, N'Ferrier', NULL, N'Great Bikes ', N'adventure-works\david8', N'françois1@adventure-works.com', N'571-555-0128')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29499, 0, N'Ms.', N'Amy', N'E.', N'Alberts', NULL, N'Valley Toy Store', N'adventure-works\josé1', N'amy1@adventure-works.com', N'727-555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29502, 0, N'Mr.', N'Paul', N'L.', N'Alcorn', NULL, N'Major Sport Suppliers', N'adventure-works\david8', N'paul2@adventure-works.com', N'331-555-0162')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29503, 0, N'Mr.', N'Gregory', N'F.', N'Alderson', NULL, N'Family''s Favorite Bike Shop', N'adventure-works\garrett1', N'gregory0@adventure-works.com', N'968-555-0153')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29505, 0, N'Ms.', N'Michelle', NULL, N'Alexander', NULL, N'Imported and Domestic Cycles', N'adventure-works\linda3', N'michelle0@adventure-works.com', N'115-555-0175')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29506, 0, N'Mr.', N'Sean', N'P.', N'Jacobson', NULL, N'Systematic Sales', N'adventure-works\shu0', N'sean2@adventure-works.com', N'555-555-0162')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29508, 0, N'Mr.', N'Marvin', N'N.', N'Allen', NULL, N'Mountain Toy Store', N'adventure-works\jillian0', N'marvin0@adventure-works.com', N'447-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29510, 0, N'Mr.', N'Cecil', N'J.', N'Allison', NULL, N'Designated Distributors', N'adventure-works\josé1', N'cecil0@adventure-works.com', N'699-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29511, 0, N'Mr.', N'Oscar', N'L.', N'Alpuerto', NULL, N'Bold Bike Accessories', N'adventure-works\linda3', N'oscar0@adventure-works.com', N'855-555-0174')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29515, 0, N'Mr.', N'Maxwell', N'J.', N'Amland', NULL, N'Serious Cycles', N'adventure-works\garrett1', N'maxwell0@adventure-works.com', N'614-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29517, 0, N'Ms.', N'Ramona', N'J.', N'Antrim', NULL, N'Novelty Bikes', N'adventure-works\michael9', N'ramona0@adventure-works.com', N'327-555-0148')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29521, 0, N'Mr.', N'Tom', N'H', N'Johnston', NULL, N'Brightwork Company', N'adventure-works\shu0', N'tom1@adventure-works.com', N'883-555-0177')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29522, 0, N'Mr.', N'Thomas', N'B.', N'Armstrong', N'Jr.', N'Resale Services', N'adventure-works\linda3', N'thomas1@adventure-works.com', N'226-555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29523, 0, N'Mr.', N'John', NULL, N'Arthur', NULL, N'The Gear Store', N'adventure-works\jillian0', N'john6@adventure-works.com', N'149-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29524, 0, N'Mr.', N'Chris', NULL, N'Ashton', NULL, N'Immense Manufacturing Company', N'adventure-works\jillian0', N'chris3@adventure-works.com', N'556-555-0145')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29525, 0, N'Ms.', N'Teresa', NULL, N'Atkinson', NULL, N'Extended Bike Sales', N'adventure-works\linda3', N'teresa0@adventure-works.com', N'129-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29527, 0, N'Mr.', N'Robert', N'A.', N'Avalos', NULL, N'Workout Emporium', N'adventure-works\josé1', N'robert2@adventure-works.com', N'665-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29528, 0, N'Mr.', N'Stephen', N'M.', N'Ayers', NULL, N'Work and Play Association', N'adventure-works\michael9', N'stephen1@adventure-works.com', N'818-555-0171')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29530, 0, N'Mr.', N'Daniel', NULL, N'Blanco', NULL, N'Nice Bikes', N'adventure-works\garrett1', N'daniel0@adventure-works.com', N'221-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29531, 0, N'Mr.', N'Cory', N'K.', N'Booth', NULL, N'Remarkable Bike Store', N'adventure-works\linda3', N'cory0@adventure-works.com', N'121-555-0157')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29532, 0, N'Mr.', N'James', N'B.', N'Bailey', N'Jr.', N'Road-Way Mart', N'adventure-works\david8', N'james3@adventure-works.com', N'234-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29533, 0, N'Mr.', N'Douglas', N'A.', N'Baldwin', N'Jr.', N'Small Cycle Store', N'adventure-works\michael9', N'douglas1@adventure-works.com', N'583-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29535, 0, N'Mr.', N'Wayne', N'N.', N'Banack', NULL, N'Grand Bicycle Stores', N'adventure-works\jillian0', N'wayne0@adventure-works.com', N'640-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29536, 0, N'Mr.', N'Robert', N'L.', N'Barker', NULL, N'Kickstand Sellers', N'adventure-works\michael9', N'robert3@adventure-works.com', N'241-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29539, 0, N'Mr.', N'Josh', NULL, N'Barnhill', NULL, N'Gasless Cycle Shop', N'adventure-works\garrett1', N'josh0@adventure-works.com', N'584-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29541, 0, NULL, N'Gytis', N'M', N'Barzdukas', NULL, N'Transportation Options', N'adventure-works\josé1', N'gytis0@adventure-works.com', N'257-555-0119')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29544, 0, N'Mr.', N'Shaun', NULL, N'Beasley', NULL, N'Finer Cycle Shop', N'adventure-works\garrett1', N'shaun0@adventure-works.com', N'396-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29545, 0, N'Mr.', N'John', N'A.', N'Beaver', NULL, N'Center Cycle Shop', N'adventure-works\pamela0', N'john8@adventure-works.com', N'521-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29546, 0, N'Mr.', N'Christopher', N'R.', N'Beck', N'Jr.', N'Bulk Discount Store', N'adventure-works\jae0', N'christopher1@adventure-works.com', N'1 (11) 500 555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29548, 0, N'Ms.', N'Ann', NULL, N'Beebe', NULL, N'First-Rate Outlet', N'adventure-works\garrett1', N'ann0@adventure-works.com', N'277-555-0169')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29550, 0, N'Mr.', N'Stanley', N'A.', N'Alan', N'Jr.', N'Another Bicycle Company', N'adventure-works\david8', N'stanley0@adventure-works.com', N'156-555-0126')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29553, 0, N'Ms.', N'Edna', N'J.', N'Benson', NULL, N'Unsurpassed Bikes', N'adventure-works\jillian0', N'edna0@adventure-works.com', N'789-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29554, 0, N'Mr.', N'Payton', N'P.', N'Benson', NULL, N'Field Trip Inc', N'adventure-works\michael9', N'payton0@adventure-works.com', N'528-555-0183')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29557, 0, N'Mr.', N'Alexander', N'J.', N'Berger', N'II', N'Odometers and Accessories Company', N'adventure-works\garrett1', N'alexander0@adventure-works.com', N'519-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29558, 0, N'Mr.', N'John', N'M.', N'Berger', N'Jr.', N'Scratch-Resistant Finishes Company', N'adventure-works\josé1', N'john10@adventure-works.com', N'156-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29559, 0, N'Mr.', N'Robert', N'M.', N'Bernacchi', NULL, N'Safe Cycles Shop', N'adventure-works\david8', N'robert4@adventure-works.com', N'449-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29560, 0, N'Mr.', N'Matthias', NULL, N'Berndt', NULL, N'Number 1 Supply', N'adventure-works\shu0', N'matthias1@adventure-works.com', N'384-555-0169')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29562, 0, N'Mr.', N'Steven', N'B.', N'Brown', N'IV', N'Golf and Cycle Store', N'adventure-works\shu0', N'steven1@adventure-works.com', N'280-555-0124')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29565, 0, N'Mr.', N'Jimmy', NULL, N'Bischoff', NULL, N'World Bike Discount Store', N'adventure-works\linda3', N'jimmy1@adventure-works.com', N'992-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29566, 0, N'Ms.', N'Mae', N'M.', N'Black', NULL, N'Historic Bicycle Sales', N'adventure-works\michael9', N'mae1@adventure-works.com', N'264-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29567, 0, N'Ms.', N'Jackie', N'E.', N'Blackwell', NULL, N'Commuter Bicycle Store', N'adventure-works\josé1', N'jackie0@adventure-works.com', N'972-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29568, 0, N'Mr.', N'Donald', N'L.', N'Blanton', NULL, N'Coalition Bike Company', N'adventure-works\shu0', N'donald0@adventure-works.com', N'357-555-0161')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29569, 0, N'Ms.', N'Linda', N'E.', N'Burnett', NULL, N'Travel Systems', N'adventure-works\jillian0', N'linda4@adventure-works.com', N'121-555-0121')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29570, 0, N'Mr.', N'Michael', N'Greg', N'Blythe', NULL, N'Grease and Oil Products Company', N'adventure-works\jillian0', N'michael11@adventure-works.com', N'126-555-0172')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29571, 0, N'Ms.', N'Gabriel', N'L.', N'Bockenkamp', NULL, N'Moderately-Priced Bikes Store', N'adventure-works\pamela0', N'gabriel0@adventure-works.com', N'763-555-0145')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29573, 0, N'Sr.', N'Luis', NULL, N'Bonifaz', NULL, N'Economy Bikes Company', N'adventure-works\linda3', N'luis0@adventure-works.com', N'688-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29574, 0, N'Mr.', N'Randall', NULL, N'Boseman', NULL, N'Third Bike Store', N'adventure-works\jillian0', N'randall0@adventure-works.com', N'383-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29576, 0, N'Mr.', N'Eli', NULL, N'Bowen', NULL, N'Bikes for Two', N'adventure-works\josé1', N'eli0@adventure-works.com', N'371-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29577, 0, N'Mr.', N'Lester', N'J.', N'Bowman', N'Sr.', N'Metal Processing Company', N'adventure-works\garrett1', N'lester0@adventure-works.com', N'844-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29579, 0, N'Mr.', N'Cornelius', N'L.', N'Brandon', NULL, N'Initial Bike Company', N'adventure-works\shu0', N'cornelius0@adventure-works.com', N'229-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29580, 0, N'Mr.', N'Richard', NULL, N'Bready', NULL, N'Latest Sports Equipment', N'adventure-works\david8', N'richard1@adventure-works.com', N'340-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29582, 0, N'Mr.', N'Ted', NULL, N'Bremer', NULL, N'Raw Materials Inc', N'adventure-works\pamela0', N'ted0@adventure-works.com', N'962-555-0166')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29583, 0, N'Mr.', N'Alan', NULL, N'Brewer', NULL, N'Lots of Bikes Storehouse', N'adventure-works\jillian0', N'alan1@adventure-works.com', N'494-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29584, 0, N'Mr.', N'Walter', N'J.', N'Brian', N'IV', N'Futuristic Bikes', N'adventure-works\shu0', N'walter0@adventure-works.com', N'163-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29585, 0, N'Mr.', N'Christopher', N'M.', N'Bright', NULL, N'Parcel Express Delivery Service', N'adventure-works\david8', N'christopher2@adventure-works.com', N'162-555-0166')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29587, 0, N'Mr.', N'John', N'R.', N'Brooks', NULL, N'Prosperous Tours', N'adventure-works\jae0', N'john12@adventure-works.com', N'1 (11) 500 555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29588, 0, N'Mr.', N'Willie', N'P.', N'Brooks', N'Jr.', N'Nonskid Tire Company', N'adventure-works\pamela0', N'willie0@adventure-works.com', N'525-555-0174')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29590, 0, N'Mr.', N'Jo', NULL, N'Brown', NULL, N'Metro Bike Works', N'adventure-works\michael9', N'jo2@adventure-works.com', N'689-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29591, 0, N'Mr.', N'Robert', NULL, N'Brown', NULL, N'Best o'' Bikes', N'adventure-works\jillian0', N'robert5@adventure-works.com', N'575-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29593, 0, N'Ms.', N'Mary', N'K.', N'Browning', NULL, N'Client Discount Store', N'adventure-works\jillian0', N'mary5@adventure-works.com', N'658-555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29596, 0, N'Mr.', N'Eric', N'J.', N'Brumfield', NULL, N'Requisite Part Supply', N'adventure-works\josé1', N'eric3@adventure-works.com', N'644-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29598, 0, N'Mr.', N'Michael', NULL, N'Brundage', NULL, N'Mechanical Products Ltd.', N'adventure-works\shu0', N'michael13@adventure-works.com', N'128-555-0148')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29599, 0, N'Ms.', N'Shirley', N'R.', N'Bruner', NULL, N'Commendable Bikes', N'adventure-works\david8', N'shirley0@adventure-works.com', N'383-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29600, 0, N'Ms.', N'June', N'B.', N'Brunner', NULL, N'Online Bike Sellers', N'adventure-works\michael9', N'june0@adventure-works.com', N'249-555-0172')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29601, 0, N'Mr.', N'Dirk', N'J.', N'Bruno', NULL, N'Custom Accessories Company', N'adventure-works\garrett1', N'dirk0@adventure-works.com', N'817-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29603, 0, N'Sra.', N'Janaina Barreiro Gambaro', NULL, N'Bueno', NULL, N'Courteous Bicycle Specialists', N'adventure-works\josé1', N'janainabarreirogambaro0@adventure-works.com', N'476-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29605, 0, N'Ms.', N'Megan', N'E.', N'Burke', NULL, N'Professional Cycle Store', N'adventure-works\shu0', N'megan0@adventure-works.com', N'148-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29606, 0, N'Ms.', N'Karren', N'K.', N'Burkhardt', NULL, N'Fifth Bike Store', N'adventure-works\david8', N'karren0@adventure-works.com', N'652-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29608, 0, N'Mr.', N'Timothy', N'B.', N'Burnett', N'Jr.', N'Farthest Bike Store', N'adventure-works\josé1', N'timothy0@adventure-works.com', N'251-555-0172')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29611, 0, N'Mr.', N'Jared', N'L.', N'Bustamante', NULL, N'Alternative Vehicles', N'adventure-works\pamela0', N'jared0@adventure-works.com', N'164-555-0147')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29612, 0, N'Mr.', N'Richard', N'A.', N'Byham', NULL, N'Channel Outlet', N'adventure-works\jae0', N'richard2@adventure-works.com', N'1 (11) 500 555-0138')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29614, 0, N'Mr.', N'Ryan', NULL, N'Calafato', NULL, N'Retail Mall', N'adventure-works\josé1', N'ryan1@adventure-works.com', N'726-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29615, 0, N'Ms.', N'Mari', N'B.', N'Caldwell', NULL, N'Metro Metals Co.', N'adventure-works\jae0', N'mari0@adventure-works.com', N'1 (11) 500 555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29616, 0, N'Ms.', N'Barbara', N'J.', N'Calone', NULL, N'Sheet Metal Manufacturing', N'adventure-works\jillian0', N'barbara2@adventure-works.com', N'145-555-0152')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29617, 0, N'Ms.', N'Lindsey', N'R.', N'Camacho', NULL, N'Thorough Parts and Repair Services', N'adventure-works\pamela0', N'lindsey0@adventure-works.com', N'827-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29618, 0, N'Sr.', N'Gustavo', NULL, N'Camargo', NULL, N'Uttermost Bike Shop', N'adventure-works\jae0', N'gustavo1@adventure-works.com', N'1 (11) 500 555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29620, 0, N'Ms.', N'Joan', N'M.', N'Campbell', NULL, N'Two-Wheeled Transit Company', N'adventure-works\josé1', N'joan0@adventure-works.com', N'700-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29622, 0, N'Mr.', N'Henry', N'L.', N'Campen', NULL, N'Metro Cycle Shop', N'adventure-works\david8', N'henry0@adventure-works.com', N'635-555-0126')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29623, 0, N'Mr.', N'Chris', NULL, N'Cannon', NULL, N'Outdoor Sporting Goods', N'adventure-works\shu0', N'chris5@adventure-works.com', N'118-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29625, 0, N'Ms.', N'Suzana De Abreu', N'A.', N'Canuto', NULL, N'Petroleum Products Distributors', N'adventure-works\josé1', N'suzanadeabreu0@adventure-works.com', N'990-555-0141')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29627, 0, N'Mr.', N'Johnny', N'A.', N'Caprio', N'Jr.', N'Bikes and Motorbikes', N'adventure-works\garrett1', N'johnny0@adventure-works.com', N'112-555-0191')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29629, 0, N'Mr.', N'Carlton', N'M.', N'Carlisle', NULL, N'Camping and Sports Store', N'adventure-works\josé1', N'carlton0@adventure-works.com', N'193-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29631, 0, N'Ms.', N'Jane', N'N.', N'Carmichael', NULL, N'Rural Department Store', N'adventure-works\shu0', N'jane0@adventure-works.com', N'716-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29632, 0, N'Ms.', N'Jovita', N'A.', N'Carmody', NULL, N'Sports Commodities', N'adventure-works\david8', N'jovita0@adventure-works.com', N'646-555-0137')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29635, 0, N'Mr.', N'Rob', NULL, N'Caron', NULL, N'Responsible Bike Dealers', N'adventure-works\jillian0', N'rob2@adventure-works.com', N'620-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29636, 0, N'Mr.', N'Andy', NULL, N'Carothers', NULL, N'Western Bike Supplies', N'adventure-works\shu0', N'andy1@adventure-works.com', N'944-555-0148')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29637, 0, N'Ms.', N'Donna', N'F.', N'Carreras', NULL, N'Advanced Bike Components', N'adventure-works\jillian0', N'donna0@adventure-works.com', N'279-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29638, 0, N'Ms.', N'Rosmarie', N'J.', N'Carroll', NULL, N'Aerobic Exercise Company', N'adventure-works\linda3', N'rosmarie0@adventure-works.com', N'244-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29639, 0, N'Mr.', N'Joseph', N'N.', N'Castellucio', NULL, N'Corner Bicycle Supply', N'adventure-works\josé1', N'joseph1@adventure-works.com', N'180-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29641, 0, N'Mr.', N'Raul', N'E.', N'Casts', NULL, N'Westside Plaza', N'adventure-works\shu0', N'raul0@adventure-works.com', N'362-555-0162')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29643, 0, N'Mr.', N'Matthew', N'J.', N'Cavallari', NULL, N'Outstanding Cycles', N'adventure-works\david8', N'matthew1@adventure-works.com', N'695-555-0161')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29644, 0, N'Ms.', N'Brigid', N'F.', N'Cavendish', NULL, N'Vigorous Sports Store', N'adventure-works\jae0', N'brigid0@adventure-works.com', N'1 (11) 500 555-0178')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29645, 0, N'Mr.', N'Andrew', NULL, N'Cencini', NULL, N'Sports Merchandise', N'adventure-works\pamela0', N'andrew2@adventure-works.com', N'644-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29646, 0, N'Ms.', N'Stacey', N'M.', N'Cereghino', NULL, N'Fitness Toy Store', N'adventure-works\jillian0', N'stacey0@adventure-works.com', N'351-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29649, 0, N'Mr.', N'Pat', N'A.', N'Chambers', NULL, N'General Cycle Storehouse', N'adventure-works\garrett1', N'pat1@adventure-works.com', N'127-555-0124')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29650, 0, N'Mr.', N'Forrest', N'J.', N'Chandler', NULL, N'Fitness Cycling', N'adventure-works\shu0', N'forrest0@adventure-works.com', N'448-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29651, 0, N'Mr.', N'Lee', N'J.', N'Chapla', NULL, N'Good Bike Shop', N'adventure-works\jillian0', N'lee0@adventure-works.com', N'223-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29653, 0, N'Mr.', N'Pei', NULL, N'Chow', NULL, N'Thrilling Bike Tours', N'adventure-works\linda3', N'pei0@adventure-works.com', N'789-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29654, 0, N'Mr.', N'Yao-Qiang', NULL, N'Cheng', NULL, N'This Area Sporting Goods', N'adventure-works\jillian0', N'yao-qiang0@adventure-works.com', N'344-555-0181')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29655, 0, N'Ms.', N'Nicky', N'E.', N'Chesnut', NULL, N'Full-Service Bike Store', N'adventure-works\michael9', N'nicky0@adventure-works.com', N'264-555-0164')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29659, 0, N'Ms.', N'Ruth', N'A.', N'Choin', NULL, N'Genuine Bike Shop', N'adventure-works\jillian0', N'ruth1@adventure-works.com', N'273-555-0181')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29660, 0, N'Mr.', N'Anthony', NULL, N'Chor', NULL, N'Extreme Riding Supplies', N'adventure-works\linda3', N'anthony0@adventure-works.com', N'429-555-0145')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29662, 0, N'Ms.', N'Jill', N'J.', N'Christie', NULL, N'Fleet Bikes', N'adventure-works\linda3', N'jill1@adventure-works.com', N'927-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29663, 0, N'Ms.', N'Alice', NULL, N'Clark', NULL, N'Local Hardware Factory', N'adventure-works\jillian0', N'alice1@adventure-works.com', N'221-555-0141')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29666, 0, N'Ms.', N'Jane', NULL, N'Clayton', NULL, N'South Bike Company', N'adventure-works\garrett1', N'jane1@adventure-works.com', N'206-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29668, 0, N'Ms.', N'Connie', N'L.', N'Coffman', NULL, N'Discount Bicycle Specialists', N'adventure-works\jillian0', N'connie0@adventure-works.com', N'426-555-0181')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29671, 0, N'Mr.', N'Pat', NULL, N'Coleman', NULL, N'Machines & Cycles Store', N'adventure-works\garrett1', N'pat2@adventure-works.com', N'292-555-0128')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29673, 0, N'Mr.', N'John', N'L.', N'Colon', NULL, N'Two Wheels Cycle Store', N'adventure-works\linda3', N'john14@adventure-works.com', N'397-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29674, 0, N'Mr.', N'Scott', N'A.', N'Colvin', NULL, N'Westside Cycle Store', N'adventure-works\jillian0', N'scott1@adventure-works.com', N'119-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29677, 0, N'Mr.', N'William', N'J.', N'Conner', NULL, N'Urban Sports Emporium', N'adventure-works\josé1', N'william1@adventure-works.com', N'383-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29680, 0, N'Ms.', N'Dorothy', N'J.', N'Contreras', NULL, N'Sixth Bike Store', N'adventure-works\josé1', N'dorothy0@adventure-works.com', N'428-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29682, 0, N'Mr.', N'Scott', NULL, N'Cooper', NULL, N'Vehicle Shop', N'adventure-works\shu0', N'scott2@adventure-works.com', N'773-555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29683, 0, N'Ms.', N'Eva', NULL, N'Corets', NULL, N'First Department Stores', N'adventure-works\david8', N'eva0@adventure-works.com', N'542-555-0164')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29684, 0, N'Mr.', N'Marlin', N'M.', N'Coriell', NULL, N'Grand Sport Boutique', N'adventure-works\michael9', N'marlin0@adventure-works.com', N'941-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29686, 0, N'Mr.', N'Jack', NULL, N'Creasey', NULL, N'Distinctive Store', N'adventure-works\shu0', N'jack2@adventure-works.com', N'539-555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29688, 0, N'Mr.', N'Grant', NULL, N'Culbertson', NULL, N'Handy Bike Services', N'adventure-works\michael9', N'grant1@adventure-works.com', N'859-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29689, 0, N'Mr.', N'Scott', NULL, N'Culp', NULL, N'Friendly Bike Shop', N'adventure-works\david8', N'scott3@adventure-works.com', N'119-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29690, 0, N'Mr.', N'Conor', NULL, N'Cunningham', NULL, N'Fashionable Bikes and Accessories', N'adventure-works\shu0', N'conor0@adventure-works.com', N'115-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29692, 0, N'Mr.', N'Thierry', NULL, N'D''Hers', NULL, N'Citywide Service and Repair', N'adventure-works\josé1', N'thierry1@adventure-works.com', N'680-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29695, 0, N'Ms.', N'Megan', N'N.', N'Davis', NULL, N'Rugged Bikes', N'adventure-works\david8', N'megan1@adventure-works.com', N'839-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29696, 0, N'Sr.', N'Alvaro', NULL, N'De Matos Miranda Filho', NULL, N'Principal Bike Company', N'adventure-works\shu0', N'alvaro0@adventure-works.com', N'551-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29698, 0, N'Mr.', N'Jacob', N'N.', N'Dean', NULL, N'Finer Riding Supplies', N'adventure-works\josé1', N'jacob0@adventure-works.com', N'767-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29699, 0, N'Mr.', N'Alexander', N'J.', N'Deborde', NULL, N'Neighborhood Store', N'adventure-works\garrett1', N'alexander1@adventure-works.com', N'394-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29702, 0, N'Ms.', N'Aidan', NULL, N'Delaney', NULL, N'Paint Supply', N'adventure-works\jillian0', N'aidan0@adventure-works.com', N'358-555-0188')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29703, 0, N'Mr.', N'Stefan', NULL, N'Delmarco', NULL, N'Preferred Bikes', N'adventure-works\linda3', N'stefan0@adventure-works.com', N'819-555-0186')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29705, 0, N'Ms.', N'Della', N'F.', N'Demott Jr', NULL, N'Rewarding Activities Company', N'adventure-works\garrett1', N'della0@adventure-works.com', N'752-555-0185')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29708, 0, N'Mr.', N'Prashanth', NULL, N'Desai', NULL, N'Stationary Bikes and Stands', N'adventure-works\jillian0', N'prashanth0@adventure-works.com', N'138-555-0156')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29709, 0, N'Ms.', N'Bev', N'L.', N'Desalvo', NULL, N'Successful Sales Company', N'adventure-works\pamela0', N'bev0@adventure-works.com', N'143-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29710, 0, N'Ms.', N'Brenda', NULL, N'Diaz', NULL, N'Downtown Hotel', N'adventure-works\shu0', N'brenda2@adventure-works.com', N'147-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29711, 0, N'Ms.', N'Gabriele', NULL, N'Dickmann', NULL, N'Certified Sports Supply', N'adventure-works\josé1', N'gabriele0@adventure-works.com', N'835-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29713, 0, N'Mr.', N'Dick', NULL, N'Dievendorff', NULL, N'Rampart Amusement Company', N'adventure-works\jae0', N'dick1@adventure-works.com', N'1 (11) 500 555-0193')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29714, 0, N'Mr.', N'Rudolph', N'J.', N'Dillon', N'Sr.', N'Sundry Sporting Goods', N'adventure-works\josé1', N'rudolph0@adventure-works.com', N'722-555-0169')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29716, 0, N'Mr.', N'Blaine', NULL, N'Dockter', NULL, N'Farthermost Bike Shop', N'adventure-works\shu0', N'blaine0@adventure-works.com', N'156-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29717, 0, N'Ms.', N'Cindy', N'M.', N'Dodd', NULL, N'Suburban Cycle Shop', N'adventure-works\david8', N'cindy0@adventure-works.com', N'706-555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29719, 0, N'Ms.', N'Patricia', NULL, N'Doyle', NULL, N'Racing Bike Outlet', N'adventure-works\david8', N'patricia0@adventure-works.com', N'899-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29720, 0, N'Mr.', N'Gerald', N'M.', N'Drury', NULL, N'Utilitarian Sporting Goods', N'adventure-works\shu0', N'gerald0@adventure-works.com', N'169-555-0178')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29722, 0, N'Mr.', N'Reuben', NULL, N'D''sa', NULL, N'Vigorous Exercise Company', N'adventure-works\josé1', N'reuben1@adventure-works.com', N'916-555-0137')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29727, 0, N'Mr.', N'Bart', NULL, N'Duncan', NULL, N'Stock Parts and Supplies', N'adventure-works\david8', N'bart0@adventure-works.com', N'539-555-0121')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29728, 0, N'Mr.', N'Maciej', NULL, N'Dusza', NULL, N'Roadway Supplies', N'adventure-works\shu0', N'maciej1@adventure-works.com', N'962-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29730, 0, N'Ms.', N'Linda', N'R.', N'Ecoffey', NULL, N'Future Bikes', N'adventure-works\josé1', N'linda5@adventure-works.com', N'674-555-0188')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29732, 0, N'Ms.', N'Carol', N'B.', N'Elliott', NULL, N'Satin Finish Company', N'adventure-works\jillian0', N'carol2@adventure-works.com', N'847-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29733, 0, N'Ms.', N'Shannon', N'P.', N'Elliott', NULL, N'Regional Manufacturing', N'adventure-works\shu0', N'shannon0@adventure-works.com', N'425-555-0158')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29734, 0, N'Ms.', N'Jauna', N'E.', N'Elson', NULL, N'Original Bicycle Supply Company', N'adventure-works\josé1', N'jauna0@adventure-works.com', N'185-555-0190')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29736, 0, N'Mr.', N'Terry', NULL, N'Eminhizer', NULL, N'Action Bicycle Specialists', N'adventure-works\jae0', N'terry1@adventure-works.com', N'1 (11) 500 555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29737, 0, N'Mr.', N'John', NULL, N'Emory', NULL, N'Roadway Bike Emporium', N'adventure-works\pamela0', N'john16@adventure-works.com', N'691-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29738, 0, N'Ms.', N'Gail', NULL, N'Erickson', NULL, N'Sleek Bikes ', N'adventure-works\jillian0', N'gail1@adventure-works.com', N'834-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29739, 0, N'Mr.', N'Mark', N'B', N'Erickson', NULL, N'Retail Sporting Equipment', N'adventure-works\shu0', N'mark2@adventure-works.com', N'962-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29740, 0, N'Ms.', N'Martha', N'R.', N'Espinoza', NULL, N'Price-Cutter Discount Bikes', N'adventure-works\josé1', N'martha0@adventure-works.com', N'753-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29741, 0, N'Sra.', N'Janeth', NULL, N'Esteves', NULL, N'Central Bicycle Specialists', N'adventure-works\jae0', N'janeth1@adventure-works.com', N'1 (11) 500 555-0136')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29742, 0, N'Ms.', N'Twanna', N'R.', N'Evans', NULL, N'Vast Bike Sales and Rental', N'adventure-works\pamela0', N'twanna0@adventure-works.com', N'554-555-0124')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29743, 0, N'Ms.', N'Ann', N'R.', N'Evans', NULL, N'Summer Sports Place', N'adventure-works\jillian0', N'ann1@adventure-works.com', N'252-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29744, 0, N'Mr.', N'John', NULL, N'Evans', NULL, N'Real Sporting Goods', N'adventure-works\shu0', N'john17@adventure-works.com', N'581-555-0172')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29747, 0, N'Ms.', N'Carolyn', NULL, N'Farino', NULL, N'The Bike Shop', N'adventure-works\david8', N'carolyn0@adventure-works.com', N'957-555-0125')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29748, 0, N'Ms.', N'Geri', N'P.', N'Farrell', NULL, N'Safe Toys', N'adventure-works\shu0', N'geri0@adventure-works.com', N'329-555-0183')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29750, 0, N'Ms.', N'Rhoda', N'J.', N'Finley', NULL, N'Our Sporting Goods Store', N'adventure-works\josé1', N'rhoda0@adventure-works.com', N'920-555-0191')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29753, 0, N'Ms.', N'Kathie', NULL, N'Flood', NULL, N'Coho Sports', N'adventure-works\david8', N'kathie1@adventure-works.com', N'627-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29755, 0, N'Ms.', N'Kelly', NULL, N'Focht', NULL, N'Quick Delivery Service', N'adventure-works\garrett1', N'kelly0@adventure-works.com', N'272-555-0123')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29757, 0, N'Mr.', N'Garth', NULL, N'Fort', NULL, N'Basic Sports Equipment', N'adventure-works\linda3', N'garth0@adventure-works.com', N'768-555-0125')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29758, 0, N'Ms.', N'Dorothy', N'J.', N'Fox', NULL, N'Cash & Carry Bikes', N'adventure-works\jillian0', N'dorothy1@adventure-works.com', N'191-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29761, 0, N'Ms.', N'Susan', N'E.', N'French', NULL, N'General Bike Corporation', N'adventure-works\garrett1', N'susan3@adventure-works.com', N'994-555-0194')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29763, 0, N'Mr.', N'Mihail', NULL, N'Frintu', NULL, N'Retail Cycle Shop', N'adventure-works\linda3', N'mihail1@adventure-works.com', N'777-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29764, 0, N'Mr.', N'John', NULL, N'Ford', NULL, N'Social Activities Club', N'adventure-works\jillian0', N'john19@adventure-works.com', N'596-555-0153')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29765, 0, N'Mr.', N'Paul', N'J.', N'Fulton', NULL, N'Blue Bicycle Company', N'adventure-works\michael9', N'paul3@adventure-works.com', N'492-555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29766, 0, N'Mr.', N'Bob', NULL, N'Gage', NULL, N'General Riding Supplies', N'adventure-works\garrett1', N'bob1@adventure-works.com', N'962-555-0175')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29768, 0, N'Mr.', N'Michael', NULL, N'Galos', NULL, N'Riding Excursions', N'adventure-works\linda3', N'michael15@adventure-works.com', N'912-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29769, 0, N'Mr.', N'Jon', NULL, N'Ganio', NULL, N'Unique Bikes', N'adventure-works\jillian0', N'jon0@adventure-works.com', N'672-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29770, 0, N'Ms.', N'Kathleen', N'M.', N'Garza', NULL, N'Rural Cycle Emporium', N'adventure-works\josé1', N'kathleen0@adventure-works.com', N'150-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29771, 0, N'Mr.', N'Dominic', N'P.', N'Gash', NULL, N'Associated Bikes', N'adventure-works\shu0', N'dominic0@adventure-works.com', N'192-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29772, 0, N'Ms.', N'Janet', N'M.', N'Gates', NULL, N'Modular Cycle Systems', N'adventure-works\jillian0', N'janet1@adventure-works.com', N'710-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29773, 0, N'Mr.', N'Orlando', N'N.', N'Gee', NULL, N'A Bike Store', N'adventure-works\pamela0', N'orlando0@adventure-works.com', N'245-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29774, 0, N'Mr.', N'Darren', NULL, N'Gehring', NULL, N'Journey Sporting Goods', N'adventure-works\jillian0', N'darren0@adventure-works.com', N'417-555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29775, 0, N'Mr.', N'Jim', NULL, N'Geist', NULL, N'Two Bike Shops', N'adventure-works\pamela0', N'jim1@adventure-works.com', N'724-555-0161')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29776, 0, N'Ms.', N'Barbara', N'J.', N'German', NULL, N'Cycles Wholesaler & Mfg.', N'adventure-works\jae0', N'barbara4@adventure-works.com', N'1 (11) 500 555-0181')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29778, 0, N'Mr.', N'Leo', NULL, N'Giakoumakis', NULL, N'Number One Bike Co.', N'adventure-works\jae0', N'leo0@adventure-works.com', N'1 (11) 500 555-0169')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29780, 0, N'Mr.', N'Frances', N'J.', N'Giglio', NULL, N'Standard Bikes', N'adventure-works\josé1', N'frances1@adventure-works.com', N'692-555-0136')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29781, 0, N'Mr.', N'Guy', NULL, N'Gilbert', NULL, N'The Bicycle Accessories Company', N'adventure-works\shu0', N'guy0@adventure-works.com', N'583-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29782, 0, N'Ms.', N'Janet', N'J.', N'Gilliat', NULL, N'Active Systems', N'adventure-works\jillian0', N'janet2@adventure-works.com', N'521-555-0183')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29783, 0, N'Ms.', N'Mary', N'M.', N'Gimmi', NULL, N'Futuristic Sport Distributors', N'adventure-works\shu0', N'mary6@adventure-works.com', N'149-555-0196')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29784, 0, N'Ms.', N'Jeanie', N'R.', N'Glenn', N'PhD', N'Big-Time Bike Store', N'adventure-works\shu0', N'jeanie0@adventure-works.com', N'669-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29785, 0, N'Ms.', N'Diane', N'R.', N'Glimp', NULL, N'The Showroom', N'adventure-works\josé1', N'diane3@adventure-works.com', N'898-555-0137')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29787, 0, N'Mr.', N'Scott', NULL, N'Gode', NULL, N'Year-Round Sports', N'adventure-works\david8', N'scott4@adventure-works.com', N'164-555-0145')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29788, 0, N'Mr.', N'Mete', NULL, N'Goktepe', NULL, N'The New Bike Store', N'adventure-works\linda3', N'mete0@adventure-works.com', N'637-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29789, 0, N'Mr.', N'Brian', N'R', N'Goldstein', NULL, N'Primary Bike Distributors', N'adventure-works\garrett1', N'brian4@adventure-works.com', N'495-555-0161')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29792, 0, N'Ms.', N'Abigail', N'J.', N'Gonzalez', NULL, N'Genial Bike Associates', N'adventure-works\jillian0', N'abigail0@adventure-works.com', N'121-555-0139')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29793, 0, N'Mr.', N'Michael', NULL, N'Graff', NULL, N'Commercial Sporting Goods', N'adventure-works\shu0', N'michael16@adventure-works.com', N'132-555-0150')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29794, 0, N'Mr.', N'Derek', NULL, N'Graham', NULL, N'Wholesale Parts', N'adventure-works\josé1', N'derek0@adventure-works.com', N'674-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29796, 0, N'Mr.', N'Jon', NULL, N'Grande', NULL, N'Riding Cycles', N'adventure-works\jae0', N'jon1@adventure-works.com', N'1 (11) 500 555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29797, 0, N'Ms.', N'Jane', N'P.', N'Greer', NULL, N'Metro Manufacturing', N'adventure-works\josé1', N'jane2@adventure-works.com', N'737-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29799, 0, N'Mr.', N'Douglas', NULL, N'Groncki', NULL, N'Locks Company', N'adventure-works\shu0', N'douglas2@adventure-works.com', N'385-555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29800, 0, N'Mr.', N'Brian', NULL, N'Groth', NULL, N'Latest Accessories Sales', N'adventure-works\david8', N'brian5@adventure-works.com', N'461-555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29803, 0, N'Ms.', N'Hattie', N'J.', N'Haemon', NULL, N'Greater Bike Store', N'adventure-works\josé1', N'hattie0@adventure-works.com', N'141-555-0172')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29805, 0, N'Ms.', N'Erin', N'M.', N'Hagens', NULL, N'Distant Inn', N'adventure-works\shu0', N'erin1@adventure-works.com', N'244-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29806, 0, N'Ms.', N'Betty', N'M.', N'Haines', NULL, N'Finer Mart', N'adventure-works\david8', N'betty0@adventure-works.com', N'867-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29807, 0, N'Mr.', N'Bryan', NULL, N'Hamilton', NULL, N'Cross-Country Riding Supplies', N'adventure-works\josé1', N'bryan2@adventure-works.com', N'344-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29809, 0, N'Mr.', N'Kerim', NULL, N'Hanif', NULL, N'Bike World', N'adventure-works\shu0', N'kerim0@adventure-works.com', N'216-555-0122')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29810, 0, N'Ms.', N'Jean', N'P.', N'Handley', NULL, N'Central Discount Store', N'adventure-works\david8', N'jean1@adventure-works.com', N'582-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29813, 0, N'Ms.', N'Katherine', NULL, N'Harding', NULL, N'Sharp Bikes', N'adventure-works\josé1', N'katherine0@adventure-works.com', N'926-555-0159')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29815, 0, N'Mr.', N'Lucy', NULL, N'Harrington', NULL, N'Metropolitan Sports Supply', N'adventure-works\shu0', N'lucy0@adventure-works.com', N'828-555-0186')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29816, 0, N'Mr.', N'Keith', NULL, N'Harris', NULL, N'Progressive Sports', N'adventure-works\david8', N'keith0@adventure-works.com', N'170-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29818, 0, N'Mr.', N'Roger', NULL, N'Harui', NULL, N'Brakes and Gears', N'adventure-works\linda3', N'roger0@adventure-works.com', N'774-555-0133')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29819, 0, N'Ms.', N'Ann', N'T.', N'Hass', NULL, N'The Accessories Store', N'adventure-works\jillian0', N'ann2@adventure-works.com', N'713-555-0168')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29822, 0, N'Mr.', N'James', N'B.', N'Haugh', N'Jr.', N'Family Cycle Store', N'adventure-works\garrett1', N'james8@adventure-works.com', N'763-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29824, 0, N'Ms.', N'Brenda', N'F.', N'Heaney', NULL, N'Superb Sales and Repair', N'adventure-works\garrett1', N'brenda3@adventure-works.com', N'393-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29826, 0, N'Mr.', N'John', NULL, N'Hanson', NULL, N'Countryside Company', N'adventure-works\linda3', N'john20@adventure-works.com', N'107-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29827, 0, N'Ms.', N'Valerie', N'M.', N'Hendricks', NULL, N'First Bike Store', N'adventure-works\jillian0', N'valerie0@adventure-works.com', N'859-555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29830, 0, N'Mr.', N'Kari', NULL, N'Hensien', NULL, N'General Department Stores', N'adventure-works\garrett1', N'kari0@adventure-works.com', N'143-555-0129')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29831, 0, N'Ms.', N'Irene', N'J.', N'Hernandez', NULL, N'Operational Manufacturing', N'adventure-works\garrett1', N'irene0@adventure-works.com', N'790-555-0197')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29832, 0, N'Mr.', N'Jésus', NULL, N'Hernandez', NULL, N'Online Bike Warehouse', N'adventure-works\josé1', N'jésus0@adventure-works.com', N'214-555-0145')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29834, 0, N'Ms.', N'Cheryl', N'M.', N'Herring', NULL, N'Small Bike Shop', N'adventure-works\shu0', N'cheryl0@adventure-works.com', N'158-555-0154')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29835, 0, N'Mr.', N'Ronald', N'K.', N'Heymsfield', NULL, N'Superior Hardware Distributors', N'adventure-works\david8', N'ronald1@adventure-works.com', N'784-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29840, 0, N'Mr.', N'Andrew', N'R.', N'Hill', NULL, N'Eastside Parts Shop', N'adventure-works\josé1', N'andrew4@adventure-works.com', N'194-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29842, 0, N'Mr.', N'Mike', NULL, N'Hines', NULL, N'First Cycle Store', N'adventure-works\shu0', N'mike3@adventure-works.com', N'454-555-0160')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29843, 0, N'Mr.', N'Matthew', NULL, N'Hink', NULL, N'Running and Cycling Gear', N'adventure-works\david8', N'matthew3@adventure-works.com', N'146-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29847, 0, N'Mr.', N'David', NULL, N'Hodgson', NULL, N'Good Toys', N'adventure-works\linda3', N'david16@adventure-works.com', N'969-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29848, 0, N'Ms.', N'Helge', NULL, N'Hoeing', NULL, N'Little Bicycle Supply Shop', N'adventure-works\jillian0', N'helge0@adventure-works.com', N'850-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29850, 0, N'Mr.', N'Bob', NULL, N'Hodges', NULL, N'All Seasons Sports Supply', N'adventure-works\jillian0', N'bob2@adventure-works.com', N'129-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29851, 0, N'Ms.', N'Jean', N'J.', N'Holloway', NULL, N'Leisure Clearing House', N'adventure-works\jae0', N'jean2@adventure-works.com', N'1 (11) 500 555-0181')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29852, 0, N'Mr.', N'Eddie', N'M.', N'Holmes', NULL, N'The Commissary', N'adventure-works\josé1', N'eddie0@adventure-works.com', N'570-555-0199')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29853, 0, N'Ms.', N'Juanita', N'J.', N'Holman', NULL, N'Affordable Sports Equipment', N'adventure-works\shu0', N'juanita0@adventure-works.com', N'996-555-0196')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29854, 0, N'Mr.', N'Peter', NULL, N'Houston', NULL, N'Local Sales and Rental', N'adventure-works\jillian0', N'peter3@adventure-works.com', N'632-555-0171')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29855, 0, N'Mr.', N'Curtis', N'P.', N'Howard', NULL, N'Economy Center', N'adventure-works\josé1', N'curtis0@adventure-works.com', N'555-555-0162')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29857, 0, N'Ms.', N'Janice', N'K.', N'Hows', NULL, N'Area Sheet Metal Supply', N'adventure-works\jae0', N'janice1@adventure-works.com', N'1 (11) 500 555-0119')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29858, 0, N'Mr.', N'George', N'M.', N'Huckaby', NULL, N'Synthetic Materials Manufacturing', N'adventure-works\pamela0', N'george1@adventure-works.com', N'851-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29859, 0, N'Mr.', N'Joshua', N'J.', N'Huff', NULL, N'Rural Sales and Service', N'adventure-works\jillian0', N'joshua0@adventure-works.com', N'190-555-0186')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29860, 0, N'Ms.', N'Arlene', NULL, N'Huff', NULL, N'Tubeless Tire Company', N'adventure-works\jae0', N'arlene0@adventure-works.com', N'1 (11) 500 555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29861, 0, N'Ms.', N'Phyllis', N'R.', N'Huntsman', NULL, N'Hardware Components', N'adventure-works\jillian0', N'phyllis1@adventure-works.com', N'153-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29862, 0, N'Mr.', N'Lawrence', N'E.', N'Hurkett', NULL, N'Retail Sporting Goods', N'adventure-works\shu0', N'lawrence0@adventure-works.com', N'129-555-0185')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29863, 0, N'Mr.', N'Ryan', NULL, N'Ihrig', NULL, N'Efficient Cycling', N'adventure-works\josé1', N'ryan4@adventure-works.com', N'809-555-0152')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29864, 0, N'Ms.', N'Beth', NULL, N'Inghram', NULL, N'General Industries', N'adventure-works\josé1', N'beth0@adventure-works.com', N'718-555-0152')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29865, 0, N'Mr.', N'Lucio', NULL, N'Iallo', NULL, N'Highway Bike Shop', N'adventure-works\shu0', N'lucio0@adventure-works.com', N'199-555-0135')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29866, 0, N'Mr.', N'Richard', N'L.', N'Irwin', NULL, N'Rental Bikes', N'adventure-works\jillian0', N'richard4@adventure-works.com', N'367-555-0124')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29867, 0, N'Mr.', N'Erik', NULL, N'Ismert', NULL, N'Roving Sports', N'adventure-works\pamela0', N'erik0@adventure-works.com', N'116-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29868, 0, N'Ms.', N'Denean', N'J.', N'Ison', NULL, N'Express Bike Services', N'adventure-works\jae0', N'denean0@adventure-works.com', N'1 (11) 500 555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29870, 0, N'Mr.', N'Bronson', N'R.', N'Jacobs', NULL, N'Retail Discount Store', N'adventure-works\josé1', N'bronson0@adventure-works.com', N'697-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29871, 0, N'Mr.', N'Eric', N'A.', N'Jacobsen', NULL, N'Vale Riding Supplies', N'adventure-works\shu0', N'eric5@adventure-works.com', N'703-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29872, 0, N'Ms.', N'Jodan', N'M.', N'Jacobson', NULL, N'A Great Bicycle Company', N'adventure-works\jillian0', N'jodan0@adventure-works.com', N'652-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29873, 0, N'Ms.', N'Mary', NULL, N'Alexander', NULL, N'Certified Bicycle Supply', N'adventure-works\pamela0', N'mary7@adventure-works.com', N'344-555-0133')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29874, 0, N'Mr.', N'David', NULL, N'Jaffe', NULL, N'Exceptional Cycle Services', N'adventure-works\jae0', N'david17@adventure-works.com', N'1 (11) 500 555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29876, 0, N'Ms.', N'Vance', N'P.', N'Johns', NULL, N'Leisure Activities', N'adventure-works\josé1', N'vance0@adventure-works.com', N'103-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29877, 0, N'Ms.', N'Joyce', NULL, N'Jarvis', NULL, N'Paints and Solvents Company', N'adventure-works\shu0', N'joyce0@adventure-works.com', N'458-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29879, 0, N'Mr.', N'Stephen', N'Yuan', N'Jiang', NULL, N'Bikes for Kids and Adults', N'adventure-works\josé1', N'stephen3@adventure-works.com', N'910-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29881, 0, N'Ms.', N'Danielle', N'B.', N'Johnson', NULL, N'Home Town Bike Store', N'adventure-works\garrett1', N'danielle1@adventure-works.com', N'356-555-0190')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29883, 0, N'Mr.', N'Barry', NULL, N'Johnson', NULL, N'Sample Bike Store', N'adventure-works\linda3', N'barry1@adventure-works.com', N'858-555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29884, 0, N'Mr.', N'Brian', NULL, N'Johnson', NULL, N'Extras Sporting Goods', N'adventure-works\jillian0', N'brian6@adventure-works.com', N'320-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29885, 0, N'Mr.', N'David', NULL, N'Johnson', NULL, N'Sure & Reliable Sporting Goods', N'adventure-works\david8', N'david18@adventure-works.com', N'476-555-0139')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29889, 0, N'Ms.', N'Jean', NULL, N'Jordan', NULL, N'Separate Parts Corporation', N'adventure-works\shu0', N'jean3@adventure-works.com', N'207-555-0129')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29890, 0, N'Ms.', N'Peggy', N'J.', N'Justice', NULL, N'Basic Bike Company', N'adventure-works\david8', N'peggy0@adventure-works.com', N'170-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29891, 0, N'Ms.', N'Diane', N'F.', N'Krane', NULL, N'Fabrikam Inc., West', N'adventure-works\michael9', N'diane4@adventure-works.com', N'224-555-0126')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29892, 0, N'Ms.', N'Sandra', N'T.', N'Kitt', NULL, N'Non-Slip Pedal Company', N'adventure-works\josé1', N'sandra2@adventure-works.com', N'303-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29893, 0, N'Mr.', N'Sandeep', NULL, N'Kaliyath', NULL, N'Weekend Bike Tours', N'adventure-works\shu0', N'sandeep1@adventure-works.com', N'495-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29895, 0, N'Ms.', N'Lori', NULL, N'Kane', NULL, N'General Supplies', N'adventure-works\josé1', N'lori2@adventure-works.com', N'765-555-0141')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29897, 0, N'Ms.', N'Kay', N'E.', N'Krane', NULL, N'Racing Toys', N'adventure-works\shu0', N'kay0@adventure-works.com', N'731-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29898, 0, N'Mr.', N'Sandeep', NULL, N'Katyal', NULL, N'Capable Sales and Service', N'adventure-works\pamela0', N'sandeep2@adventure-works.com', N'928-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29900, 0, N'Mr.', N'Victor', N'A.', N'Kelley', NULL, N'Road Way Sales and Rental', N'adventure-works\josé1', N'victor0@adventure-works.com', N'112-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29901, 0, N'Mr.', N'John', NULL, N'Kelly', NULL, N'Sturdy Toys', N'adventure-works\shu0', N'john22@adventure-works.com', N'330-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29902, 0, N'Mr.', N'Robert', NULL, N'Kelly', NULL, N'Beneficial Exercises and Activities', N'adventure-works\jillian0', N'robert7@adventure-works.com', N'510-555-0123')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29903, 0, N'Mr.', N'Kevin', NULL, N'Kennedy', NULL, N'Fad Outlet', N'adventure-works\pamela0', N'kevin4@adventure-works.com', N'275-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29904, 0, N'Ms.', N'Mary', N'R.', N'Kesslep', NULL, N'Commerce Bicycle Specialists', N'adventure-works\jae0', N'mary8@adventure-works.com', N'1 (11) 500 555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29905, 0, N'Ms.', N'Elizabeth', NULL, N'Keyser', NULL, N'Acceptable Sales & Service', N'adventure-works\josé1', N'elizabeth2@adventure-works.com', N'656-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29906, 0, N'Mr.', N'Imtiaz', NULL, N'Khan', NULL, N'District Mall', N'adventure-works\jillian0', N'imtiaz0@adventure-works.com', N'249-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29907, 0, N'Ms.', N'Karan', NULL, N'Khanna', NULL, N'Fitness Supplies', N'adventure-works\pamela0', N'karan1@adventure-works.com', N'390-555-0150')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29908, 0, N'Mr.', N'Joe', NULL, N'Kim', NULL, N'Mail Market', N'adventure-works\jae0', N'joe1@adventure-works.com', N'1 (11) 500 555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29910, 0, N'Mr.', N'Shane', N'S.', N'Kim', NULL, N'Twelfth Bike Store', N'adventure-works\josé1', N'shane2@adventure-works.com', N'155-555-0149')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29911, 0, N'Mr.', N'Tim', NULL, N'Kim', NULL, N'Consolidated Messenger', N'adventure-works\garrett1', N'tim0@adventure-works.com', N'244-555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29913, 0, N'Mr.', N'Anton', NULL, N'Kirilov', NULL, N'Field Trip Store', N'adventure-works\linda3', N'anton0@adventure-works.com', N'608-555-0162')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29914, 0, N'Mr.', N'Christian', NULL, N'Kleinerman', NULL, N'Finish and Sealant Products', N'adventure-works\shu0', N'christian1@adventure-works.com', N'362-555-0177')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29915, 0, N'Mr.', N'Andrew', N'P.', N'Kobylinski', NULL, N'Finer Parts Shop', N'adventure-works\david8', N'andrew5@adventure-works.com', N'129-555-0185')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29918, 0, N'Mr.', N'Kirk', N'T', N'King', NULL, N'Up-To-Date Sports', N'adventure-works\josé1', N'kirk2@adventure-works.com', N'979-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29919, 0, N'Mr.', N'Eugene', NULL, N'Kogan', NULL, N'Mountain Bike Center', N'adventure-works\shu0', N'eugene2@adventure-works.com', N'136-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29920, 0, N'Mr.', N'Scott', NULL, N'Konersmann', NULL, N'Specialty Sports Store', N'adventure-works\jillian0', N'scott6@adventure-works.com', N'556-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29921, 0, N'Ms.', N'Joy', N'R.', N'Koski', NULL, N'Scooters and Bikes Store', N'adventure-works\pamela0', N'joy0@adventure-works.com', N'810-555-0198')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29922, 0, N'Ms.', N'Pamala', N'M.', N'Kotc', NULL, N'Closest Bicycle Store', N'adventure-works\jae0', N'pamala0@adventure-works.com', N'1 (11) 500 555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29924, 0, N'Mr.', N'Mitch', NULL, N'Kennedy', NULL, N'Reasonable Bicycle Sales', N'adventure-works\shu0', N'mitch0@adventure-works.com', N'996-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29925, 0, N'Ms.', N'Margaret', N'T.', N'Krupka', NULL, N'Outdoor Sports Supply', N'adventure-works\pamela0', N'margaret1@adventure-works.com', N'107-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29926, 0, N'Mr.', N'Deepak', NULL, N'Kumar', NULL, N'Outdoor Aerobic Systems Company', N'adventure-works\jae0', N'deepak0@adventure-works.com', N'1 (11) 500 555-0122')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29928, 0, N'Mr.', N'Vamsi', NULL, N'Kuppa', NULL, N'Metal Clearing House', N'adventure-works\josé1', N'vamsi1@adventure-works.com', N'290-555-0196')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29929, 0, N'Mr.', N'Jeffrey', NULL, N'Kurtz', NULL, N'Many Bikes Store', N'adventure-works\shu0', N'jeffrey3@adventure-works.com', N'452-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29930, 0, N'Mr.', N'Peter', NULL, N'Kurniawan', NULL, N'Largest Bike Store', N'adventure-works\jillian0', N'peter4@adventure-works.com', N'436-555-0160')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29931, 0, N'Mr.', N'Eric', NULL, N'Lang', NULL, N'Kickstands and Accessories Company', N'adventure-works\pamela0', N'eric6@adventure-works.com', N'932-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29932, 0, N'Ms.', N'Rebecca', NULL, N'Laszlo', NULL, N'Instruments and Parts Company', N'adventure-works\jae0', N'rebecca2@adventure-works.com', N'1 (11) 500 555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29934, 0, N'Mr.', N'David', N'O', N'Lawrence', NULL, N'Gear-Shift Bikes Limited', N'adventure-works\josé1', N'david19@adventure-works.com', N'653-555-0159')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29935, 0, N'Ms.', N'Elsa', NULL, N'Leavitt', NULL, N'Frugal Bike Shop', N'adventure-works\shu0', N'elsa0@adventure-works.com', N'482-555-0174')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29936, 0, N'Mr.', N'Michael', N'J.', N'Lee', NULL, N'Family Entertainment Center', N'adventure-works\pamela0', N'michael18@adventure-works.com', N'396-555-0139')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29937, 0, N'Ms.', N'Marjorie', N'M.', N'Lee', NULL, N'Go-cart and Bike Specialists', N'adventure-works\jillian0', N'marjorie0@adventure-works.com', N'306-555-0166')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29938, 0, N'Mr.', N'Frank', NULL, N'Campbell', NULL, N'Trailblazing Sports', N'adventure-works\shu0', N'frank4@adventure-works.com', N'491-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29939, 0, N'Mr.', N'Mark', NULL, N'Lee', NULL, N'Racing Partners', N'adventure-works\josé1', N'mark5@adventure-works.com', N'371-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29941, 0, N'Ms.', N'Jolie', NULL, N'Lenehan', NULL, N'Exhibition Showroom', N'adventure-works\jae0', N'jolie0@adventure-works.com', N'1 (11) 500 555-0126')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29942, 0, N'Mr.', N'Roger', NULL, N'Lengel', NULL, N'Authorized Bike Sales and Rental', N'adventure-works\pamela0', N'roger1@adventure-works.com', N'947-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29943, 0, NULL, N'A.', N'Francesca', N'Leonetti', NULL, N'Two-Seater Bikes', N'adventure-works\jillian0', N'a0@adventure-works.com', N'645-555-0193')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29944, 0, N'Ms.', N'Bonnie', N'B.', N'Lepro', NULL, N'More Bikes!', N'adventure-works\linda3', N'bonnie2@adventure-works.com', N'354-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29946, 0, N'Ms.', N'Linda', NULL, N'Leste', NULL, N'National Manufacturing', N'adventure-works\garrett1', N'linda7@adventure-works.com', N'493-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29948, 0, N'Ms.', N'Elsie', N'L.', N'Lewin', NULL, N'Town Industries', N'adventure-works\jillian0', N'elsie0@adventure-works.com', N'803-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29949, 0, N'Mr.', N'George', N'Z.', N'Li', NULL, N'Security Racks and Locks Wholesalers', N'adventure-works\shu0', N'george3@adventure-works.com', N'699-555-0183')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29950, 0, N'Mr.', N'Yale', NULL, N'Li', NULL, N'Rapid Bikes', N'adventure-works\josé1', N'yale0@adventure-works.com', N'316-555-0138')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29952, 0, N'Ms.', N'Yuhong', NULL, N'Li', NULL, N'Nearby Sporting Goods', N'adventure-works\jae0', N'yuhong1@adventure-works.com', N'1 (11) 500 555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29953, 0, N'Mr.', N'Joseph', N'M.', N'Lique', NULL, N'Front Sporting Goods', N'adventure-works\pamela0', N'joseph2@adventure-works.com', N'119-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29954, 0, N'Mr.', N'Paulo', N'H.', N'Lisboa', NULL, N'Elite Bikes', N'adventure-works\jillian0', N'paulo0@adventure-works.com', N'380-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29955, 0, N'Mr.', N'David', N'J.', N'Liu', NULL, N'Catalog Store', N'adventure-works\michael9', N'david20@adventure-works.com', N'440-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29956, 0, NULL, N'Jinghao', NULL, N'Liu', NULL, N'Chic Department Stores', N'adventure-works\jillian0', N'jinghao1@adventure-works.com', N'928-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29957, 0, N'Mr.', N'Kevin', NULL, N'Liu', NULL, N'Eastside Department Store', N'adventure-works\linda3', N'kevin5@adventure-works.com', N'926-555-0164')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29959, 0, N'Mr.', N'Todd', N'R.', N'Logan', NULL, N'Cycle Merchants', N'adventure-works\garrett1', N'todd0@adventure-works.com', N'783-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29962, 0, N'Ms.', N'Sharon', N'J.', N'Looney', NULL, N'Fitness Hotel', N'adventure-works\jillian0', N'sharon2@adventure-works.com', N'377-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29964, 0, N'Ms.', N'Anita', N'R.', N'Lucerne', NULL, N'Grand Industries', N'adventure-works\garrett1', N'anita0@adventure-works.com', N'164-555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29967, 0, N'Ms.', N'Judy', N'R.', N'Lundahl', NULL, N'Leading Sales & Repair', N'adventure-works\jillian0', N'judy1@adventure-works.com', N'260-555-0130')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29969, 0, N'Mr.', N'Robert', N'P.', N'Lyeba', NULL, N'Tandem Sales and Service', N'adventure-works\garrett1', N'robert8@adventure-works.com', N'631-555-0155')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29971, 0, N'Mr.', N'Robert', NULL, N'Lyon', NULL, N'Reliable Retail Center', N'adventure-works\garrett1', N'robert9@adventure-works.com', N'666-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29973, 0, N'Ms.', N'Denise', N'R.', N'Maccietto', NULL, N'Friendly Bike Shop', N'adventure-works\michael9', N'denise1@adventure-works.com', N'537-555-0190')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29974, 0, N'Mr.', N'Scott', NULL, N'MacDonald', NULL, N'Yellow Bicycle Company', N'adventure-works\jillian0', N'scott7@adventure-works.com', N'470-555-0171')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29975, 0, N'Mr.', N'Walter', N'J.', N'Mays', N'Sr.', N'Sports Products Store', N'adventure-works\linda3', N'walter1@adventure-works.com', N'245-555-0191')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29978, 0, N'Mr.', N'Ajay', NULL, N'Manchepalli', NULL, N'Shipping Specialists', N'adventure-works\jae0', N'ajay0@adventure-works.com', N'1 (11) 500 555-0174')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29980, 0, N'Mr.', N'Tomas', N'M.', N'Manzanares', N'II', N'Authentic Sales and Service', N'adventure-works\jae0', N'tomas0@adventure-works.com', N'1 (11) 500 555-0178')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29981, 0, N'Ms.', N'Kathy', N'R.', N'Marcovecchio', NULL, N'Official Parts Shop', N'adventure-works\pamela0', N'kathy0@adventure-works.com', N'942-555-0141')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29982, 0, N'Ms.', N'Melissa', N'R.', N'Marple', NULL, N'Discount Tours', N'adventure-works\shu0', N'melissa0@adventure-works.com', N'685-555-0117')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29983, 0, N'Ms.', N'Cecelia', N'L.', N'Marshall', NULL, N'Tire Exchange', N'adventure-works\josé1', N'cecelia0@adventure-works.com', N'394-555-0168')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29985, 0, N'Ms.', N'Linda', NULL, N'Martin', NULL, N'Oils and Fluids Warehouse', N'adventure-works\jae0', N'linda8@adventure-works.com', N'1 (11) 500 555-0137')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29987, 0, N'Mr.', N'Frank', NULL, N'Mart¡nez', NULL, N'Rally Master Company Inc', N'adventure-works\shu0', N'frank5@adventure-works.com', N'171-555-0147')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29988, 0, N'Mr.', N'Steve', NULL, N'Masters', NULL, N'Professional Cyclists', N'adventure-works\josé1', N'steve2@adventure-works.com', N'154-555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29990, 0, N'Ms.', N'Jennifer', N'J.', N'Maxham', NULL, N'Exclusive Bicycle Mart', N'adventure-works\jae0', N'jennifer1@adventure-works.com', N'1 (11) 500 555-0175')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29991, 0, N'Mr.', N'Chris', NULL, N'Maxwell', NULL, N'City Manufacturing', N'adventure-works\pamela0', N'chris6@adventure-works.com', N'642-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29992, 0, N'Ms.', N'Sandra', N'B.', N'Maynard', NULL, N'Bike Dealers Association', N'adventure-works\shu0', N'sandra4@adventure-works.com', N'993-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29994, 0, N'Ms.', N'Robin', N'M.', N'McGuigan', NULL, N'Health Spa, Limited', N'adventure-works\josé1', N'robin0@adventure-works.com', N'431-555-0153')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29997, 0, N'Ms.', N'Lola', N'M.', N'McCarthy', NULL, N'Closeout Boutique', N'adventure-works\david8', N'lola0@adventure-works.com', N'173-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (29998, 0, N'Ms.', N'Jane', N'A.', N'McCarty', NULL, N'Bicycle Merchandise Warehouse', N'adventure-works\shu0', N'jane3@adventure-works.com', N'529-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30000, 0, N'Mr.', N'James', N'L.', N'McCoy', N'II', N'Leather Seat Factory', N'adventure-works\josé1', N'james12@adventure-works.com', N'191-555-0151')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30003, 0, N'Ms.', N'Yvonne', NULL, N'McKay', NULL, N'Practical Bike Supply Company', N'adventure-works\jillian0', N'yvonne1@adventure-works.com', N'623-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30004, 0, N'Ms.', N'Nkenge', NULL, N'McLin', NULL, N'Some Discount Store', N'adventure-works\pamela0', N'nkenge0@adventure-works.com', N'158-555-0123')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30005, 0, N'Ms.', N'Nancy', N'A.', N'McPhearson', NULL, N'Variety Cycling', N'adventure-works\jae0', N'nancy3@adventure-works.com', N'1 (11) 500 555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30007, 0, N'Ms.', N'Raquel', NULL, N'Mello', NULL, N'Remote Bicycle Specialists', N'adventure-works\josé1', N'raquel0@adventure-works.com', N'723-555-0124')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30008, 0, N'Mr.', N'R. Morgan', N'L.', N'Mendoza', NULL, N'Friendly Neighborhood Bikes', N'adventure-works\jillian0', N'rmorgan0@adventure-works.com', N'963-555-0146')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30010, 0, N'Mr.', N'Stephen', N'A.', N'Mew', NULL, N'Recommended Bicycles', N'adventure-works\garrett1', N'stephen4@adventure-works.com', N'399-555-0114')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30012, 0, N'Ms.', N'Helen', N'M.', N'Meyer', NULL, N'Alpine Ski House', N'adventure-works\linda3', N'helen2@adventure-works.com', N'519-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30016, 0, N'Mr.', N'Thomas', N'R.', N'Michaels', NULL, N'Seats and Saddles Company', N'adventure-works\garrett1', N'thomas2@adventure-works.com', N'162-555-0174')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30018, 0, N'Ms.', N'Virginia', N'L.', N'Miller', NULL, N'All Cycle Shop', N'adventure-works\pamela0', N'virginia0@adventure-works.com', N'918-555-0127')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30019, 0, N'Mr.', N'Matthew', N'J.', N'Miller', NULL, N'Tachometers and Accessories', N'adventure-works\jae0', N'matthew5@adventure-works.com', N'1 (11) 500 555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30021, 0, N'Mr.', N'Ben', NULL, N'Miller', NULL, N'Low Price Cycles', N'adventure-works\josé1', N'ben1@adventure-works.com', N'207-555-0167')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30022, 0, N'Mr.', N'Dylan', NULL, N'Miller', NULL, N'Metropolitan Manufacturing', N'adventure-works\shu0', N'dylan1@adventure-works.com', N'140-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30023, 0, N'Mr.', N'Frank', NULL, N'Miller', NULL, N'Orange Bicycle Company', N'adventure-works\jillian0', N'frank6@adventure-works.com', N'118-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30024, 0, N'Ms.', N'Neva', N'M.', N'Mitchell', NULL, N'Riding Associates', N'adventure-works\pamela0', N'neva0@adventure-works.com', N'992-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30025, 0, N'Ms.', N'Linda', NULL, N'Mitchell', NULL, N'Essential Bike Works', N'adventure-works\jae0', N'linda9@adventure-works.com', N'1 (11) 500 555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30027, 0, N'Mr.', N'Joseph', N'P.', N'Mitzner', N'Jr.', N'Engineered Bike Systems', N'adventure-works\shu0', N'joseph4@adventure-works.com', N'129-555-0164')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30028, 0, N'Ms.', N'Laura', N'C.', N'Steele', NULL, N'Professional Containers and Packaging Co.', N'adventure-works\shu0', N'laura3@adventure-works.com', N'741-555-0173')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30029, 0, N'Ms.', N'Shanay', N'B.', N'Steelman', NULL, N'One Bike Company', N'adventure-works\josé1', N'shanay0@adventure-works.com', N'797-555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30030, 0, N'Mr.', N'Stefano', NULL, N'Stefani', NULL, N'Cycling Goods', N'adventure-works\jae0', N'stefano0@adventure-works.com', N'1 (11) 500 555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30031, 0, N'Mr.', N'Alan', NULL, N'Steiner', NULL, N'Cycle Clearance', N'adventure-works\pamela0', N'alan4@adventure-works.com', N'792-555-0194')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30032, 0, N'Mr.', N'Derik', NULL, N'Stenerson', NULL, N'Black Bicycle Company', N'adventure-works\jillian0', N'derik0@adventure-works.com', N'441-555-0144')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30033, 0, N'Mr.', N'Vassar', N'J.', N'Stern', NULL, N'Transport Bikes', N'adventure-works\shu0', N'vassar0@adventure-works.com', N'328-555-0123')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30034, 0, N'Ms.', N'Wathalee', N'R.', N'Steuber', NULL, N'Sellers of Cycles', N'adventure-works\pamela0', N'wathalee0@adventure-works.com', N'517-555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30035, 0, N'Ms.', N'Alice', N'M.', N'Steiner', NULL, N'Maintenance and Repair for Bicycles', N'adventure-works\jillian0', N'alice4@adventure-works.com', N'355-555-0180')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30036, 0, N'Ms.', N'Liza Marie', N'N.', N'Stevens', NULL, N'Fitness Department Stores', N'adventure-works\shu0', N'lizamarie0@adventure-works.com', N'366-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30037, 0, N'Mr.', N'Jim', NULL, N'Stewart', NULL, N'Famous Bike Shop', N'adventure-works\garrett1', N'jim5@adventure-works.com', N'226-555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30039, 0, N'Mr.', N'Robert', N'B.', N'Stotka', NULL, N'Gift and Toy Store', N'adventure-works\jillian0', N'robert12@adventure-works.com', N'493-555-0185')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30040, 0, N'Ms.', N'Kayla', N'M.', N'Stotler', NULL, N'Major Sporting Goods', N'adventure-works\linda3', N'kayla0@adventure-works.com', N'315-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30042, 0, N'Ms.', N'Ruby Sue', N'R.', N'Styles', NULL, N'Major Cycling', N'adventure-works\josé1', N'rubysue0@adventure-works.com', N'512-555-0122')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30044, 0, N'Mr.', N'Gary', N'J.', N'Suess', NULL, N'Downhill Bicycle Specialists', N'adventure-works\jae0', N'gary5@adventure-works.com', N'1 (11) 500 555-0199')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30045, 0, N'Ms.', N'Ruth', N'J.', N'Suffin', NULL, N'Bike Experts', N'adventure-works\pamela0', N'ruth2@adventure-works.com', N'924-555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30046, 0, N'Ms.', N'Elizabeth', N'J.', N'Sullivan', NULL, N'Extraordinary Bike Works', N'adventure-works\jillian0', N'elizabeth4@adventure-works.com', N'306-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30047, 0, N'Mr.', N'Michael', NULL, N'Sullivan', NULL, N'Valley Bicycle Distributors', N'adventure-works\shu0', N'michael24@adventure-works.com', N'323-555-0113')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30048, 0, N'Ms.', N'Marcia', N'J.', N'Sultan', NULL, N'Top Sports Supply', N'adventure-works\josé1', N'marcia0@adventure-works.com', N'613-555-0116')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30050, 0, N'Mr.', N'Krishna', NULL, N'Sunkammurali', NULL, N'Metropolitan Bicycle Supply', N'adventure-works\jae0', N'krishna1@adventure-works.com', N'1 (11) 500 555-0177')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30051, 0, N'Mr.', N'Brad', NULL, N'Sutton', NULL, N'Honest Repair Service', N'adventure-works\pamela0', N'brad0@adventure-works.com', N'688-555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30052, 0, N'Mr.', N'Abraham', N'L.', N'Swearengin', NULL, N'Wheel Gallery', N'adventure-works\shu0', N'abraham0@adventure-works.com', N'926-555-0136')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30053, 0, N'Ms.', N'Katherine', N'K.', N'Swan', NULL, N'Top Bike Market', N'adventure-works\garrett1', N'katherine1@adventure-works.com', N'421-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30055, 0, N'Ms.', N'Julie', NULL, N'Taft-Rider', NULL, N'Bicycle Lines Distributors', N'adventure-works\jillian0', N'julie1@adventure-works.com', N'145-555-0194')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30056, 0, N'Mr.', N'Clarence', N'R.', N'Tatman', NULL, N'Sparkling Paint and Finishes', N'adventure-works\linda3', N'clarence0@adventure-works.com', N'787-555-0128')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30058, 0, N'Mr.', N'Mike', N'M.', N'Taylor', NULL, N'Plastic Parts Company', N'adventure-works\garrett1', N'mike6@adventure-works.com', N'204-555-0189')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30061, 0, N'Mr.', N'Chad', N'J.', N'Tedford', NULL, N'Big Cycle Mall', N'adventure-works\jillian0', N'chad1@adventure-works.com', N'588-555-0128')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30063, 0, N'Ms.', N'Vanessa', N'J.', N'Tench', NULL, N'Eighth Bike Store', N'adventure-works\shu0', N'vanessa0@adventure-works.com', N'785-555-0163')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30064, 0, N'Ms.', N'Judy', N'J.', N'Thames', NULL, N'Demand Distributors', N'adventure-works\david8', N'judy3@adventure-works.com', N'799-555-0118')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30067, 0, N'Ms.', N'Phyllis', N'A.', N'Thomas', NULL, N'Red Bicycle Company', N'adventure-works\josé1', N'phyllis2@adventure-works.com', N'667-555-0112')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30069, 0, N'Mr.', N'Donald', N'M.', N'Thompson', NULL, N'Trendy Department Stores', N'adventure-works\shu0', N'donald1@adventure-works.com', N'273-555-0111')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30070, 0, N'Ms.', N'Kendra', N'N.', N'Thompson', NULL, N'Vintage Sport Boutique', N'adventure-works\david8', N'kendra0@adventure-works.com', N'464-555-0188')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30071, 0, N'Mr.', N'Daniel', N'P.', N'Thompson', NULL, N'Travel Sports', N'adventure-works\pamela0', N'daniel2@adventure-works.com', N'247-555-0197')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30072, 0, N'Ms.', N'Andrea', N'A.', N'Thomsen', NULL, N'West Side Mart', N'adventure-works\jae0', N'andrea1@adventure-works.com', N'1 (11) 500 555-0120')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30074, 0, N'Ms.', N'Yuping', NULL, N'Tian', NULL, N'Tenth Bike Store', N'adventure-works\josé1', N'yuping0@adventure-works.com', N'744-555-0123')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30076, 0, N'Ms.', N'Diane', NULL, N'Tibbott', NULL, N'Fun Times Club', N'adventure-works\shu0', N'diane5@adventure-works.com', N'847-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30080, 0, N'Ms.', N'Delia', N'B.', N'Toone', NULL, N'Wingtip Toys', N'adventure-works\david8', N'delia0@adventure-works.com', N'328-555-0192')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30083, 0, N'Mr.', N'Glenn', N'J.', N'Track', N'II', N'Active Life Toys', N'adventure-works\josé1', N'glenn0@adventure-works.com', N'907-555-0170')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30087, 0, N'Mr.', N'Billy', N'J.', N'Trent', NULL, N'Quick Parts and Service', N'adventure-works\garrett1', N'billy0@adventure-works.com', N'882-555-0115')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30089, 0, N'Mr.', N'Michael John', N'R.', N'Troyer', NULL, N'Thrifty Parts and Sales', N'adventure-works\linda3', N'michaeljohn0@adventure-works.com', N'308-555-0175')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30090, 0, N'Ms.', N'Christie', N'J.', N'Trujillo', NULL, N'A Typical Bike Shop', N'adventure-works\jillian0', N'christie0@adventure-works.com', N'686-555-0180')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30093, 0, N'Ms.', N'Phyllis', N'B.', N'Tuffield', NULL, N'Fasteners & Bolts Outlet', N'adventure-works\garrett1', N'phyllis3@adventure-works.com', N'277-555-0182')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30094, 0, N'Mr.', N'Sairaj', NULL, N'Uddin', NULL, N'Quantity Discounts', N'adventure-works\linda3', N'sairaj1@adventure-works.com', N'767-555-0193')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30095, 0, N'Mr.', N'Sunil', NULL, N'Uppal', NULL, N'Swift Cycles', N'adventure-works\jillian0', N'sunil0@adventure-works.com', N'184-555-0187')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30098, 0, N'Ms.', N'Esther', N'K.', N'Valle', NULL, N'Large Bike Shop', N'adventure-works\garrett1', N'esther0@adventure-works.com', N'481-555-0131')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30100, 0, N'Mr.', N'Jessie', N'E.', N'Valerio', NULL, N'Wire Baskets and Parts', N'adventure-works\linda3', N'jessie0@adventure-works.com', N'103-555-0179')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30102, 0, N'Mr.', N'Roger', NULL, N'Van Houten', NULL, N'Sports Store', N'adventure-works\jae0', N'roger2@adventure-works.com', N'1 (11) 500 555-0110')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30104, 0, N'Ms.', N'Rose', N'M.', N'Vandenouer', NULL, N'Extended Tours', N'adventure-works\jae0', N'rose1@adventure-works.com', N'1 (11) 500 555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30105, 0, N'Mr.', N'Gregory', N'T.', N'Vanderbout', N'Jr.', N'Convenient Sales and Service', N'adventure-works\pamela0', N'gregory1@adventure-works.com', N'684-555-0134')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30106, 0, N'Mr.', N'Michael', NULL, N'Vanderhyde', NULL, N'Solid Bike Parts', N'adventure-works\jillian0', N'michael25@adventure-works.com', N'918-555-0141')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30107, 0, N'Ms.', N'Margaret', N'J.', N'Vanderkamp', NULL, N'Permanent Finish Products', N'adventure-works\shu0', N'margaret2@adventure-works.com', N'265-555-0143')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30108, 0, N'Ms.', N'Kara', N'N.', N'Vanderlinden', NULL, N'Mercantile Outlet', N'adventure-works\josé1', N'kara0@adventure-works.com', N'680-555-0160')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30109, 0, N'Mr.', N'Nieves', N'J.', N'Vargas', N'II', N'Exhilarating Cycles', N'adventure-works\michael9', N'nieves0@adventure-works.com', N'371-555-0184')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30110, 0, N'Mr.', N'Gary', N'T', N'Vargas', NULL, N'Exercise Center', N'adventure-works\shu0', N'gary6@adventure-works.com', N'112-555-0176')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30111, 0, N'Mr.', N'Ranjit', N'Rudra', N'Varkey Chudukatil', NULL, N'Great Bicycle Supply', N'adventure-works\jillian0', N'ranjit1@adventure-works.com', N'810-555-0160')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30112, 0, N'Ms.', N'Patricia', N'M.', N'Vasquez', NULL, N'Mail-Order Outlet', N'adventure-works\pamela0', N'patricia2@adventure-works.com', N'490-555-0132')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30113, 0, N'Mr.', N'Raja', N'D.', N'Venugopal', NULL, N'Nearby Cycle Shop', N'adventure-works\jae0', N'raja0@adventure-works.com', N'1 (11) 500 555-0195')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30115, 0, N'Ms.', N'Dora', N'P.', N'Verdad', NULL, N'Retreat Inn', N'adventure-works\josé1', N'dora0@adventure-works.com', N'155-555-0140')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30116, 0, N'Ms.', N'Wanda', N'F.', N'Vernon', NULL, N'Technical Parts Manufacturing', N'adventure-works\shu0', N'wanda0@adventure-works.com', N'433-555-0168')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30117, 0, N'Mr.', N'Robert', N'R.', N'Vessa', NULL, N'Totes & Baskets Company', N'adventure-works\jillian0', N'robert13@adventure-works.com', N'560-555-0171')
GO
INSERT [dbo].[Customer] ([CustomerID], [NameStyle], [Title], [FirstName], [MiddleName], [LastName], [Suffix], [CompanyName], [SalesPerson], [EmailAddress], [Phone]) VALUES (30118, 0, N'Ms.', N'Caroline', N'A.', N'Vicknair', NULL, N'World of Bikes', N'adventure-works\jillian0', N'caroline0@adventure-works.com', N'695-555-0158')
GO
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29485, 1086, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29486, 621, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29489, 1069, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29490, 887, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29492, 618, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29494, 537, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29496, 1072, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29497, 889, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29499, 527, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29502, 893, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29503, 32, N'Shipping')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29503, 541, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29505, 1083, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29506, 1082, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29508, 619, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29510, 540, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29511, 1046, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29515, 504, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29517, 794, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29521, 1054, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29522, 1040, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29523, 593, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29524, 599, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29525, 1049, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29527, 512, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29528, 788, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29530, 495, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29531, 1061, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29532, 881, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29533, 801, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29535, 591, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29536, 786, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29539, 480, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29541, 467, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29544, 519, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29545, 11, N'Shipping')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29545, 834, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29546, 635, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29548, 498, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29550, 853, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29553, 581, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29554, 776, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29557, 513, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29558, 500, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29559, 185, N'Shipping')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29559, 861, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29560, 1030, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29562, 1091, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29565, 1073, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29566, 810, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29567, 448, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29568, 993, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29569, 562, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29570, 592, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29571, 864, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29573, 1016, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29574, 577, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29576, 514, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29577, 471, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29579, 1012, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29580, 849, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29582, 848, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29583, 576, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29584, 1014, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29585, 841, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29587, 664, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29588, 890, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29590, 789, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29591, 584, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29593, 585, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29596, 458, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29598, 1000, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29599, 877, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29600, 797, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29601, 516, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29603, 518, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29605, 1060, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29606, 871, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29608, 488, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29611, 862, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29612, 649, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29614, 529, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29615, 663, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29616, 608, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29617, 880, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29618, 658, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29620, 503, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29622, 863, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29623, 1033, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29625, 491, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29627, 447, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29629, 469, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29631, 1003, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29632, 843, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29635, 634, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29636, 1105, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29637, 559, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29638, 989, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29639, 470, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29641, 1088, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29643, 899, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29644, 643, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29645, 850, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29646, 578, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29649, 544, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29650, 1059, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29651, 606, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29653, 1019, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29654, 579, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29655, 774, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29659, 605, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29660, 1058, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29662, 1013, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29663, 575, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29666, 468, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29668, 573, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29671, 465, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29673, 1007, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29674, 571, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29677, 461, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29680, 509, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29682, 1051, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29683, 875, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29684, 795, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29686, 1048, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29688, 785, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29689, 865, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29690, 1036, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29692, 494, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29695, 867, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29696, 1039, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29698, 497, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29699, 456, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29702, 567, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29703, 1001, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29705, 459, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29708, 569, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29709, 906, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29710, 1017, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29711, 472, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29713, 644, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29714, 473, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29716, 1015, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29717, 851, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29719, 905, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29720, 1100, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29722, 555, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29727, 907, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29728, 1103, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29730, 558, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29732, 607, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29733, 1062, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29734, 517, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29736, 659, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29737, 882, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29738, 610, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29739, 1065, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29740, 520, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29741, 660, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29742, 884, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29743, 612, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29744, 1068, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29747, 895, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29748, 1085, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29750, 543, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29753, 897, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29755, 528, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29757, 1070, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29758, 613, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29761, 525, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29763, 1067, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29764, 611, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29765, 806, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29766, 522, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29768, 1064, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29769, 609, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29770, 445, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29771, 990, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29772, 560, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29772, 11380, N'Shipping')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29773, 832, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29774, 564, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29775, 836, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29776, 636, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29778, 650, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29780, 490, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29781, 1035, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29782, 590, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29783, 1075, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29784, 1078, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29785, 533, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29787, 869, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29788, 1043, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29789, 501, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29792, 597, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29793, 1011, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29794, 466, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29796, 642, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29797, 455, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29799, 997, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29800, 839, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29803, 452, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29805, 994, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29806, 837, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29807, 449, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29809, 991, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29810, 835, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29813, 446, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29815, 988, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29816, 297, N'Shipping')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29816, 833, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29818, 1104, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29819, 633, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29822, 557, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29824, 556, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29826, 1101, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29827, 631, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29830, 553, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29831, 552, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29832, 551, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29834, 1097, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29835, 903, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29840, 547, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29842, 1094, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29843, 901, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29847, 1092, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29848, 625, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29850, 623, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29851, 657, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29852, 511, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29853, 1056, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29854, 604, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29855, 539, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29857, 666, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29858, 894, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29859, 622, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29860, 668, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29861, 628, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29861, 11382, N'Shipping')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29862, 1096, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29863, 546, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29864, 487, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29865, 1032, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29866, 588, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29867, 860, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29868, 648, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29870, 484, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29871, 1029, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29872, 586, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29873, 858, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29874, 647, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29876, 481, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29877, 1026, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29879, 515, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29881, 483, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29883, 1025, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29883, 11381, N'Shipping')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29884, 583, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29885, 857, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29889, 1021, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29890, 855, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29891, 775, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29892, 476, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29893, 1018, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29895, 524, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29897, 28, N'Shipping')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29897, 1066, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29898, 876, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29900, 508, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29901, 1053, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29902, 602, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29903, 874, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29904, 655, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29905, 505, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29906, 600, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29907, 872, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29908, 654, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29910, 502, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29911, 538, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29913, 1080, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29914, 1079, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29915, 891, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29918, 460, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29919, 1005, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29920, 570, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29921, 842, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29922, 639, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29924, 1002, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29925, 840, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29926, 638, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29928, 454, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29929, 999, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29930, 566, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29931, 838, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29932, 637, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29934, 451, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29935, 996, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29936, 852, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29937, 580, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29938, 1020, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29939, 475, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29941, 645, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29942, 854, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29943, 582, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29944, 1004, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29946, 462, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29948, 572, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29949, 1008, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29950, 463, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29952, 641, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29953, 846, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29954, 25, N'Shipping')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29954, 574, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29955, 756, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29956, 561, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29957, 992, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29959, 450, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29962, 563, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29964, 453, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29967, 565, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29969, 548, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29971, 549, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29973, 825, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29974, 629, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29975, 1098, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29978, 671, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29980, 672, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29981, 904, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29982, 1102, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29983, 554, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29985, 673, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29987, 1023, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29988, 478, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29990, 646, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29991, 856, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29992, 1024, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29994, 482, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29997, 859, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (29998, 1027, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30000, 485, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30003, 620, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30004, 892, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30005, 665, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30007, 536, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30008, 617, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30010, 535, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30012, 1077, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30016, 531, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30018, 9, N'Shipping')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30018, 868, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30019, 652, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30021, 496, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30022, 1041, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30023, 594, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30024, 866, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30025, 651, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30027, 1038, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30028, 1087, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30029, 542, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30030, 667, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30031, 896, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30032, 624, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30033, 1090, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30034, 898, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30035, 626, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30036, 1093, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30037, 545, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30039, 627, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30040, 1095, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30042, 523, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30044, 661, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30045, 886, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30046, 614, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30047, 1071, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30048, 526, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30050, 662, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30051, 888, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30052, 1074, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30053, 507, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30055, 601, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30056, 1052, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30058, 510, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30061, 603, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30063, 1009, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30064, 847, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30067, 464, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30069, 1006, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30070, 845, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30071, 844, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30072, 640, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30074, 534, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30076, 1076, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30080, 885, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30083, 521, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30087, 492, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30089, 1034, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30090, 589, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30093, 489, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30094, 1031, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30095, 587, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30098, 486, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30100, 1028, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30102, 669, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30104, 670, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30105, 902, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30106, 630, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30107, 1099, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30108, 550, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30109, 826, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30110, 1047, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30111, 598, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30112, 870, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30113, 653, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30115, 499, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30116, 1044, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30117, 596, N'Main Office')
GO
INSERT [dbo].[CustomerAddress] ([CustomerID], [AddressID], [AddressType]) VALUES (30118, 595, N'Main Office')
GO
ALTER TABLE [dbo].[Customer] ADD  CONSTRAINT [DF_Customer_NameStyle]  DEFAULT ((0)) FOR [NameStyle]
GO
ALTER TABLE [dbo].[CustomerAddress]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAddress_Address_AddressID] FOREIGN KEY([AddressID])
REFERENCES [dbo].[Address] ([AddressID])
GO
ALTER TABLE [dbo].[CustomerAddress] CHECK CONSTRAINT [FK_CustomerAddress_Address_AddressID]
GO
ALTER TABLE [dbo].[CustomerAddress]  WITH CHECK ADD  CONSTRAINT [FK_CustomerAddress_Customer_CustomerID] FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([CustomerID])
GO
ALTER TABLE [dbo].[CustomerAddress] CHECK CONSTRAINT [FK_CustomerAddress_Customer_CustomerID]
GO