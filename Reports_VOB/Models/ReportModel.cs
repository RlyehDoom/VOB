using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Linq;
using System.Web;

namespace VOB.Web.Models
{
    public class ReporteNormalModel
    {
        [DisplayName("RUT")]
        public string Rut { get; set; }

        [DisplayName("Periodo 1")]
        public string Periodo1 { get; set; }

        [DisplayName("Periodo 2")]
        public string Periodo2 { get; set; }

        [DisplayName("Periodo 3")]
        public string Periodo3 { get; set; }

        [DisplayName("Periodo 4")]
        public string Periodo4 { get; set; }

        [DisplayName("Id Calidad")]
        public int IdCalidad { get; set; }

        [DisplayName("Id Estado")]
        public int IdEstado { get { return 2; } set { IdEstado = value; } }

        [DisplayName("Id Tipo Balance")]
        public int IdTipoBalance { get; set; }

        public int IdPeriodo1 { get; set; }
        public int IdPeriodo2 { get; set; }
        public int IdPeriodo3 { get; set; }
        public int IdPeriodo4 { get; set; }

        [DisplayName("Balance")]
        public string TituloBalance { get; set; }

        [DisplayName("Usuario")]
        public string UsuarioNT { get; set; }

        public string ClienteNombre { get; set; }
        public int EjecutivoId { get; set; }
        public string EjecutivoNombre { get; set; }
        public string EjecutivoRut { get; set; }
        public int EjecutivoCodigoPerfil { get; set; }
    }
}