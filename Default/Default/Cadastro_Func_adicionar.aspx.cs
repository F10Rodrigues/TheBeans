using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class Cadastro_Func_adicionar : System.Web.UI.Page
    {
        private bancodadosinterEntities1 entities = new bancodadosinterEntities1();
        private List<funcionario> lista;


        public void limparCampos()
        {
            //limpar os campos cadastro fornecedor
            txt_IdFunc.Text = string.Empty;
            txt_cpf.Text = string.Empty;
            txt_nome.Text = string.Empty;
            txt_ctps.Text = string.Empty;
            txt_rg.Text = string.Empty;
            txt_cep.Text = string.Empty;
            txt_celular.Text = string.Empty;
            txt_endereco.Text = string.Empty;
            txt_numero.Text = string.Empty;
            txt_bairro.Text = string.Empty;
            txt_Cidade.Text = string.Empty;
            ddl_estado.Text = string.Empty;
            txt_email.Text = string.Empty;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            carregaGrid();
        }

        protected void btn_concluir_Click(object sender, EventArgs e)
        {
            if (txt_IdFunc.Text == string.Empty)
            {
                //novo registro
                funcionario k = new funcionario();
                k.cpf = txt_cpf.Text;
                k.nome = txt_nome.Text;
                k.ctps = txt_ctps.Text;
                k.rg = txt_rg.Text;
                k.cep = txt_cep.Text;
                k.celular = txt_celular.Text;
                k.endereco = txt_endereco.Text;
                k.numero = Convert.ToInt32(txt_numero.Text.ToString());
                k.bairro = txt_bairro.Text;
                k.cidade = txt_Cidade.Text;
                k.estado = ddl_estado.Text;
                k.email = txt_email.Text;

                entities.funcionario.Add(k);
            }
            else
            {
                //alterar registros
                funcionario k = entities.funcionario.Find(Convert.ToInt32(txt_IdFunc.Text));
                k.cpf = txt_cpf.Text;
                k.nome = txt_nome.Text;
                k.ctps = txt_ctps.Text;
                k.rg = txt_rg.Text;
                k.cep = txt_cep.Text;
                k.celular = txt_celular.Text;
                k.endereco = txt_endereco.Text;
                k.numero = Convert.ToInt32(txt_numero.Text.ToString());
                k.bairro = txt_bairro.Text;
                k.cidade = txt_Cidade.Text;
                k.estado = ddl_estado.Text;
                k.email = txt_email.Text;
                entities.Entry(k);
            }

            entities.SaveChanges();
            carregaGrid();
            limparCampos();
        }

        private void carregaGrid()
        {
            lista = entities.funcionario.OrderBy(x => x.nome).ToList();
            grid_funcionario.DataSource = lista;
            grid_funcionario.DataBind();
        }
        protected void grid_funcionario_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            grid_funcionario.DataSource = lista;
            grid_funcionario.PageIndex = e.NewPageIndex;
            grid_funcionario.DataBind();
        }

        protected void grid_funcionario_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            // linha selecionada
            int index = Convert.ToInt32(e.CommandArgument);
            // ID da linha selecionada
            int idSelect = Convert.ToInt32(grid_funcionario.Rows[index].Cells[0].Text.ToString());
            if (e.CommandName.ToString().Equals("btRemover"))
            {
                //remover
                funcionario k = entities.funcionario.Find(Convert.ToInt32(idSelect));
                entities.funcionario.Remove(k);
                entities.SaveChanges();
                carregaGrid();
            }
            else if (e.CommandName.ToString().Equals("btAlterar"))
            {
                funcionario k = entities.funcionario.Find(Convert.ToInt32(idSelect));
                txt_IdFunc.Text = k.id_funcionario.ToString();
                txt_cpf.Text = k.cpf;
                txt_nome.Text= k.nome;
                txt_ctps.Text = k.ctps ;
                txt_rg.Text = k.rg;
                txt_cep.Text = k.cep;
                txt_celular.Text = k.celular;
                txt_endereco.Text = k.endereco;
                txt_numero.Text = k.numero.ToString();
                txt_bairro.Text = k.bairro;
                txt_Cidade.Text = k.cidade;
                ddl_estado.Text = k.estado;
                txt_email.Text = k.email;
            }

            entities.SaveChanges();
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
    }
    }
