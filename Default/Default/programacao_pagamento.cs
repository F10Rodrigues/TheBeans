//------------------------------------------------------------------------------
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
    using System.Collections.Generic;
    
    public partial class programacao_pagamento
    {
        public int id_programacao { get; set; }
        public string cnpj { get; set; }
        public string ie { get; set; }
        public System.DateTime data_emissao { get; set; }
        public string numero { get; set; }
        public string serie { get; set; }
        public System.DateTime data_entrada { get; set; }
        public System.DateTime data_vencimento { get; set; }
        public decimal total { get; set; }
        public string observacao { get; set; }
        public string autorizado { get; set; }
        public string pago { get; set; }
    }
}
