<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="relatorio_funcionario.aspx.cs" Inherits="Default.relatorio_funcionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="btn_concluir" runat="server" Text="CONCLUIR" />
    <asp:Button ID="btn_voltar" runat="server" Text="Voltar" />
    <asp:Button ID="btn_sair" runat="server" Text="SAIR" /><br /><br />
    <asp:GridView ID="GridView1" runat="server" Width="1043px" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField HeaderText="CPF" />
            <asp:BoundField HeaderText="NOME" />
            <asp:BoundField HeaderText="ENDEREÇO" />
            <asp:BoundField HeaderText="TELEFONE" />
            <asp:BoundField HeaderText="EMAIL" />
            <asp:BoundField HeaderText="FUNÇÃO" />
        </Columns>
    </asp:GridView><br /><br />
    <asp:Button ID="btn_exluir" runat="server" Text="EXCLUIR" />
</asp:Content>
