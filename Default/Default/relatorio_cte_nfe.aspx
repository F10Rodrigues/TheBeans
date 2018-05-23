<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="relatorio_cte_nfe.aspx.cs" Inherits="Default.relatorio_cte_nfe" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <asp:Button class="btn btn-success" ID="btn_voltar" runat="server" Text="VOLTAR" OnClick="btn_voltar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_sair" runat="server" Text="SAIR" OnClick="btn_sair_Click" /><br /><br />
    </div>
    <br />

    <asp:GridView CssClass="grid" ID="grid_pag" runat="server" AutoGenerateColumns="False">
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
        </asp:GridView>
    <br />
</asp:Content>

