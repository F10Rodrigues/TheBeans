<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Cadastro_func_Atualizar.aspx.cs" Inherits="Default.Cadastro_func_Atualizar" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btn_pesquisar" runat="server" Text="PESQUISAR" />
    <asp:Button ID="btn_salvar" runat="server" Text="SALVAR" />
    <br /><br />
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
    </asp:DropDownList><br /><br />
    <asp:Label ID="lbl_função" runat="server" Text="FUNÇÃO"></asp:Label>
    <asp:TextBox ID="txt_função" runat="server" Width="221px"></asp:TextBox>
    <asp:Label ID="lbl_email" runat="server" Text="E-MAIL"></asp:Label>
    <asp:TextBox ID="txt_email" runat="server" Width="448px"></asp:TextBox>
</asp:Content>
