using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Default
{
    public partial class entrada_nfe_cte : System.Web.UI.Page
    {

        private bancodadosinterEntities1 entities = new bancodadosinterEntities1();

        private List<NFe> lista;

        public void LimparCampos()
        {
            //limpar todos os campos da capa NFe
            txtIDNFe.Text = string.Empty;  
            txt_chave.Text = string.Empty;
            txt_base_calc_icms.Text = string.Empty;
            txt_base_calc_st.Text = string.Empty;
            txt_cnpj.Text = string.Empty;
            txt_data_emissao.Text = string.Empty;
            txt_data_entrada.Text = string.Empty;
            txt_desconto.Text = string.Empty;
            txt_frete_nf.Text = string.Empty;
            txt_ie.Text = string.Empty;
            txt_ipi.Text = string.Empty;
            txt_numero.Text = string.Empty;
            txt_serie.Text = string.Empty;
            txt_total.Text = string.Empty;
            txt_valor_icms.Text = string.Empty;
            txt_valor_st.Text = string.Empty;
            txt_vlor_produtos.Text = string.Empty;
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            carregaGrid();
        }

        protected void btn_sair_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }

        protected void btn_limpar_Click(object sender, EventArgs e)
        {
            LimparCampos();
        }

        protected void btn_voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("pos_login.aspx");
        }

        
        public void carregaGrid()
        {
            lista = entities.NFe.OrderBy(x => x.numero).ToList();
            gridNfe.DataSource = lista;
            gridNfe.DataBind();
        }


    protected void btn_concluir_Click(object sender, EventArgs e)
        {

            decimal frete = Convert.ToDecimal(txt_frete_nf.Text.ToString());
            decimal desconto = Convert.ToDecimal(txt_desconto.Text.ToString());
            decimal valor_st = Convert.ToDecimal(txt_base_calc_st.Text.ToString());
            decimal ipi = Convert.ToDecimal(txt_ipi.Text.ToString());
            decimal produtos = Convert.ToDecimal(txt_vlor_produtos.Text.ToString());
        
            decimal total = ((frete + valor_st + ipi + produtos)-desconto); 

            if(txtIDNFe.Text == string.Empty)
            {
                //novo registro
                NFe n = new NFe();
                n.chave_acesso = txt_chave.Text;
                n.cnpj = txt_cnpj.Text;
                n.ie = txt_ie.Text;
                n.data_emissao = Convert.ToDateTime(txt_data_emissao.Text.ToString());
                n.numero = txt_numero.Text.ToString();
                n.serie = txt_serie.Text;
                n.data_entrada = Convert.ToDateTime(txt_data_entrada.Text.ToString());
                n.base_calc_icms = Convert.ToDecimal(txt_base_calc_icms.Text.ToString());
                n.valor_icms = Convert.ToDecimal(txt_valor_icms.Text.ToString());
                n.frete_nfe = Convert.ToDecimal(txt_frete_nf.Text.ToString());
                n.desconto = Convert.ToDecimal(txt_desconto.Text.ToString());
                n.base_st = Convert.ToDecimal(txt_base_calc_st.Text.ToString());
                n.valor_st = Convert.ToDecimal(txt_valor_st.Text.ToString());
                n.ipi = Convert.ToDecimal(txt_ipi.Text.ToString());
                n.valor_produtos = Convert.ToDecimal(txt_vlor_produtos.Text.ToString());
                n.total = total;
                entities.NFe.Add(n);

                
            }
            else
            {
                //altera o registro
                NFe n = entities.NFe.Find(Convert.ToInt32(txtIDNFe.Text));
                n.chave_acesso = txt_chave.Text;
                n.cnpj = txt_cnpj.Text;
                n.ie = txt_ie.Text;
                n.data_emissao = Convert.ToDateTime(txt_data_emissao.Text.ToString());
                n.numero = txt_numero.Text.ToString();
                n.serie = txt_serie.Text;
                n.data_entrada = Convert.ToDateTime(txt_data_entrada.Text.ToString());
                n.base_calc_icms = Convert.ToDecimal(txt_base_calc_icms.Text.ToString());
                n.valor_icms = Convert.ToDecimal(txt_valor_icms.Text.ToString());
                n.frete_nfe = Convert.ToDecimal(txt_frete_nf.Text.ToString());
                n.desconto = Convert.ToDecimal(txt_desconto.Text.ToString());
                n.base_st = Convert.ToDecimal(txt_base_calc_st.Text.ToString());
                n.valor_st = Convert.ToDecimal(txt_valor_st.Text.ToString());
                n.ipi = Convert.ToDecimal(txt_ipi.Text.ToString());
                n.valor_produtos = Convert.ToDecimal(txt_vlor_produtos.Text.ToString());
                n.total = total;
                entities.Entry(n);
            }

            entities.SaveChanges();
            carregaGrid();
            Response.Redirect("pragramacao_pagamento.aspx");
            LimparCampos();

            
        }

        protected void grid_NFe_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            //linha selecionada
            int index = Convert.ToInt32(e.CommandArgument);
            // ID da linha selecionada
            int idSelect = Convert.ToInt32(gridNfe.Rows[index].Cells[0].Text.ToString());
            if (e.CommandName.ToString().Equals("btRemover"))
            {
                //remover
                NFe n = entities.NFe.Find(Convert.ToInt32(idSelect));
                entities.NFe.Remove(n);
                entities.SaveChanges();
                carregaGrid();
            }

            else if (e.CommandName.ToString().Equals("btAlterar"))
            {
                NFe n = entities.NFe.Find(Convert.ToInt32(idSelect));
                txtIDNFe.Text = n.id_nfe.ToString();
                txt_chave.Text = n.chave_acesso;
                txt_cnpj.Text = n.cnpj;
                txt_ie.Text = n.ie;
                txt_data_emissao.Text = n.data_emissao.ToString();
                txt_numero.Text = n.numero;
                txt_serie.Text = n.serie;
                txt_data_entrada.Text = n.data_entrada.ToString();
                txt_base_calc_icms.Text = n.base_calc_icms.ToString();
                txt_valor_icms.Text = n.valor_icms.ToString();
                txt_frete_nf.Text = n.frete_nfe.ToString();
                txt_desconto.Text = n.desconto.ToString();
                txt_base_calc_st.Text = n.base_st.ToString();
                txt_valor_st.Text = n.valor_st.ToString();
                txt_ipi.Text = n.ipi.ToString();
                txt_vlor_produtos.Text = n.valor_produtos.ToString();
                txt_total.Text = n.total.ToString();

            }

            entities.SaveChanges();
            carregaGrid();
        }

        protected void gridNfe_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gridNfe.DataSource = lista;
            gridNfe.PageIndex = e.NewPageIndex;
            gridNfe.DataBind();
        }
    }
}