CREATE TABLE [dbo].[Vehicules] (
    [VehiculeID]      INT            IDENTITY (1, 1) NOT NULL,
    [Marque]          NVARCHAR (128) NULL,
    [Modele]          NVARCHAR (128) NULL,
    [Annee]           INT            NULL,
    [Immatriculation] NVARCHAR (20)  NULL,
    [DateAchat]       DATE           NULL,
    [Statut]          NVARCHAR (20)  NULL,
    CONSTRAINT [PK__Vehicule__AB80A3903B11A690] PRIMARY KEY CLUSTERED ([VehiculeID] ASC),
    CONSTRAINT [UQ__Vehicule__E15BDED2C3E63DAE] UNIQUE NONCLUSTERED ([Immatriculation] ASC)
);

