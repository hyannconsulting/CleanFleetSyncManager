﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace FleetSyncManager.Infrastrucure.Persistence.Entities
{
    public partial class Incident
    {
        public int IncidentId { get; set; }
        public int? VehiculeId { get; set; }
        public int? ConducteurId { get; set; }
        public DateTime? DateIncident { get; set; }
        public string Description { get; set; }

        public virtual Conducteur Conducteur { get; set; }
        public virtual Vehicule Vehicule { get; set; }
    }
}