<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="relatorio_cte_nfe.aspx.cs" Inherits="Default.relatorio_cte_nfe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <asp:Button class="btn btn-success" ID="btn_voltar" runat="server" Text="VOLTAR" OnClick="btn_voltar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_sair" runat="server" Text="SAIR" OnClick="btn_sair_Click" /><br /><br />
    </div>
    <br />

    <div class="border border-success">
    <asp:GridView CssClass="grid" ID="grid_pag" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#FFCC00" />
            <Columns>
                <asp:BoundField DataField="id_programacao" HeaderText="ID" />
                <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                <asp:BoundField DataField="ie" HeaderText="IE" />
                <asp:BoundField DataField="data_emissao" HeaderText="DATA EMISSÃO" />
                <asp:BoundField DataField="numero" HeaderText="NUMERO" />
                <asp:BoundField DataField="serie" HeaderText="SERIE" />
                <asp:BoundField DataField="data_entrada" HeaderText="DATA ENTRADA" />
                <asp:BoundField DataField="data_vencimento" HeaderText="DATA VENCIMENTO" />
                <asp:BoundField DataField="total" HeaderText="TOTAL" />
                <asp:BoundField DataField="observacao" HeaderText="OBSERVAÇÃO" />
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
    </div>
    <br />
</asp:Content>

