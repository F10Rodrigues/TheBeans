using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class cadastro_forn_adicionar : System.Web.UI.Page
    {

        private bancodadosinterEntities1 entities = new bancodadosinterEntities1();
        private List<fornecedor> lista;

        public void limparCampos()
        {
            //limpar os campos cadastro fornecedor
            txtID_Fornec.Text = string.Empty;
            txt_cnpj.Text = string.Empty;
            txt_ie.Text = string.Empty;
            txt_razaosocial.Text = string.Empty;
            txt_telefone.Text = string.Empty;
            txt_celular.Text = string.Empty;
            txt_endereco.Text = string.Empty;
            txt_cep.Text = string.Empty;
            txt_numero.Text = string.Empty;
            txt_bairro.Text = string.Empty;
            ddl_estado.Text = string.Empty;
            txt_email.Text = string.Empty;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            carregaGrid();
        }

        protected void btn_limpar_Click(object sender, EventArgs e)
        {
            limparCampos();
        }

        protected void btn_sair_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btn_voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("pos_login.aspx");
        }

        protected void btn_concluir_Click(object sender, EventArgs e)
        {
            if(txtID_Fornec.Text == string.Empty)
            {
                fornecedor f = new fornecedor();
                f.cnpj = txt_cnpj.Text;
                f.ie = txt_ie.Text;
                f.razao_social = txt_razaosocial.Text;
                f.telefone = txt_telefone.Text;
                f.celular = txt_celular.Text;
                f.endereco = txt_endereco.Text;
                f.cep = txt_cep.Text;
                f.numero = txt_numero.Text;
                f.bairro = txt_bairro.Text;
                f.estado = ddl_estado.Text;
                f.email = txt_email.Text;
                entities.fornecedor.Add(f);
                entities.SaveChanges();
                carregaGrid();
                limparCampos();
            }
        }

        private void carregaGrid()
        {
            lista = entities.fornecedor.OrderBy(x => x.razao_social).ToList();
            grid_fornec.DataSource = lista;
            grid_fornec.DataBind();
        }

        protected void grid_fornec_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid_fornec.DataSource = lista;
            grid_fornec.PageIndex = e.NewPageIndex;
            grid_fornec.DataBind();
        }
    }
}