CREATE TABLE [dbo].[LigneDepenses] (
    [LigneDepenseID] INT             IDENTITY (1, 1) NOT NULL,
    [VehiculeID]     INT             NULL,
    [DateDepense]    DATETIME        NULL,
    [Montant]        DECIMAL (10, 2) CONSTRAINT [DF_LigneDepenses_Montant] DEFAULT ((0)) NOT NULL,
    [Description]    NVARCHAR (255)  NULL,
    CONSTRAINT [PK__LigneDep__663ABB5DB3049069] PRIMARY KEY CLUSTERED ([LigneDepenseID] ASC),
    CONSTRAINT [FK__LigneDepe__Vehic__31EC6D26] FOREIGN KEY ([VehiculeID]) REFERENCES [dbo].[Vehicules] ([VehiculeID])
);

