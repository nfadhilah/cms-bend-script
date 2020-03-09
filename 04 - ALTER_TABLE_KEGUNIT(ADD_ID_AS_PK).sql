ALTER TABLE dbo.KEGUNIT ADD ID INT IDENTITY
GO

ALTER TABLE dbo.KEGUNIT DROP CONSTRAINT PK_KEGUNIT
GO

ALTER TABLE dbo.KEGUNIT
ADD CONSTRAINT PK_KEGUNIT
    PRIMARY KEY NONCLUSTERED (
                                 ID ASC,
								 KDTAHAP ASC,
                                 UNITKEY ASC,
                                 KDKEGUNIT ASC
                             )
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
          ALLOW_PAGE_LOCKS = ON
         ) ON [PRIMARY]
GO

ALTER TABLE dbo.KEGUNIT
ADD CONSTRAINT UC_KEGUNIT UNIQUE(KDTAHAP, UNITKEY, KDKEGUNIT)
GO