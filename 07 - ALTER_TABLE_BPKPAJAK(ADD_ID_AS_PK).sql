ALTER TABLE dbo.BPKPAJAK ADD ID INT IDENTITY
GO

ALTER TABLE dbo.BPKPAJAK DROP CONSTRAINT PK_BPKPAJAK
GO

ALTER TABLE dbo.BPKPAJAK
ADD CONSTRAINT PK_BPKPAJAK
    PRIMARY KEY NONCLUSTERED (
                                 [ID] ASC,
                                 [UNITKEY] ASC,
                                 [NOBPK] ASC,
                                 [KDSTATUS] ASC,
                                 [NOBKPAJAK] ASC,
                                 [KDKEGUNIT] ASC
                             )
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
          ALLOW_PAGE_LOCKS = ON
         ) ON [PRIMARY]
GO

ALTER TABLE dbo.BPKPAJAK
ADD CONSTRAINT UC_BPKPAJAK UNIQUE(UNITKEY, NOBPK, KDSTATUS, NOBKPAJAK, KDKEGUNIT)
GO