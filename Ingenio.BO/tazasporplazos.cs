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
    
    public partial class tazasporplazos
    {
        public int nroregistro { get; set; }
        public string codlinea { get; set; }
        public string coddestino { get; set; }
        public Nullable<int> plazoinicial { get; set; }
        public Nullable<int> plazofinal { get; set; }
        public Nullable<decimal> tasainteres { get; set; }
    
        public virtual lineas lineas { get; set; }
    }
}
