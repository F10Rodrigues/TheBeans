<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="autorizar_documento.aspx.cs" Inherits="Default.autorizar_documento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
    <div>
            <asp:Button class="btn btn-success" ID="btn_Voltar" runat="server" OnClick="btn_Voltar_Click" Text="VOLTAR" />
            &nbsp;<asp:Button class="btn btn-success" ID="btn_Sair" runat="server" OnClick="btn_Sair_Click" Text="SAIR" />
    </div>
    <br />

    <div class="border border-success">
        <asp:GridView CssClass="grid" ID="grid_autorizar" runat="server" AutoGenerateColumns="False" OnRowDataBound="grid_autorizar_RowDataBound" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#FFCC00" />
            <Columns>
                <asp:BoundField DataField="Id_autorizar" HeaderText="ID" />
                <asp:BoundField DataField="vencimento" HeaderText="DATA VENCIMENTO" />
                <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                <asp:BoundField DataField="numero" HeaderText="NUMERO" />
                <asp:BoundField DataField="serie" HeaderText="SERIE" />
                <asp:BoundField DataField="total" HeaderText="TOTAL" />
                <asp:BoundField DataField="observacao" HeaderText="OBSERVAÇÃO" />
                <asp:BoundField DataField="autorizado" HeaderText="AUTORIZADO" />
                <asp:ButtonField CommandName="btAutorizar" HeaderText="AUTORIZAR" Text="AUTORIZAR" />
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

    <div>
    </div>

</asp:Content>
