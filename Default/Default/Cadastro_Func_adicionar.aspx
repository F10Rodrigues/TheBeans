<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Cadastro_Func_adicionar.aspx.cs" Inherits="Default.Cadastro_Func_adicionar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
     <div>
        <asp:Button class="btn btn-success" ID="btn_concluir" runat="server" Text="CONCLUIR" OnClick="btn_concluir_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_limpar" runat="server" Text="LIMPAR" OnClick="btn_limpar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_voltar" runat="server" Text="VOLTAR" OnClick="btn_voltar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_sair" runat="server" Text="SAIR" OnClick="btn_sair_Click" />
    </div>
    <br />
    
    <asp:TextBox ID="txt_IdFunc" runat="server" Visible="False"></asp:TextBox>
    <br />
    <asp:Label ID="lbl_cpf" runat="server" Text="CPF"></asp:Label>
    <asp:TextBox ID="txt_cpf" runat="server" Width="178px"></asp:TextBox>
    <asp:Label ID="lbl_rg" runat="server" Text="RG"></asp:Label>
    <asp:TextBox ID="txt_rg" runat="server" Width="180px"></asp:TextBox>
    <asp:Label ID="lbl_ctps" runat="server" Text="CTPS"></asp:Label>
    <asp:TextBox ID="txt_ctps" runat="server" Width="228px"></asp:TextBox><br /><br />
    <asp:Label ID="lbl_nome" runat="server" Text="NOME"></asp:Label>
    <asp:TextBox ID="txt_nome" runat="server" Width="642px"></asp:TextBox><br /><br />
    <asp:Label ID="lbl_telefone" runat="server" Text="TELEFONE"></asp:Label>
    <asp:TextBox ID="txt_telefone" runat="server" Width="189px"></asp:TextBox>
    <asp:Label ID="lbl_celular" runat="server" Text="CELULAR"></asp:Label>
    <asp:TextBox ID="txt_celular" runat="server" Width="186px"></asp:TextBox>
    <asp:Label ID="lbl_cep" runat="server" Text="CEP"></asp:Label>
    <asp:TextBox ID="txt_cep" runat="server"></asp:TextBox><br /><br />
    <asp:Label ID="lbl_endereco" runat="server" Text="ENDEREÇO"></asp:Label>
    <asp:TextBox ID="txt_endereco" runat="server" Width="277px"></asp:TextBox>
    <asp:Label ID="lbl_numero" runat="server" Text="Nº"></asp:Label>
    <asp:TextBox ID="txt_numero" runat="server" Width="56px"></asp:TextBox>
    <asp:Label ID="lbl_bairro" runat="server" Text="BAIRRO"></asp:Label>
    <asp:TextBox ID="txt_bairro" runat="server" Width="181px"></asp:TextBox>
    <br />
    <br />
    <asp:Label ID="Label1" runat="server" Text="CIDADE"></asp:Label>
    <asp:TextBox ID="txt_Cidade" runat="server"></asp:TextBox>
    <asp:Label ID="lbl_estado" runat="server" Text="ESTADO"></asp:Label>
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
    </asp:DropDownList>
    <br />
    <br />
    <asp:Label ID="lbl_email" runat="server" Text="E-MAIL"></asp:Label>
    <asp:TextBox ID="txt_email" runat="server" Width="448px"></asp:TextBox>

    <asp:GridView CssClass="grid" ID="grid_funcionario" runat="server" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField DataField="id_funcionario" HeaderText="ID" />
            <asp:BoundField DataField="nome" HeaderText="NOME" />
            <asp:BoundField DataField="cpf" HeaderText="CPF" />
            <asp:BoundField DataField="ctps" HeaderText="CTPS" />
            <asp:BoundField DataField="rg" HeaderText="RG" />
            <asp:BoundField DataField="cep" HeaderText="CEP" />
            <asp:BoundField DataField="celular" HeaderText="CELULAR" />
            <asp:BoundField DataField="telefone" HeaderText="TELEFONE" />
            <asp:BoundField DataField="endereco" HeaderText="ENDEREÇO" />
            <asp:BoundField DataField="numero" HeaderText="NUMERO" />
            <asp:BoundField DataField="bairro" HeaderText="BAIRRO" />
            <asp:BoundField DataField="cidade" HeaderText="CIDADE" />
            <asp:BoundField DataField="estado" HeaderText="ESTADO" />
            <asp:BoundField DataField="email" HeaderText="EMAIL" />
            <asp:ButtonField HeaderText="ALTERAR" Text="ALTERAR" CommandName="btAlterar" />
            <asp:ButtonField HeaderText="REMOVER" Text="REMOVER" CommandName="btRemover" />
        </Columns>
    </asp:GridView>
</asp:Content>
