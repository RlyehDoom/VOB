//------------------------------------------------------------------------------
// <auto-generated>
//    This code was generated from a template.
//
//    Manual changes to this file may cause unexpected behavior in your application.
//    Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace VOB.Web.DataBaseModel
{
    using System;
    using System.Collections.Generic;
    
    public partial class BalancePeriodo
    {
        public BalancePeriodo()
        {
            this.BalanceDetalle = new HashSet<BalanceDetalle>();
        }
    
        public int IdPeriodo { get; set; }
        public Nullable<int> IdBalance { get; set; }
        public int Periodo { get; set; }
        public byte Meses { get; set; }
        public Nullable<short> CantidadEmpresas { get; set; }
        public string Clientes { get; set; }
        public byte IdEstado { get; set; }
        public byte IdCalidad { get; set; }
        public int IdAnalista { get; set; }
        public System.DateTime FechaCreacion { get; set; }
        public System.DateTime FechaModificacion { get; set; }
        public string UltimoUsuario { get; set; }
    
        public virtual Analistas Analistas { get; set; }
        public virtual ICollection<BalanceDetalle> BalanceDetalle { get; set; }
        public virtual Balances Balances { get; set; }
        public virtual Estados Estados { get; set; }
        public virtual TipoCalidad TipoCalidad { get; set; }
    }
}
