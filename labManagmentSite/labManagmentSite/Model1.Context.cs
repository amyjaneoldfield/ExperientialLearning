﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace labManagmentSite
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class db_1421049_LabManagementEntities : DbContext
    {
        public db_1421049_LabManagementEntities()
            : base("name=db_1421049_LabManagementEntities")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Custodian> Custodians { get; set; }
        public virtual DbSet<User_Research_Equip> User_Research_Equip { get; set; }
        public virtual DbSet<Lab> Labs { get; set; }
    }
}
