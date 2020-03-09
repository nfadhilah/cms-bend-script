ALTER TABLE dbo.BKUBPK ADD ID INT IDENTITY
GO

ALTER TABLE dbo.BKUBPK DROP CONSTRAINT PK_BKUBPK
GO

ALTER TABLE dbo.BKUBPK
ADD CONSTRAINT PK_BKUBPK
    PRIMARY KEY NONCLUSTERED (
                                 ID ASC,
                                 UNITKEY ASC,
                                 NOBKUSKPD ASC
                             )
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
          ALLOW_PAGE_LOCKS = ON
         ) ON [PRIMARY]
GO

ALTER TABLE dbo.BKUBPK
ADD CONSTRAINT UC_BKUBPK UNIQUE(UNITKEY, NOBKUSKPD)
GO