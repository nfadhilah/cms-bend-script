ALTER TABLE dbo.BPKDETR ADD ID INT IDENTITY
GO

ALTER TABLE dbo.BPKDETR DROP CONSTRAINT PK_BPKDETR
GO

ALTER TABLE dbo.BPKDETR
ADD CONSTRAINT PK_BPKDETR
    PRIMARY KEY NONCLUSTERED (
                                 [ID] ASC,
                                 [MTGKEY] ASC,
                                 [KDKEGUNIT] ASC,
                                 [NOJETRA] ASC,
                                 [NOBPK] ASC
                             )
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
          ALLOW_PAGE_LOCKS = ON
         ) ON [PRIMARY];

ALTER TABLE dbo.BPKDETR
ADD CONSTRAINT UC_BPKDETR UNIQUE(MTGKEY, KDKEGUNIT, NOJETRA, NOBPK);