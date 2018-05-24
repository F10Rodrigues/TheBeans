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
            lista = entities.pagamento.OrderBy(x => x.vencimento).ToList();
            grid_pag.DataSource = lista;
            grid_pag.DataBind();
        }


        protected void grid_pag_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.Cells[8].Text == "0")
            {
                e.Row.Cells[8].Text = "NÃO";
            }
            else
            {
                e.Row.Cells[8].Text = "SIM";
            }

        }

        protected void grid_pag_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int idpagamento = Convert.ToInt32(e.CommandArgument);

            int idSelect = Convert.ToInt32(grid_pag.Rows[idpagamento].Cells[0].Text.ToString());

            pagamento p = entities.pagamento.Find(idSelect);

            p.pago = "1";
            entities.Entry(p);
            entities.SaveChanges();
            carregagrid();

            //atualizar os valores 
        }
    }
}