<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="relatorio_fornecedores.aspx.cs" Inherits="Default.relatorio_fornecedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btn_voltar" runat="server" Text="Voltar" />
    <asp:Button ID="btn_sair" runat="server" Text="SAIR" /><br /><br />
    <asp:GridView ID="grid_consulta_forn" runat="server" Width="1043px" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField HeaderText="CNPJ" />
            <asp:BoundField HeaderText="RAZÃO SOCIAL" />
            <asp:BoundField HeaderText="ENDEREÇO" />
            <asp:BoundField HeaderText="TELEFONE" />
            <asp:BoundField HeaderText="I.E." />
            <asp:BoundField HeaderText="E-MAIL" />
        </Columns>
    </asp:GridView><br /><br />
    </asp:Content>