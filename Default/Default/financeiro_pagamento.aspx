<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="financeiro_pagamento.aspx.cs" Inherits="Default.financeiro_pagamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div>
        <asp:Button class="btn btn-success" ID="btn_Voltar" runat="server" OnClick="btn_Voltar_Click" Text="VOLTAR" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_Sair" runat="server" OnClick="btn_Sair_Click" Text="SAIR" />
    </div>
    <br />

    <div>
        <asp:GridView CssClass="grid" ID="grid_pag" runat="server" AutoGenerateColumns="False" OnRowDataBound="grid_pag_RowDataBound">
            <Columns>
                <asp:BoundField DataField="id_pagamento" HeaderText="ID" />
                <asp:BoundField DataField="vencimento" HeaderText="DATA VENCIMENTO" />
                <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                <asp:BoundField DataField="numero" HeaderText="NUMERO" />
                <asp:BoundField DataField="serie" HeaderText="SERIE" />
                <asp:BoundField DataField="total" HeaderText="TOTAL" />
                <asp:BoundField DataField="observacao" HeaderText="OBSERVAÇÃO" />
                <asp:BoundField DataField="pago" HeaderText="PAGO ?" />
            </Columns>
        </asp:GridView>
    </div>

    <div>
        <asp:Button class="btn btn-success" ID="btn_Pagar" runat="server" Text="PAGAR" />
    </div>
</asp:Content>
