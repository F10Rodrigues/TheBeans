<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="relatorio_funcionario.aspx.cs" Inherits="Default.relatorio_funcionario" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <asp:Button class="btn btn-success" ID="btn_voltar" runat="server" Text="VOLTAR" OnClick="btn_voltar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_sair" runat="server" Text="SAIR" OnClick="btn_sair_Click" /><br /><br />
    </div>
    <br />

    <div class="border border-success">
        <asp:GridView CssClass="grid" ID="grid_funcionario" runat="server" AutoGenerateColumns="False"  BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#FFCC00" />
            <Columns>
                <asp:BoundField HeaderText="NOME" DataField="nome" />
                <asp:BoundField HeaderText="CPF" DataField="cpf" />
                <asp:BoundField DataField="ctps" HeaderText="CTPS" />
                <asp:BoundField HeaderText="R.G." DataField="rg" />
                <asp:BoundField HeaderText="CELULAR" DataField="celular" />
                <asp:BoundField DataField="cep" HeaderText="CEP" />
                <asp:BoundField HeaderText="ENDEREÇO" DataField="endereco" />
                <asp:BoundField DataField="numero" HeaderText="NUMERO" />
                <asp:BoundField DataField="bairro" HeaderText="BAIRRO" />
                <asp:BoundField DataField="cidade" HeaderText="CIDADE" />
                <asp:BoundField DataField="estado" HeaderText="ESTADO" />
                <asp:BoundField HeaderText="EMAIL" DataField="email" />
            </Columns>
            <FooterStyle BackColor="Yellow" />
            <HeaderStyle BackColor="Green" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#808080" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#383838" />
        </asp:GridView>
    </div>
    <br />
    <br />
    </asp:Content>
