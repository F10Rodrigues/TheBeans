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
            if (txt_ID.Text == string.Empty)
            {
                // novo registro
                documento_ged g = new documento_ged();
                g.numero_documento = txt_NumeroDoc.Text;
                g.serie = txt_Serie.Text;
                g.cnpj = txt_CNPJ.Text;
                g.fornecedor = txt_Fornecedor.Text;
                g.arquivo = lbl_Msg.Text;
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
                g.arquivo = lbl_Msg.Text;
                entities.Entry(g);
            }

            // Specify the path on the server to
            // save the uploaded file to.
            String savePath = @"C:\Users\Felipe\Desktop\FATEC TI\4° Módulo\Inter 4\TheBeans Inter\GED";

            // Before attempting to perform operations
            // on the file, verify that the FileUpload 
            // control contains a file.
            if (FileUpload1.HasFile)
            {
                // Get the name of the file to upload.
                String fileName = FileUpload1.FileName;

                // Append the name of the file to upload to the path.
                savePath += fileName;


                // Call the SaveAs method to save the 
                // uploaded file to the specified path.
                // This example does not perform all
                // the necessary error checking.               
                // If a file with the same name
                // already exists in the specified path,  
                // the uploaded file overwrites it.
                FileUpload1.SaveAs(savePath);

                // Notify the user of the name of the file
                // was saved under.
                lbl_Msg.Text = "Your file was saved as " + fileName;
            }
            else
            {
                // Notify the user that a file was not uploaded.
                lbl_Msg.Text = "You did not specify a file to upload.";
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

            FileUpload fileUpload = (FileUpload)grid_DocumentosGed.Rows[5].FindControl("FileUpload1");

            System.IO.Stream stream = fileUpload.PostedFile.InputStream;

            int length = fileUpload.PostedFile.ContentLength;

            byte[] data = new byte[length];

            stream.Read(data, 0, length);

            if (e.CommandName.ToString().Equals("btRemover"))
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
                lbl_Msg.Text = g.arquivo;
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