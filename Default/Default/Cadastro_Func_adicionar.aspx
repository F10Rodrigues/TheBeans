<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Cadastro_Func_adicionar.aspx.cs" Inherits="Default.Cadastro_Func_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div>
        <asp:Button class="btn btn-success" ID="btn_concluir" runat="server" Text="CONCLUIR" OnClick="btn_concluir_Click" ValidationGroup="validacao" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_limpar" runat="server" Text="LIMPAR" OnClick="btn_limpar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_voltar" runat="server" Text="VOLTAR" OnClick="btn_voltar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_sair" runat="server" Text="SAIR" OnClick="btn_sair_Click" />
    </div>
     <br />
     <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="validacao" />
     <br />

    <div class="border border-success">
        <asp:TextBox ID="txt_IdFunc" runat="server" Visible="False"></asp:TextBox>
        <br />
        <asp:Label ID="lbl_cpf" runat="server" Text="CPF"></asp:Label>
        <asp:TextBox ID="txt_cpf" runat="server" Width="213px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorCPF" runat="server" ControlToValidate="txt_cpf" ErrorMessage="Campo CPF não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="lbl_rg" runat="server" Text="RG"></asp:Label>
        <asp:TextBox ID="txt_rg" runat="server" Width="204px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorRG" runat="server" ControlToValidate="txt_rg" ErrorMessage="Campo RG não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="lbl_nome" runat="server" Text="NOME"></asp:Label>
        <asp:TextBox ID="txt_nome" runat="server" Width="740px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorNome" runat="server" ControlToValidate="txt_nome" ErrorMessage="Campo nome não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbl_ctps" runat="server" Text="CTPS"></asp:Label>
        <asp:TextBox ID="txt_ctps" runat="server" Width="317px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorCTPS" runat="server" ControlToValidate="txt_ctps" ErrorMessage="Campo CTPS não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="lbl_telefone" runat="server" Text="TELEFONE"></asp:Label>
        <asp:TextBox ID="txt_telefone" runat="server" Width="228px"></asp:TextBox>
        &nbsp;<asp:Label ID="lbl_celular" runat="server" Text="CELULAR"></asp:Label>
        <asp:TextBox ID="txt_celular" runat="server" Width="238px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorCelular" runat="server" ControlToValidate="txt_celular" ErrorMessage="Campo celular não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="lbl_cep" runat="server" Text="CEP"></asp:Label>
        <asp:TextBox ID="txt_cep" runat="server" Width="255px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorCEP" runat="server" ControlToValidate="txt_cep" ErrorMessage="Campo CEP não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <br /><br />
        <asp:Label ID="lbl_endereco" runat="server" Text="ENDEREÇO"></asp:Label>
        <asp:TextBox ID="txt_endereco" runat="server" Width="449px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorEndereco" runat="server" ControlToValidate="txt_endereco" ErrorMessage="Campo endereço não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="lbl_numero" runat="server" Text="Nº"></asp:Label>
        <asp:TextBox ID="txt_numero" runat="server" Width="81px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorNumero" runat="server" ControlToValidate="txt_numero" ErrorMessage="Campo numero não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
&nbsp;<asp:Label ID="lbl_bairro" runat="server" Text="BAIRRO"></asp:Label>
        <asp:TextBox ID="txt_bairro" runat="server" Width="240px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorBairro" runat="server" ControlToValidate="txt_bairro" ErrorMessage="Campo bairro não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="Label1" runat="server" Text="CIDADE"></asp:Label>
        <asp:TextBox ID="txt_Cidade" runat="server" Width="250px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorCidade" runat="server" ControlToValidate="txt_Cidade" ErrorMessage="Campo cidade não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <br />
        <br />
        <asp:Label ID="lbl_estado" runat="server" Text="ESTADO"></asp:Label>
            <asp:DropDownList ID="ddl_estado" runat="server" Width="245px">
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
        </asp:DropDownList>
        &nbsp;<asp:Label ID="lbl_email" runat="server" Text="E-MAIL"></asp:Label>
        <asp:TextBox ID="txt_email" runat="server" Width="925px"></asp:TextBox>
        <br />
        <br />
    </div>
    <br />

    <asp:GridView CssClass="grid" ID="grid_funcionario" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="#FFCC00" />
        <Columns>
            <asp:BoundField DataField="id_funcionario" HeaderText="ID" />
            <asp:BoundField DataField="nome" HeaderText="NOME" />
            <asp:BoundField DataField="cpf" HeaderText="CPF" />
            <asp:BoundField DataField="ctps" HeaderText="CTPS" />
            <asp:BoundField DataField="rg" HeaderText="RG" />
            <asp:BoundField DataField="cep" HeaderText="CEP" />
            <asp:BoundField DataField="telefone" HeaderText="TELEFONE" />
            <asp:BoundField DataField="celular" HeaderText="CELULAR" />
            <asp:BoundField DataField="endereco" HeaderText="ENDEREÇO" />
            <asp:BoundField DataField="numero" HeaderText="NUMERO" />
            <asp:BoundField DataField="bairro" HeaderText="BAIRRO" />
            <asp:BoundField DataField="cidade" HeaderText="CIDADE" />
            <asp:BoundField DataField="estado" HeaderText="ESTADO" />
            <asp:BoundField DataField="email" HeaderText="EMAIL" />
            <asp:ButtonField HeaderText="ALTERAR" Text="ALTERAR" CommandName="btAlterar" />
            <asp:ButtonField HeaderText="REMOVER" Text="REMOVER" CommandName="btRemover" />
        </Columns>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#F1F1F1" />
        <SortedAscendingHeaderStyle BackColor="#808080" />
        <SortedDescendingCellStyle BackColor="#CAC9C9" />
        <SortedDescendingHeaderStyle BackColor="#383838" />
    </asp:GridView>
</asp:Content>
