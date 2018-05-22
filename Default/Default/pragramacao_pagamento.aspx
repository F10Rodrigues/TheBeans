<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="pragramacao_pagamento.aspx.cs" Inherits="Default.pragramacao_pagamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Button class="btn btn-success" ID="btn_Concluir" runat="server" Text="CONCLUIR" OnClick="btn_Concluir_Click" ValidationGroup="validacao" />
        <asp:Button class="btn btn-success" ID="btn_Limpar" runat="server" OnClick="btn_Limpar_Click" Text="LIMPAR" />
        <asp:Button class="btn btn-success" ID="btn_Voltar" runat="server" OnClick="btn_Voltar_Click" Text="VOLTAR" />
        <asp:Button class="btn btn-success" ID="btn_Sair" runat="server" OnClick="btn_Sair_Click" Text="SAIR" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="validacao" />
    </div>
    <br />

    <div>            
            <asp:TextBox ID="txt_IDpag" runat="server" Visible="False"></asp:TextBox>
            <asp:Label ID="Label1" runat="server" Text="CNPJ"></asp:Label>
            <asp:TextBox ID="txt_CNPJ" runat="server" Width="183px"></asp:TextBox>
            &nbsp;<asp:Label ID="Label2" runat="server" Text="I.E."></asp:Label>
            <asp:TextBox ID="txt_IE" runat="server" Width="171px"></asp:TextBox>
            &nbsp;<asp:Label ID="Label3" runat="server" Text="DATA EMISSÃO"></asp:Label>
            <asp:TextBox ID="txt_DataEmissao" runat="server" Width="164px"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="NUMERO"></asp:Label>
            <asp:TextBox ID="txt_Numero" runat="server" Width="175px"></asp:TextBox>
            <asp:Label ID="Label5" runat="server" Text="SERIE"></asp:Label>
            <asp:TextBox ID="txt_Serie" runat="server" Width="172px"></asp:TextBox>
            &nbsp;<asp:Label ID="Label6" runat="server" Text="DATA ENTRADA"></asp:Label>
            <asp:TextBox ID="txt_DataEntrada" runat="server" Width="127px"></asp:TextBox>
            <br />
            <br />
            &nbsp;<asp:Label ID="Label7" runat="server" Text="DATA VENCIMENTO"></asp:Label>
            <asp:TextBox ID="txt_DataVencimento" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorDataVencimento" runat="server" ControlToValidate="txt_DataVencimento" ErrorMessage="Campo Data Vencimento não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
            &nbsp;<asp:Label ID="Label8" runat="server" Text="TOTAL"></asp:Label>
            <asp:TextBox ID="txt_Total" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label9" runat="server" Text="OBSERVAÇÃO."></asp:Label>
            <asp:TextBox ID="txt_obs" runat="server" Width="523px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorObservacao" runat="server" ControlToValidate="txt_obs" ErrorMessage="CAMPO OBSERVAÇÃO NÃO INFORMADO." ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
            <br />
            <br />
    </div>
    <br />

    <div>
        <asp:GridView CssClass="grid" ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="id_programacao" HeaderText="ID" />
                <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                <asp:BoundField DataField="data_emissao" HeaderText="DATA EMISSÃO" />
                <asp:BoundField DataField="numero" HeaderText="NUMERO" />
                <asp:BoundField DataField="serie" HeaderText="SERIE" />
                <asp:BoundField DataField="data_entrada" HeaderText="DATA ENTRADA" />
                <asp:BoundField DataField="data_vencimento" HeaderText="DATA VENCIMENTO" />
                <asp:BoundField DataField="total" HeaderText="TOTAL" />
                <asp:BoundField DataField="observacao" HeaderText="OBSERVAÇÃO" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
