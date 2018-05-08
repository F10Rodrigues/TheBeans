<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="entrada_nfe_cte.aspx.cs" Inherits="Default.entrada_nfe_cte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        <div>
            <asp:TextBox ID="txtIDNFe" runat="server"></asp:TextBox>
            <br />
            <asp:Label ID="lbl_chave" runat="server" Text="CHAVE"></asp:Label>
            <asp:TextBox ID="txt_chave" runat="server" Width="920px"></asp:TextBox><br /><br />
            <asp:Label ID="lbl_cnpj" runat="server" Text="CNPJ"></asp:Label>
            <asp:TextBox ID="txt_cnpj" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_ie" runat="server" Text="I.E."></asp:Label>
            <asp:TextBox ID="txt_ie" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_data_emissao" runat="server" Text="DATA EMISSÃO"></asp:Label>
            <asp:TextBox ID="txt_data_emissao" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="lbl_numero" runat="server" Text="NUMERO"></asp:Label>
            <asp:TextBox ID="txt_numero" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_serie" runat="server" Text="Serie"></asp:Label>
            <asp:TextBox ID="txt_serie" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_data_entrada" runat="server" Text="Data Entrada"></asp:Label>
            <asp:TextBox ID="txt_data_entrada" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="lbl_base_calc_icms" runat="server" Text="BASE CÁLC. ICMS"></asp:Label>
            <asp:TextBox ID="txt_base_calc_icms" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_valor_icms" runat="server" Text="VALOR ICMS"></asp:Label>
            <asp:TextBox ID="txt_valor_icms" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_frete_nf" runat="server" Text="FRETE NF"></asp:Label>
            <asp:TextBox ID="txt_frete_nf" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_desconto" runat="server" Text="DESCONTO"></asp:Label>
            <asp:TextBox ID="txt_desconto" runat="server"></asp:TextBox><br /><br />
            <asp:Label ID="lbl_base_calc_st" runat="server" Text="BASE CÁLC ST"></asp:Label>
            <asp:TextBox ID="txt_base_calc_st" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_valor_st" runat="server" Text="VALOR ST"></asp:Label>
            <asp:TextBox ID="txt_valor_st" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_ipi" runat="server" Text="IPI"></asp:Label>
            <asp:TextBox ID="txt_ipi" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_valor_produtos" runat="server" Text="VALOR PRODUTOS"></asp:Label>
            <asp:TextBox ID="txt_vlor_produtos" runat="server"></asp:TextBox>
            <asp:Label ID="lbl_total" runat="server" Text="TOTAL"></asp:Label>
            <asp:TextBox ID="txt_total" runat="server"></asp:TextBox><br /><br />
        </div>

        <div>
            <asp:Button ID="btn_concluir" runat="server" Text="CONCLUIR" OnClick="btn_concluir_Click" />
            <asp:Button ID="btn_limpar" runat="server" Text="LIMPAR" OnClick="btn_limpar_Click" />
            <asp:Button ID="btn_sair" runat="server" Text="SAIR" OnClick="btn_sair_Click" />
            <asp:Button ID="btn_voltar" runat="server" Text="VOLTAR" OnClick="btn_voltar_Click" />
                       
            
        </div>

        <div>



            <asp:GridView ID="grid_NFe" runat="server" AutoGenerateColumns="False" GridLines="None" OnRowCommand="grid_NFe_RowCommand">
                <Columns>
                    <asp:BoundField DataField="chave" HeaderText="Chave" />
                    <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                    <asp:BoundField DataField="ie" HeaderText="I.E." />
                    <asp:BoundField DataField="data_emissao" HeaderText="Data Emissão" />
                    <asp:BoundField DataField="numero" HeaderText="Numero" />
                    <asp:BoundField DataField="serie" HeaderText="Serie" />
                    <asp:BoundField DataField="data_entrada" HeaderText="Data Entrada" />
                    <asp:BoundField DataField="base_calc_icms" HeaderText="Base Calc. ICMS" />
                    <asp:BoundField DataField="valor_icms" HeaderText="Valor ICMS" />
                    <asp:BoundField DataField="frete_nfe" HeaderText="Frete NF" />
                    <asp:BoundField DataField="desconto" HeaderText="Desconto" />
                    <asp:BoundField DataField="base_st" HeaderText="Base Calc. ST." />
                    <asp:BoundField DataField="valor_st" HeaderText="Valor ST." />
                    <asp:BoundField DataField="ipi" HeaderText="IPI" />
                    <asp:BoundField DataField="valor_produtos" HeaderText="Valor Produtos" />
                    <asp:BoundField DataField="total" HeaderText="Total" />
                    <asp:ButtonField CommandName="btAlterar" HeaderText="Alterar" Text="Alterar" />
                    <asp:ButtonField CommandName="btRemover" HeaderText="Remover" Text="Remover" />
                </Columns>
            </asp:GridView>



        </div>
    </asp:Content>

