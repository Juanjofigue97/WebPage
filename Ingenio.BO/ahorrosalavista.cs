//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class ahorrosalavista
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ahorrosalavista()
        {
            this.sahorrosalavista = new HashSet<sahorrosalavista>();
        }
    
        public string codlinea { get; set; }
        public int agencia { get; set; }
        public string numerocuenta { get; set; }
        public long Cedulasociado { get; set; }
        public Nullable<decimal> saldoTotal { get; set; }
        public Nullable<decimal> saldoMinimo { get; set; }
        public Nullable<decimal> acumuladoretiros { get; set; }
        public Nullable<decimal> transito { get; set; }
        public System.DateTime fechainicio { get; set; }
        public Nullable<System.DateTime> f_ultimatransaccion { get; set; }
        public Nullable<decimal> interesliquidado { get; set; }
        public Nullable<System.DateTime> f_ultimacausacion { get; set; }
        public Nullable<decimal> interedisponible { get; set; }
        public Nullable<decimal> rtefteacumulada { get; set; }
        public Nullable<decimal> gmfMesasociado { get; set; }
        public Nullable<decimal> gmfMesentidad { get; set; }
        public Nullable<decimal> interescausado { get; set; }
        public Nullable<decimal> morosidad { get; set; }
        public string formapago { get; set; }
        public Nullable<decimal> valorcuota { get; set; }
        public string estado { get; set; }
        public string consignaciontitular { get; set; }
        public decimal idahorrosalavista { get; set; }
        public Nullable<System.DateTime> fechainiciodeduccion { get; set; }
        public Nullable<bool> web { get; set; }
        public Nullable<byte> szin { get; set; }
        public string pignorado { get; set; }
        public Nullable<short> idasesores { get; set; }
        public Nullable<short> idoperador { get; set; }
    
        public virtual asociados asociados { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<sahorrosalavista> sahorrosalavista { get; set; }
        public virtual parameahorroAlaVista parameahorroAlaVista { get; set; }
    }
}
