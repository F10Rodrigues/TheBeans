<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="relatorio_cte_nfe.aspx.cs" Inherits="Default.relatorio_cte_nfe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <asp:Button class="btn btn-success" ID="btn_voltar" runat="server" Text="Voltar" OnClick="btn_voltar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_sair" runat="server" Text="SAIR" OnClick="btn_sair_Click" /><br /><br />
    </div>
    <br />

    <asp:GridView CssClass="grid" ID="grid_NFe" runat="server" Width="1043px" AutoGenerateColumns="False">
        <Columns>
            <asp:BoundField HeaderText="NUMERO" DataField="numero" />
            <asp:BoundField HeaderText="SERIE" DataField="serie" />
            <asp:BoundField HeaderText="DATA EMISSÃO" DataField="data_emissao" />
            <asp:BoundField HeaderText="DATA ENTRADA" DataField="data_entrada" />
            <asp:BoundField HeaderText="TOTAL" DataField="total" />
            <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
        </Columns>
    </asp:GridView>
    <br />
</asp:Content>

