<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="pragramacao_pagamento.aspx.cs" Inherits="Default.pragramacao_pagamento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="validacao" />
            <br />
            <asp:TextBox ID="txt_IDpag" runat="server"></asp:TextBox>

            <br />
            <br />
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

    </div>

    <div>
        <asp:Button ID="btn_Concluir" runat="server" Text="CONCLUIR" OnClick="btn_Concluir_Click" ValidationGroup="validacao" />

        <asp:Button ID="btn_Limpar" runat="server" OnClick="btn_Limpar_Click" Text="LIMPAR" />
        <asp:Button ID="btn_Voltar" runat="server" OnClick="btn_Voltar_Click" Text="VOLTAR" />
        <asp:Button ID="btn_Sair" runat="server" OnClick="btn_Sair_Click" Text="SAIR" />

    </div>

    <div>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField DataField="id_programacao" HeaderText="ID" />
                <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                <asp:BoundField DataField="data_emissao" HeaderText="DATA EMISSÃO" />
                <asp:BoundField DataField="numero" HeaderText="NUMERO" />
                <asp:BoundField DataField="serie" HeaderText="SERIE" />
                <asp:BoundField DataField="data_entrada" HeaderText="DATA ENTRADA" />
                <asp:BoundField DataField="data_vencimento" HeaderText="DATA VENCIMENTO" />
                <asp:BoundField DataField="total" HeaderText="TOTAL" />
            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
