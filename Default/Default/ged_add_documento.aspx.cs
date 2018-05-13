using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class ged_add_documento : System.Web.UI.Page
    {

        private bancodadosinterEntities1 entities = new bancodadosinterEntities1();
        private List<documento_ged> lista;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void limparCampos()
        {
            //limpa os campos do GED
            txt_ID.Text = string.Empty;
            txt_NumeroDoc.Text = string.Empty;
            txt_Serie.Text = string.Empty;
            txt_CNPJ.Text = string.Empty;
            txt_Fornecedor.Text = string.Empty;
            txt_CaminhoDoc.Text = string.Empty;
        }

        protected void btn_Sair_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btn_Limpar_Click(object sender, EventArgs e)
        {
            limparCampos();
        }

        protected void btnVoltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("pos_login.aspx");
        }

        public void carregaGrid()
        {
            lista = entities.documento_ged.OrderBy(x => x.Id_documento).ToList();
            grid_DocumentosGed.DataSource = lista;
            grid_DocumentosGed.DataBind();
        }

        protected void btn_Concluir_Click(object sender, EventArgs e)
        {
            if(txt_ID.Text == string.Empty)
            {
                // novo registro
                documento_ged g = new documento_ged();
                g.numero_documento = txt_NumeroDoc.Text;
                g.serie = txt_Serie.Text;
                g.cnpj = txt_CNPJ.Text;
                g.fornecedor = txt_Fornecedor.Text;
                g.arquivo = txt_CaminhoDoc.Text;
                entities.documento_ged.Add(g);
            }
            else
            {
                //altera o registro
                documento_ged g = entities.documento_ged.Find(Convert.ToInt32(txt_ID.Text));
                g.numero_documento = txt_NumeroDoc.Text;
                g.serie = txt_Serie.Text;
                g.cnpj = txt_Serie.Text;
                g.fornecedor = txt_Fornecedor.Text;
                g.arquivo = txt_CaminhoDoc.Text;
                entities.Entry(g);
            }
            entities.SaveChanges();
            carregaGrid();
            limparCampos();
        }

        protected void grid_DocumentosGed_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //linha selecionada
            int index = Convert.ToInt32(e.CommandArgument);
            //id da linha selecionada
            int idSelect = Convert.ToInt32(grid_DocumentosGed.Rows[index].Cells[0].Text.ToString());
            if(e.CommandName.ToString().Equals("btRemover"))
            {
                documento_ged g = entities.documento_ged.Find(Convert.ToInt32(idSelect));
                entities.documento_ged.Remove(g);
                entities.SaveChanges();
                carregaGrid();
            }

            else if (e.CommandName.ToString().Equals("btAlterar"))
            {
                documento_ged g = entities.documento_ged.Find(Convert.ToInt32(idSelect));
                txt_ID.Text = g.Id_documento.ToString();
                txt_NumeroDoc.Text = g.numero_documento;
                txt_Serie.Text = g.serie;
                txt_CNPJ.Text = g.cnpj;
                txt_Fornecedor.Text = g.fornecedor;
                txt_CaminhoDoc.Text = g.arquivo;
            }

            entities.SaveChanges();
            carregaGrid();
        }

        protected void grid_DocumentosGed_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid_DocumentosGed.DataSource = lista;
            grid_DocumentosGed.PageIndex = e.NewPageIndex;
            grid_DocumentosGed.DataBind();
        }
    }
}