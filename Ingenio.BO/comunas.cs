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
    
    public partial class comunas
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public comunas()
        {
            this.barrios = new HashSet<barrios>();
        }
    
        public string codpais { get; set; }
        public string coddepartamento { get; set; }
        public string codciudad { get; set; }
        public string codzona { get; set; }
        public string codcomuna { get; set; }
        public string nombrecomuna { get; set; }
        public decimal idcomunas { get; set; }
        public Nullable<byte> szin { get; set; }
        public Nullable<byte> web { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<barrios> barrios { get; set; }
        public virtual pais pais { get; set; }
        public virtual zonasgeograficas zonasgeograficas { get; set; }
    }
}
