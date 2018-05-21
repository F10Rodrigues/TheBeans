using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class relatorio_fornecedores : System.Web.UI.Page
    {
        private bancodadosinterEntities1 entities = new bancodadosinterEntities1();

        private List<fornecedor> lista;

        protected void Page_Load(object sender, EventArgs e)
        {
            carregagrid();
        }

        public void carregagrid()
        {
            lista = entities.fornecedor.OrderBy(x => x.razao_social).ToList();
            grid_consulta_forn.DataSource = lista;
            grid_consulta_forn.DataBind();
        }

        protected void btn_sair_Click1(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btn_voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("pos_login.aspx");
        }
    }
}