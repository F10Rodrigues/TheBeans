﻿//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Default
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class bancodadosinterEntities1 : DbContext
    {
        public bancodadosinterEntities1()
            : base("name=bancodadosinterEntities1")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<documento_ged> documento_ged { get; set; }
        public virtual DbSet<fornecedor> fornecedor { get; set; }
        public virtual DbSet<funcionario> funcionario { get; set; }
        public virtual DbSet<NFe> NFe { get; set; }
        public virtual DbSet<programacao_pagamento> programacao_pagamento { get; set; }
        public virtual DbSet<Rel_ged> Rel_ged { get; set; }
        public virtual DbSet<usuario> usuario { get; set; }
    }
}
