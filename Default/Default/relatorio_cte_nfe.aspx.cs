using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class relatorio_cte_nfe : System.Web.UI.Page
    {
        private bancodadosinterEntities1 entities = new bancodadosinterEntities1();

        private List<programacao_pagamento> lista;

        protected void Page_Load(object sender, EventArgs e)
        {
            carregaGrid();
        }

        public void carregaGrid()
        {
            lista = entities.programacao_pagamento.OrderBy(x => x.numero).ToList();
            grid_pag.DataSource = lista;
            grid_pag.DataBind();
        }

        protected void btn_voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("pos_login.aspx");
        }

        protected void btn_sair_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void grid_pag_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //linha selecionada
            int index = Convert.ToInt32(e.CommandArgument);
            // ID da linha selecionada
            int idSelect = Convert.ToInt32(grid_pag.Rows[index].Cells[0].Text.ToString());
            if (e.CommandName.ToString().Equals("btRemover"))
            {
                //remover
                programacao_pagamento n = entities.programacao_pagamento.Find(Convert.ToInt32(idSelect));
                entities.programacao_pagamento.Remove(n);
                entities.SaveChanges();
                carregaGrid();
            }
        }
    }
}