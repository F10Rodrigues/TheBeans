<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="cadastro_forn_adicionar.aspx.cs" Inherits="Default.cadastro_forn_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <asp:Button class="btn btn-success" ID="btn_concluir" runat="server" Text="CONCLUIR" OnClick="btn_concluir_Click" ValidationGroup="validacao" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_limpar" runat="server" Text="LIMPAR" OnClick="btn_limpar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_voltar" runat="server" Text="VOLTAR" OnClick="btn_voltar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_sair" runat="server" Text="SAIR" OnClick="btn_sair_Click" /><br /><br />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="validacao" />
    </div>

    <div class="border border-success">
        <asp:TextBox ID="txtID_Fornec" runat="server" Visible="False"></asp:TextBox>
        <br />
        <asp:Label ID="lbl_cnpj" runat="server" Text="CNPJ"></asp:Label>
        <asp:TextBox ID="txt_cnpj" runat="server" Width="178px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorCNPJ" runat="server" ControlToValidate="txt_cnpj" ErrorMessage="Campo CNPJ não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <asp:Label ID="lbl_ie" runat="server" Text="INSCRIÇÃO ESTADUAL"></asp:Label>
        <asp:TextBox ID="txt_ie" runat="server" Width="180px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorIE" runat="server" ControlToValidate="txt_ie" ErrorMessage="Campo I.E. não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbl_razaosocial" runat="server" Text="RAZÃO SOCIAL"></asp:Label>
        <asp:TextBox ID="txt_razaosocial" runat="server" Width="642px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorRazaoSocial" runat="server" ControlToValidate="txt_razaosocial" ErrorMessage="Campo Razão Social não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbl_telefone" runat="server" Text="TELEFONE"></asp:Label>
        <asp:TextBox ID="txt_telefone" runat="server" Width="189px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorTelefone" runat="server" ControlToValidate="txt_telefone" ErrorMessage="Campo telefone não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <asp:Label ID="lbl_celular" runat="server" Text="CELULAR"></asp:Label>
        <asp:TextBox ID="txt_celular" runat="server" Width="186px"></asp:TextBox>
        <asp:Label ID="lbl_cep" runat="server" Text="CEP"></asp:Label>
        <asp:TextBox ID="txt_cep" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorCEP" runat="server" ControlToValidate="txt_cep" ErrorMessage="Campo CEP não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbl_endereco" runat="server" Text="ENDEREÇO"></asp:Label>
        <asp:TextBox ID="txt_endereco" runat="server" Width="277px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorEndereco" runat="server" ControlToValidate="txt_endereco" ErrorMessage="Campo endereço não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <asp:Label ID="lbl_numero" runat="server" Text="Nº"></asp:Label>
        <asp:TextBox ID="txt_numero" runat="server" Width="56px"></asp:TextBox>
        <asp:Label ID="lbl_bairro" runat="server" Text="BAIRRO"></asp:Label>
        <asp:TextBox ID="txt_bairro" runat="server" Width="181px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorBairro" runat="server" ControlToValidate="txt_bairro" ErrorMessage="Campo bairro não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="CIDADE"></asp:Label>
        &nbsp;<asp:TextBox ID="txt_cidade" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorCidade" runat="server" ControlToValidate="txt_cidade" ErrorMessage="Campo cidade não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="lbl_estado" runat="server" Text="ESTADO"></asp:Label>
        <asp:DropDownList ID="ddl_estado" runat="server">
            <asp:ListItem>ACRE</asp:ListItem>
            <asp:ListItem>ALAGOAS</asp:ListItem>
            <asp:ListItem>AMAPA</asp:ListItem>
            <asp:ListItem>AMAZONAS</asp:ListItem>
            <asp:ListItem>BAHIA</asp:ListItem>
            <asp:ListItem>CEARA</asp:ListItem>
            <asp:ListItem>DISTRITO FEDERAL</asp:ListItem>
            <asp:ListItem>ESPIRITO SANTO</asp:ListItem>
            <asp:ListItem>GOIAS</asp:ListItem>
            <asp:ListItem>MARANHÃO</asp:ListItem>
            <asp:ListItem>MATO GROSSO</asp:ListItem>
            <asp:ListItem>MATO GROSSO DO SUL</asp:ListItem>
            <asp:ListItem>MINAS GERAIS</asp:ListItem>
            <asp:ListItem>PARA</asp:ListItem>
            <asp:ListItem>PARAIBA</asp:ListItem>
            <asp:ListItem>PARANA</asp:ListItem>
            <asp:ListItem>PERNAMBUCO</asp:ListItem>
            <asp:ListItem>PIAUI</asp:ListItem>
            <asp:ListItem>RIO DE JANEIRO</asp:ListItem>
            <asp:ListItem>RIO GRANDE DO NORTE</asp:ListItem>
            <asp:ListItem>RIO GRANDE DO SUL</asp:ListItem>
            <asp:ListItem>RONDONIA</asp:ListItem>
            <asp:ListItem>RORAIMA</asp:ListItem>
            <asp:ListItem>SANTA CATARINA</asp:ListItem>
            <asp:ListItem>SÃO PAULO</asp:ListItem>
            <asp:ListItem>SERGIPE</asp:ListItem>
            <asp:ListItem>TOCANTINS</asp:ListItem>
        </asp:DropDownList><br /><br />
        <asp:Label ID="lbl_email" runat="server" Text="E-MAIL"></asp:Label>
        <asp:TextBox ID="txt_email" runat="server" Width="882px"></asp:TextBox>
    </div>
    <br />
    <div>
        <asp:GridView CssClass="grid" ID="grid_fornec" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="grid_fornec_PageIndexChanging" OnRowCommand="grid_fornec_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#FFCC00" />
            <Columns>
                <asp:BoundField DataField="id_fornecedor" HeaderText="ID" />
                <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                <asp:BoundField DataField="ie" HeaderText="I.E." />
                <asp:BoundField DataField="razao_social" HeaderText="RAZÃO SOCIAL" />
                <asp:BoundField DataField="telefone" HeaderText="TELEFONE" />
                <asp:BoundField DataField="celular" HeaderText="CELULAR" />
                <asp:BoundField DataField="endereco" HeaderText="ENDEREÇO" />
                <asp:BoundField DataField="cep" HeaderText="CEP" />
                <asp:BoundField DataField="numero" HeaderText="NUMERO" />
                <asp:BoundField DataField="bairro" HeaderText="BAIRRO" />
                <asp:BoundField DataField="cidade" HeaderText="CIDADE" />
                <asp:BoundField DataField="estado" HeaderText="ESTADO" />
                <asp:BoundField DataField="email" HeaderText="E-MAIL" />
                <asp:ButtonField CommandName="btAlterar" HeaderText="Alterar" Text="Alterar" />
                <asp:ButtonField CommandName="btRemover" HeaderText="Remover" Text="Remover" />
            </Columns>
            <FooterStyle BackColor="Black" />
            <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>

</asp:Content>
