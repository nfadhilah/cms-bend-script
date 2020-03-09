ALTER TABLE dbo.BKUPAJAK ADD ID INT IDENTITY
GO

ALTER TABLE dbo.BKUPAJAK DROP CONSTRAINT PK_BKUPAJAK
GO

ALTER TABLE dbo.BKUPAJAK
ADD CONSTRAINT PK_BKUPAJAK
    PRIMARY KEY NONCLUSTERED (
                                 ID ASC,
                                 UNITKEY ASC,
                                 NOBKUSKPD ASC
                             )
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
          ALLOW_PAGE_LOCKS = ON
         ) ON [PRIMARY]
GO

ALTER TABLE dbo.BKUPAJAK
ADD CONSTRAINT UC_BKUPAJAK UNIQUE(UNITKEY, NOBKUSKPD)
GO