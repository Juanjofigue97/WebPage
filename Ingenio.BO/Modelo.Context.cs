﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Este código se generó a partir de una plantilla.
//
//     Los cambios manuales en este archivo pueden causar un comportamiento inesperado de la aplicación.
//     Los cambios manuales en este archivo se sobrescribirán si se regenera el código.
// </auto-generated>
//------------------------------------------------------------------------------

namespace Ingenio.BO
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
        
    public partial class ModelContainer : DbContext
    {
        public ModelContainer()
            : base("name=ModelContainer")
        {
            ((IObjectContextAdapter)this).ObjectContext.CommandTimeout = 0;
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<agencias> agencias { get; set; }
        public virtual DbSet<ahorrosContractual> ahorrosContractual { get; set; }
        public virtual DbSet<ahorrospermanentes> ahorrospermanentes { get; set; }
        public virtual DbSet<aportessociales> aportessociales { get; set; }
        public virtual DbSet<asociados> asociados { get; set; }
        public virtual DbSet<barrios> barrios { get; set; }
        public virtual DbSet<ciiu> ciiu { get; set; }
        public virtual DbSet<ciudades> ciudades { get; set; }
        public virtual DbSet<comunas> comunas { get; set; }
        public virtual DbSet<costosliquidacion> costosliquidacion { get; set; }
        public virtual DbSet<creditos> creditos { get; set; }
        public virtual DbSet<departamentos> departamentos { get; set; }
        public virtual DbSet<destinos> destinos { get; set; }
        public virtual DbSet<divisionciiu> divisionciiu { get; set; }
        public virtual DbSet<empresas> empresas { get; set; }
        public virtual DbSet<hahorrosAtermino> hahorrosAtermino { get; set; }
        public virtual DbSet<hahorrospermanentes> hahorrospermanentes { get; set; }
        public virtual DbSet<hAportesSociales> hAportesSociales { get; set; }
        public virtual DbSet<hasociados> hasociados { get; set; }
        public virtual DbSet<hcreditos> hcreditos { get; set; }
        public virtual DbSet<hnits> hnits { get; set; }
        public virtual DbSet<nits> nits { get; set; }
        public virtual DbSet<pais> pais { get; set; }
        public virtual DbSet<personacargo> personacargo { get; set; }
        public virtual DbSet<plancuentas> plancuentas { get; set; }
        public virtual DbSet<profesiones> profesiones { get; set; }
        public virtual DbSet<sahorrosContractual> sahorrosContractual { get; set; }
        public virtual DbSet<sahorrospermanentes> sahorrospermanentes { get; set; }
        public virtual DbSet<sAportesSociales> sAportesSociales { get; set; }
        public virtual DbSet<tasaspormontosyplazos> tasaspormontosyplazos { get; set; }
        public virtual DbSet<tasasporplazos> tasasporplazos { get; set; }
        public virtual DbSet<Zonasgenerales> Zonasgenerales { get; set; }
        public virtual DbSet<zonasgeograficas> zonasgeograficas { get; set; }
        public virtual DbSet<ahorrosalavista> ahorrosalavista { get; set; }
        public virtual DbSet<ahorrosAtermino> ahorrosAtermino { get; set; }
        public virtual DbSet<cuentasnovedadesvarias> cuentasnovedadesvarias { get; set; }
        public virtual DbSet<lineas> lineas { get; set; }
        public virtual DbSet<novedadesvariasnocausadas> novedadesvariasnocausadas { get; set; }
        public virtual DbSet<sahorrosAtermino> sahorrosAtermino { get; set; }
        public virtual DbSet<seguimientocredito> seguimientocredito { get; set; }
        public virtual DbSet<tasasplazoahorrotermino> tasasplazoahorrotermino { get; set; }
        public virtual DbSet<tazasporplazos> tazasporplazos { get; set; }
        public virtual DbSet<sahorrosalavista> sahorrosalavista { get; set; }
        public virtual DbSet<dependenciasempresas> dependenciasempresas { get; set; }
        public virtual DbSet<parameahorroAlaVista> parameahorroAlaVista { get; set; }
        public virtual DbSet<hahorrosalavista> hahorrosalavista { get; set; }
        public virtual DbSet<hahorrosContractual> hahorrosContractual { get; set; }
    }
}
