<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="entrada_nfe_cte.aspx.cs" Inherits="Default.entrada_nfe_cte" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

    <asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
        
        <div>
            <asp:Button class="btn btn-success" ID="btn_concluir" runat="server" Text="CONCLUIR" OnClick="btn_concluir_Click" ValidationGroup="validacao" />
            &nbsp;<asp:Button class="btn btn-success" ID="btn_limpar" runat="server" Text="LIMPAR" OnClick="btn_limpar_Click" />
            &nbsp;<asp:Button class="btn btn-success" ID="btn_sair" runat="server" Text="SAIR" OnClick="btn_sair_Click" />
            &nbsp;<asp:Button class="btn btn-success" ID="btn_voltar" runat="server" Text="VOLTAR" OnClick="btn_voltar_Click" />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="validacao" />
            <br />
        </div>
        <br />

        <div class="border border-success">
            <asp:TextBox ID="txtIDNFe" runat="server" Visible="False"></asp:TextBox>
            <br />
            <asp:Label ID="lbl_chave" runat="server" Text="CHAVE"></asp:Label>
            <asp:TextBox ID="txt_chave" runat="server" Width="95%"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl_cnpj" runat="server" Text="CNPJ"></asp:Label>
            <asp:TextBox ID="txt_cnpj" runat="server" Width="214px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorCNPJ" runat="server" ControlToValidate="txt_cnpj" ErrorMessage="Campo CNPJ não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
            <asp:Label ID="lbl_ie" runat="server" Text="I.E."></asp:Label>
            <asp:TextBox ID="txt_ie" runat="server" Width="197px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorIE" runat="server" ControlToValidate="txt_ie" ErrorMessage="Campo I.E. não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
            <asp:Label ID="lbl_data_emissao" runat="server" Text="DATA EMISSÃO"></asp:Label>
            <asp:TextBox ID="txt_data_emissao" runat="server" Width="193px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorDataEmissao" runat="server" ControlToValidate="txt_data_emissao" ErrorMessage="Campo Data Emissão não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
            <asp:Label ID="lbl_numero" runat="server" Text="NUMERO"></asp:Label>
            <asp:TextBox ID="txt_numero" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorNumero" runat="server" ControlToValidate="txt_numero" ErrorMessage="Campo Numero não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
            <asp:Label ID="lbl_serie" runat="server" Text="Serie"></asp:Label>
            <asp:TextBox ID="txt_serie" runat="server" Width="15%"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorSerie" runat="server" ControlToValidate="txt_serie" ErrorMessage="Campo Serie não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="lbl_data_entrada" runat="server" Text="DATA ENTRADA"></asp:Label>
            <asp:TextBox ID="txt_data_entrada" runat="server" Width="160px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorDataEntrada" runat="server" ControlToValidate="txt_data_entrada" ErrorMessage="Campo Data Entrada não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
            <asp:Label ID="lbl_base_calc_icms" runat="server" Text="BASE CÁLC. ICMS"></asp:Label>
            <asp:TextBox ID="txt_base_calc_icms" runat="server" Width="163px">0,00</asp:TextBox>
            <asp:Label ID="lbl_valor_icms" runat="server" Text="VALOR ICMS"></asp:Label>
            <asp:TextBox ID="txt_valor_icms" runat="server" Width="153px">0,00</asp:TextBox>
            <asp:Label ID="lbl_frete_nf" runat="server" Text="FRETE NF"></asp:Label>
            <asp:TextBox ID="txt_frete_nf" runat="server" Width="134px">0,00</asp:TextBox>
            <asp:Label ID="lbl_desconto" runat="server" Text="DESCONTO"></asp:Label>
            <asp:TextBox ID="txt_desconto" runat="server" Width="15%">0,00</asp:TextBox>
            <br />
            <br />
            <asp:Label ID="lbl_base_calc_st" runat="server" Text="BASE CÁLC ST"></asp:Label>
            <asp:TextBox ID="txt_base_calc_st" runat="server">0,00</asp:TextBox>
            <asp:Label ID="lbl_valor_st" runat="server" Text="VALOR ST"></asp:Label>
            <asp:TextBox ID="txt_valor_st" runat="server">0,00</asp:TextBox>
            &nbsp;<asp:Label ID="lbl_ipi" runat="server" Text="IPI"></asp:Label>
            <asp:TextBox ID="txt_ipi" runat="server">0,00</asp:TextBox>
            &nbsp;<asp:Label ID="lbl_valor_produtos" runat="server" Text="VALOR PRODUTOS"></asp:Label>
            <asp:TextBox ID="txt_vlor_produtos" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorValorProdutos" runat="server" ControlToValidate="txt_vlor_produtos" ErrorMessage="Campo Valor Produtos não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
            <asp:Label ID="lbl_total" runat="server" Text="TOTAL"></asp:Label>
            <asp:TextBox ID="txt_total" runat="server" Enabled="False" Width="15%"></asp:TextBox>
            <br />
            <br />
        </div>
        <br />

        <div class="border border-success">
            <asp:GridView CssClass="grid" ID="gridNfe" runat="server" AutoGenerateColumns="False" OnRowCommand="grid_NFe_RowCommand" OnPageIndexChanging="gridNfe_PageIndexChanging" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
                <AlternatingRowStyle BackColor="#FFCC00" />
                <Columns>
                    <asp:BoundField DataField="id_nfe" HeaderText="ID" />
                    <asp:BoundField DataField="chave_acesso" HeaderText="CHAVE" />
                    <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                    <asp:BoundField DataField="ie" HeaderText="I.E." />
                    <asp:BoundField DataField="data_emissao" HeaderText="DATA EMISSÃO" />
                    <asp:BoundField DataField="numero" HeaderText="NUMERO" />
                    <asp:BoundField DataField="serie" HeaderText="SERIE" />
                    <asp:BoundField DataField="data_entrada" HeaderText="DATA ENTRADA" />
                    <asp:BoundField DataField="base_calc_icms" HeaderText="BASE CALC. ICMS" />
                    <asp:BoundField DataField="valor_icms" HeaderText="VALOR ICMS" />
                    <asp:BoundField DataField="frete_nfe" HeaderText="FRETE NF" />
                    <asp:BoundField DataField="desconto" HeaderText="DESCONTO" />
                    <asp:BoundField DataField="base_st" HeaderText="BASE CALC. ST." />
                    <asp:BoundField DataField="valor_st" HeaderText="VALOR ST." />
                    <asp:BoundField DataField="ipi" HeaderText="IPI" />
                    <asp:BoundField DataField="valor_produtos" HeaderText="VALOR PRODUTOS" />
                    <asp:BoundField DataField="total" HeaderText="TOTAL" />
                    <asp:ButtonField CommandName="btAlterar" HeaderText="ALTERAR" Text="ALTERAR" />
                    <asp:ButtonField CommandName="btRemover" HeaderText="REMOVER" Text="REMOVER" />
                </Columns>
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
                <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
                <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
                <SortedAscendingCellStyle BackColor="#F1F1F1" />
                <SortedAscendingHeaderStyle BackColor="Gray" />
                <SortedDescendingCellStyle BackColor="#CAC9C9" />
                <SortedDescendingHeaderStyle BackColor="#383838" />
            </asp:GridView>
        </div>
    </asp:Content>

