-- Table: postcodes


            IF OBJECT_ID('world.postcodes', 'U') IS NOT NULL DROP TABLE world.postcodes;
            CREATE TABLE world.postcodes (
                id INT IDENTITY(1,1) PRIMARY KEY,
                code NVARCHAR(20) NOT NULL,
                country_id INT NOT NULL,
                country_code NCHAR(2) NOT NULL,
                state_id INT NULL,
                state_code NVARCHAR(255) NULL,
                city_id INT NULL,
                locality_name NVARCHAR(255) NULL,
                type NVARCHAR(32) NULL,
                latitude DECIMAL(10,8) NULL,
                longitude DECIMAL(11,8) NULL,
                source NVARCHAR(64) NULL,
                wikiDataId NVARCHAR(255) NULL,
                created_at DATETIME2 NOT NULL DEFAULT '2014-01-01 12:01:01',
                updated_at DATETIME2 NOT NULL DEFAULT GETDATE(),
                flag BIT NOT NULL DEFAULT 1,
                CONSTRAINT FK_postcodes_countries FOREIGN KEY (country_id) REFERENCES world.countries(id),
                CONSTRAINT FK_postcodes_states FOREIGN KEY (state_id) REFERENCES world.states(id),
                CONSTRAINT FK_postcodes_cities FOREIGN KEY (city_id) REFERENCES world.cities(id)
            );

SET IDENTITY_INSERT world.postcodes ON;

INSERT INTO world.postcodes (id, code, country_id, country_code, state_id, state_code, city_id, locality_name, type, latitude, longitude, source, wikiDataId) VALUES
(1, N'9485', 125, N'LI', 451, N'02', NULL, N'Nendeln', N'full', NULL, NULL, N'manual', NULL),
(2, N'9486', 125, N'LI', 455, N'04', NULL, N'Schaanwald', N'full', NULL, NULL, N'manual', NULL),
(3, N'9487', 125, N'LI', 457, N'03', NULL, N'Bendern', N'full', NULL, NULL, N'manual', NULL),
(4, N'9488', 125, N'LI', 449, N'08', NULL, N'Schellenberg', N'full', NULL, NULL, N'manual', NULL),
(5, N'9490', 125, N'LI', 452, N'11', NULL, N'Vaduz', N'full', NULL, NULL, N'manual', NULL),
(6, N'9491', 125, N'LI', 453, N'06', NULL, N'Ruggell', N'full', NULL, NULL, N'manual', NULL),
(7, N'9492', 125, N'LI', 451, N'02', NULL, N'Eschen', N'full', NULL, NULL, N'manual', NULL),
(8, N'9493', 125, N'LI', 455, N'04', NULL, N'Mauren', N'full', NULL, NULL, N'manual', NULL),
(9, N'9494', 125, N'LI', 450, N'07', NULL, N'Schaan', N'full', NULL, NULL, N'manual', NULL),
(10, N'9495', 125, N'LI', 459, N'09', NULL, N'Triesen', N'full', NULL, NULL, N'manual', NULL),
(11, N'9496', 125, N'LI', 458, N'01', NULL, N'Balzers', N'full', NULL, NULL, N'manual', NULL),
(12, N'9497', 125, N'LI', 456, N'10', NULL, N'Triesenberg', N'full', NULL, NULL, N'manual', NULL),
(13, N'9498', 125, N'LI', 454, N'05', NULL, N'Planken', N'full', NULL, NULL, N'manual', NULL),
(14, N'98000', 145, N'MC', NULL, NULL, NULL, N'Monaco', N'full', NULL, NULL, N'manual', NULL),
(15, N'47890', 192, N'SM', 58, N'07', NULL, N'San Marino', N'full', NULL, NULL, N'manual', NULL),
(16, N'47891', 192, N'SM', 65, N'09', NULL, N'Serravalle', N'full', NULL, NULL, N'manual', NULL),
(17, N'47892', 192, N'SM', 59, N'01', NULL, N'Acquaviva', N'full', NULL, NULL, N'manual', NULL),
(18, N'47893', 192, N'SM', 61, N'06', NULL, N'Borgo Maggiore', N'full', NULL, NULL, N'manual', NULL),
(19, N'47894', 192, N'SM', 60, N'02', NULL, N'Chiesanuova', N'full', NULL, NULL, N'manual', NULL),
(20, N'47895', 192, N'SM', 64, N'03', NULL, N'Domagnano', N'full', NULL, NULL, N'manual', NULL),
(21, N'47896', 192, N'SM', 62, N'04', NULL, N'Faetano', N'full', NULL, NULL, N'manual', NULL),
(22, N'47897', 192, N'SM', 66, N'05', NULL, N'Fiorentino', N'full', NULL, NULL, N'manual', NULL),
(23, N'47898', 192, N'SM', 63, N'08', NULL, N'Montegiardino', N'full', NULL, NULL, N'manual', NULL),
(24, N'00120', 238, N'VA', NULL, NULL, NULL, N'Citta del Vaticano', N'full', NULL, NULL, N'manual', NULL);

SET IDENTITY_INSERT world.postcodes OFF;

