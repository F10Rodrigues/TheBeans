using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class login : System.Web.UI.Page
    {

        private bancodadosinterEntities1 entity = new bancodadosinterEntities1();

        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void Login1_Authenticate(object sender, AuthenticateEventArgs e)
        {
            usuario u = entity.usuario.FirstOrDefault(x => x.login == Login1.UserName && x.senha == Login1.Password);

            if (u != null)
            {
                Session["usuariologado"] = u;
                Login1.DestinationPageUrl = "pos_login.aspx";
                e.Authenticated = true;
            }
            else
            {
                e.Authenticated = false;
            }
        }
    }
}