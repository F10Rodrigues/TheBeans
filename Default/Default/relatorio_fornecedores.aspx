<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="relatorio_fornecedores.aspx.cs" Inherits="Default.relatorio_fornecedores" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Button class="btn btn-success" ID="btn_voltar" runat="server" Text="Voltar" OnClick="btn_voltar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_sair" runat="server" Text="SAIR" OnClick="btn_sair_Click1" /><br /><br />
    </div>
    <br />

    <div>
        <asp:GridView CssClass="grid" ID="grid_consulta_forn" runat="server" AutoGenerateColumns="False">
            <Columns>
                <asp:BoundField HeaderText="CNPJ" DataField="cnpj" />
                <asp:BoundField HeaderText="I.E." DataField="ie" />
                <asp:BoundField HeaderText="RAZÃO SOCIAL" DataField="razao_social" />
                <asp:BoundField HeaderText="NUMERO" DataField="numero" />
                <asp:BoundField HeaderText="TELEFONE" DataField="telefone" />
                <asp:BoundField DataField="celular" HeaderText="CELULAR" />
                <asp:BoundField DataField="cep" HeaderText="CEP" />
                <asp:BoundField HeaderText="ENDEREÇO" DataField="endereco" />
                <asp:BoundField DataField="numero" HeaderText="NUMERO" />
                <asp:BoundField DataField="bairro" HeaderText="BAIRRO" />
                <asp:BoundField DataField="cidade" HeaderText="CIDADE" />
                <asp:BoundField DataField="estado" HeaderText="ESTADO" />
                <asp:BoundField HeaderText="E-MAIL" DataField="email" />
            </Columns>
        </asp:GridView>
    </div>
    <br />
    <br />
</asp:Content>