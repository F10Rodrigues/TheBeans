using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class autorizar_documento : System.Web.UI.Page
    {

        private bancodadosinterEntities1 entities = new bancodadosinterEntities1();

        private List<autorizar> lista;

        private List<programacao_pagamento> lista1;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                carregaProgramacaoPag();
                carregagrid();
            }
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

            lista = entities.autorizar.OrderBy(x => x.cnpj).ToList();
            grid_autorizar.DataSource = lista;
            grid_autorizar.DataBind();
        }

       /* private void carregaProgramacaoPag()
        {
            
            lista1 = entities.programacao_pagamento.OrderBy(x => x.cnpj).ToList();
            grid_autorizar.DataSource = lista1;
            grid_autorizar.DataBind();
        }*/

        protected void grid_autorizar_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.Cells[7].Text == "0")
            {
                e.Row.Cells[7].Text = "NÃO";
            }
        }
    }
}