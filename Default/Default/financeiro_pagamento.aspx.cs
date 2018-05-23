using System;
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

        private List<pagamento> lista;

        protected void Page_Load(object sender, EventArgs e)
        {

            /*NFe n = (NFe)Session["nfe"];
            grid_pag = n.cnpj;
            txt_IE.Text = n.ie;
            txt_DataEmissao.Text = n.data_emissao.ToString();
            txt_Numero.Text = n.numero;
            txt_Serie.Text = n.serie;
            txt_DataEntrada.Text = n.data_entrada.ToString();
            txt_Total.Text = n.total.ToString();
            */
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
            lista = entities.pagamento.OrderBy(x => x.vencimento).ToList();
            grid_pag.DataSource = lista;
            grid_pag.DataBind();
        }


        protected void grid_pag_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells[7].Text == "0")
            {
                e.Row.Cells[7].Text = "NÃO";
            }
            
        }
    }
}