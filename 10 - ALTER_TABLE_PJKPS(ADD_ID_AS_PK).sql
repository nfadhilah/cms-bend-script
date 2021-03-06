ALTER TABLE dbo.PJKPS ADD ID INT IDENTITY
GO

ALTER TABLE dbo.PJKPS DROP CONSTRAINT PK_PJKPS
GO

ALTER TABLE dbo.PJKPS
ADD CONSTRAINT PK_PJKPS
    PRIMARY KEY NONCLUSTERED (
                                 [ID] ASC,
                                 [UNITKEY] ASC,
                                 [NOPUNGUT] ASC
                             )
    WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON,
          ALLOW_PAGE_LOCKS = ON
         ) ON [PRIMARY]
GO

ALTER TABLE dbo.PJKPS
ADD CONSTRAINT UC_PJKPS UNIQUE(UNITKEY, NOPUNGUT)
GO