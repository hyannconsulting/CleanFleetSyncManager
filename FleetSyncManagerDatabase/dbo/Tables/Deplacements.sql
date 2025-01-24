CREATE TABLE [dbo].[Deplacements] (
    [DeplacementID] INT            IDENTITY (1, 1) NOT NULL,
    [VehiculeID]    INT            NULL,
    [ConducteurID]  INT            NULL,
    [DateDepart]    DATETIME       NULL,
    [DateArrivee]   DATETIME       NULL,
    [LieuDepart]    NVARCHAR (256) NULL,
    [LieuArrivee]   NVARCHAR (256) NULL,
    [Kilometrage]   INT            NULL,
    CONSTRAINT [PK__Deplacem__864E9CD62424A490] PRIMARY KEY CLUSTERED ([DeplacementID] ASC),
    CONSTRAINT [FK__Deplaceme__Condu__2B3F6F97] FOREIGN KEY ([ConducteurID]) REFERENCES [dbo].[Conducteurs] ([ConducteurID]),
    CONSTRAINT [FK__Deplaceme__Vehic__2A4B4B5E] FOREIGN KEY ([VehiculeID]) REFERENCES [dbo].[Vehicules] ([VehiculeID])
);

