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
    
    public partial class nits
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public nits()
        {
            this.asociados = new HashSet<asociados>();
            this.empresas = new HashSet<empresas>();
        }
    
        public long idnits { get; set; }
        public long nit { get; set; }
        public Nullable<byte> digito { get; set; }
        public string primerapellido { get; set; }
        public string segundoapellido { get; set; }
        public string nombres { get; set; }
        public string nombreintegrado { get; set; }
        public string direccion { get; set; }
        public string tipoidentificacion { get; set; }
        public string relacion { get; set; }
        public int agencia { get; set; }
        public string telefono1 { get; set; }
        public string extension1 { get; set; }
        public string telefono2 { get; set; }
        public string extencion2 { get; set; }
        public string apartadoaereo { get; set; }
        public string codpaiscedula { get; set; }
        public string codciudadcedula { get; set; }
        public string enviocorrespondencia { get; set; }
        public string email { get; set; }
        public System.DateTime fechaingreso { get; set; }
        public Nullable<System.DateTime> fecharetiro { get; set; }
        public System.DateTime fechaultactualizacion { get; set; }
        public Nullable<System.DateTime> fechanacimiento { get; set; }
        public string codpais { get; set; }
        public string coddepartamento { get; set; }
        public string codciudad { get; set; }
        public string codzona { get; set; }
        public string codcomuna { get; set; }
        public string codbarrio { get; set; }
        public string codciiu { get; set; }
        public string coddivision { get; set; }
        public string estado { get; set; }
        public string estrato { get; set; }
        public string beeper { get; set; }
        public string codbeeper { get; set; }
        public string celular { get; set; }
        public string segundonombre { get; set; }
        public string operadoractualizo { get; set; }
        public string codsegmento { get; set; }
        public Nullable<System.DateTime> fechaexpcedula { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<asociados> asociados { get; set; }
        public virtual barrios barrios { get; set; }
        public virtual divisionciiu divisionciiu { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<empresas> empresas { get; set; }
    }
}
