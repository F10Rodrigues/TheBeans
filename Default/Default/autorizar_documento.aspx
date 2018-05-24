<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="autorizar_documento.aspx.cs" Inherits="Default.autorizar_documento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
       
    <div>
            <asp:Button class="btn btn-success" ID="btn_Voltar" runat="server" OnClick="btn_Voltar_Click" Text="VOLTAR" />
            &nbsp;<asp:Button class="btn btn-success" ID="btn_Sair" runat="server" OnClick="btn_Sair_Click" Text="SAIR" />
    </div>
    <br />

    <div>
        <asp:GridView CssClass="grid" ID="grid_autorizar" runat="server" AutoGenerateColumns="False" OnRowDataBound="grid_autorizar_RowDataBound">
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
        </asp:GridView>
    </div>

    <div>
    </div>

</asp:Content>
