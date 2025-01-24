CREATE TABLE [dbo].[Entretiens] (
    [EntretienID]   INT             IDENTITY (1, 1) NOT NULL,
    [VehiculeID]    INT             NULL,
    [DateEntretien] DATETIME        NULL,
    [TypeEntretien] NVARCHAR (50)   NULL,
    [Description]   NVARCHAR (255)  NULL,
    [Cout]          DECIMAL (10, 2) NULL,
    PRIMARY KEY CLUSTERED ([EntretienID] ASC),
    CONSTRAINT [FK__Entretien__Vehic__34C8D9D1] FOREIGN KEY ([VehiculeID]) REFERENCES [dbo].[Vehicules] ([VehiculeID])
);

