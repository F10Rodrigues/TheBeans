using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class Principal : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            //Obtém valor que está alocado na sessão do servidor
            usuario u = (usuario)Session["usuariologado"];
            if (u != null)
            {
                lbl_usuario_logado.Text = u.nome;
            }
            else
            {
                Response.Redirect("login.aspx");
            }
        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Session["usuariologado"] = null;
            Response.Redirect("login.aspx");
        }
    }
}