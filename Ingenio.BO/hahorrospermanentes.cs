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
    
    public partial class hahorrospermanentes
    {
        public int año { get; set; }
        public int mes { get; set; }
        public string codlinea { get; set; }
        public int agencia { get; set; }
        public string numerocuenta { get; set; }
        public long Cedulasociado { get; set; }
        public string tipoCuota { get; set; }
        public Nullable<decimal> valor { get; set; }
        public Nullable<decimal> porcentajeSalario { get; set; }
        public Nullable<decimal> porcentajeCuota { get; set; }
        public Nullable<decimal> saldoTotal { get; set; }
        public Nullable<decimal> saldoMinimo { get; set; }
        public Nullable<decimal> acumuladoretiros { get; set; }
        public Nullable<decimal> transito { get; set; }
        public System.DateTime fechainicio { get; set; }
        public Nullable<System.DateTime> f_ultimatransaccion { get; set; }
        public string formapago { get; set; }
        public Nullable<System.DateTime> f_ultimacausacion { get; set; }
        public Nullable<decimal> interesliquidado { get; set; }
        public Nullable<decimal> interescausado { get; set; }
        public Nullable<decimal> interedisponible { get; set; }
        public Nullable<decimal> rtefteacumulada { get; set; }
        public Nullable<System.DateTime> fechaliquidacion { get; set; }
        public string codlineaahorros { get; set; }
        public string nrocuentaahorros { get; set; }
        public string liquidacionautomatica { get; set; }
        public string liquidado { get; set; }
        public Nullable<decimal> morosidad { get; set; }
        public Nullable<decimal> gmfmesasociado { get; set; }
        public Nullable<decimal> gmfmesentidad { get; set; }
        public Nullable<System.DateTime> fechainiciodeduccion { get; set; }
        public Nullable<bool> web { get; set; }
        public string estado { get; set; }
        public decimal idhahorrospermanentes { get; set; }
        public Nullable<byte> szin { get; set; }
    }
}
