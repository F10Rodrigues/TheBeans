﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class financeiro_pagamento : System.Web.UI.Page
    {
        private bancodadosinterEntities1 entities = new bancodadosinterEntities1();

        private List<programacao_pagamento> lista;

        protected void Page_Load(object sender, EventArgs e)
        {
            carregagrid();
        }

        protected void btn_Voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("pos_login.aspx");
        }

        protected void btn_Sair_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        public void carregagrid()
        {
            lista = entities.programacao_pagamento.OrderBy(x => x.data_vencimento).ToList();
            grid_pag.DataSource = lista;
            grid_pag.DataBind();
        }
    }
}