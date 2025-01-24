CREATE TABLE [dbo].[Incidents] (
    [IncidentID]   INT            IDENTITY (1, 1) NOT NULL,
    [VehiculeID]   INT            NULL,
    [ConducteurID] INT            NULL,
    [DateIncident] DATETIME       NULL,
    [Description]  NVARCHAR (255) NULL,
    PRIMARY KEY CLUSTERED ([IncidentID] ASC),
    CONSTRAINT [FK__Incident__Conduc__2F10007B] FOREIGN KEY ([ConducteurID]) REFERENCES [dbo].[Conducteurs] ([ConducteurID]),
    CONSTRAINT [FK__Incident__Vehicu__2E1BDC42] FOREIGN KEY ([VehiculeID]) REFERENCES [dbo].[Vehicules] ([VehiculeID])
);

