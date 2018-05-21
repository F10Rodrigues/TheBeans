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

        private List<NFe> lista;

        protected void Page_Load(object sender, EventArgs e)
        {
            carregaGrid();
        }

        public void carregaGrid()
        {
            lista = entities.NFe.OrderBy(x => x.numero).ToList();
            grid_NFe.DataSource = lista;
            grid_NFe.DataBind();
        }

        protected void btn_voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("pos_login.aspx");
        }

        protected void btn_sair_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}