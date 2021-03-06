﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class relatorio_funcionario : System.Web.UI.Page
    {
        private bancodadosinterEntities1 entities = new bancodadosinterEntities1();

        private List<funcionario> lista;

        protected void Page_Load(object sender, EventArgs e)
        {
            carregagrid();
        }

        protected void btn_voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("pos_login.aspx");
        }

        protected void btn_sair_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
        public void carregagrid()
        {
            lista = entities.funcionario.OrderBy(x => x.nome).ToList();
            grid_funcionario.DataSource = lista;
            grid_funcionario.DataBind();
        }
    }
}