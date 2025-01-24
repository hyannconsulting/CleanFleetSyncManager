CREATE TABLE [dbo].[Affectations] (
    [AffectationID] INT      IDENTITY (1, 1) NOT NULL,
    [ConducteurID]  INT      NULL,
    [VehiculeID]    INT      NULL,
    [DateDebut]     DATETIME NULL,
    [DateFin]       DATETIME NULL,
    PRIMARY KEY CLUSTERED ([AffectationID] ASC),
    CONSTRAINT [FK__Affectati__Condu__37A5467C] FOREIGN KEY ([ConducteurID]) REFERENCES [dbo].[Conducteurs] ([ConducteurID]),
    CONSTRAINT [FK__Affectati__Vehic__38996AB5] FOREIGN KEY ([VehiculeID]) REFERENCES [dbo].[Vehicules] ([VehiculeID])
);

