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
    
    public partial class dependenciasempresas
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public dependenciasempresas()
        {
            this.asociados = new HashSet<asociados>();
        }
    
        public string codempresa { get; set; }
        public string coddependencia { get; set; }
        public string nombredependencia { get; set; }
        public string telefono { get; set; }
        public string fax { get; set; }
        public string direccion { get; set; }
        public string codpais { get; set; }
        public string coddepartamento { get; set; }
        public string codciudad { get; set; }
        public Nullable<long> nitempresa { get; set; }
        public string email { get; set; }
        public int agencia { get; set; }
        public decimal iddependenciasempresas { get; set; }
        public Nullable<bool> web { get; set; }
        public Nullable<byte> szin { get; set; }
    
        public virtual agencias agencias { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<asociados> asociados { get; set; }
        public virtual ciudades ciudades { get; set; }
    }
}
