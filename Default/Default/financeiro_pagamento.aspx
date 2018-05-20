<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="financeiro_pagamento.aspx.cs" Inherits="Default.financeiro_pagamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>

        <asp:Button ID="btn_Voltar" runat="server" OnClick="btn_Voltar_Click" Text="VOLTAR" />
        <asp:Button ID="btn_Sair" runat="server" OnClick="btn_Sair_Click" Text="SAIR" />

    </div>

    <div>

        <asp:GridView ID="grid_pag" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="id_pagamento" HeaderText="ID" />
                <asp:BoundField DataField="vencimento" HeaderText="DATA VENCIMENTO" />
                <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                <asp:BoundField DataField="numero" HeaderText="NUMERO" />
                <asp:BoundField DataField="serie" HeaderText="SERIE" />
                <asp:BoundField DataField="total" HeaderText="TOTAL" />
                <asp:BoundField DataField="observacao" HeaderText="OBSERVAÇÃO" />
                <asp:BoundField DataField="autorizado" HeaderText="AUTORIZADO" />
            </Columns>
        </asp:GridView>

    </div>

    <div>
        <asp:Button ID="btn_pagar" runat="server" Text="PAGAR" OnClick="btn_autorizar_Click" />
    </div>
</asp:Content>
