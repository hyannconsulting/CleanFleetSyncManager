﻿// <auto-generated> This file has been auto generated by EF Core Power Tools. </auto-generated>
#nullable disable
using System;
using System.Collections.Generic;

namespace FleetSyncManager.Infrastrucure.Persistence.Entities
{
    public partial class Conducteur
    {
        public Conducteur()
        {
            Affectations = new HashSet<Affectation>();
            Deplacements = new HashSet<Deplacement>();
            Incidents = new HashSet<Incident>();
        }

        public int ConducteurId { get; set; }
        public string Nom { get; set; }
        public string Prenoms { get; set; }
        public DateTime? DateNaissance { get; set; }
        public string PermisConduire { get; set; }
        public DateTime? DateEmbauche { get; set; }

        public virtual ICollection<Affectation> Affectations { get; set; }
        public virtual ICollection<Deplacement> Deplacements { get; set; }
        public virtual ICollection<Incident> Incidents { get; set; }
    }
}