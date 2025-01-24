CREATE TABLE [dbo].[Conducteurs] (
    [ConducteurID]   INT           IDENTITY (1, 1) NOT NULL,
    [Nom]            NVARCHAR (50) NULL,
    [Prenoms]        NVARCHAR (50) NULL,
    [DateNaissance]  DATE          NULL,
    [PermisConduire] NVARCHAR (20) NULL,
    [DateEmbauche]   DATE          NULL,
    CONSTRAINT [PK__Conducte__BF7327029B3685B9] PRIMARY KEY CLUSTERED ([ConducteurID] ASC),
    CONSTRAINT [UQ__Conducte__7B05915D2C7DBAC6] UNIQUE NONCLUSTERED ([PermisConduire] ASC)
);

