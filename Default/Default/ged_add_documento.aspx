<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="ged_add_documento.aspx.cs" Inherits="Default.ged_add_documento" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <asp:Button class="btn btn-success" ID="btn_Concluir" runat="server" Text="CONCLUIR" OnClick="btn_Concluir_Click" ValidationGroup="validacao" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_Limpar" runat="server" Text="LIMPAR" OnClick="btn_Limpar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btnVoltar" runat="server" Text="VOLTAR" OnClick="btnVoltar_Click" />
        &nbsp;<asp:Button class="btn btn-success" ID="btn_Sair" runat="server" Text="SAIR" OnClick="btn_Sair_Click" />
        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="validacao" />
    </div>
    <br />

    <div>
        <asp:TextBox ID="txt_ID" runat="server" Visible="False"></asp:TextBox>
        <asp:Label ID="lbl_NumeroDoc" runat="server" Text="NUMERO DOCUMENTO"></asp:Label>
        <asp:TextBox ID="txt_NumeroDoc" runat="server" Width="178px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorNumeroDoc" runat="server" ControlToValidate="txt_NumeroDoc" ErrorMessage="Campo numero documento não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <asp:Label ID="lbl_Serie" runat="server" Text="SERIE"></asp:Label>
        <asp:TextBox ID="txt_Serie" runat="server" Width="180px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorSERIE" runat="server" ControlToValidate="txt_Serie" ErrorMessage="Campo serie não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <br /><br />
        <asp:Label ID="lbl_Cnpj" runat="server" Text="CNPJ"></asp:Label>
        <asp:TextBox ID="txt_CNPJ" runat="server" Width="230px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorCNPJ" runat="server" ControlToValidate="txt_CNPJ" ErrorMessage="Campo CNPJ não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="lbl_Fornecedor" runat="server" Text="FORNECEDOR"></asp:Label>
        <asp:TextBox ID="txt_Fornecedor" runat="server" Width="189px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorFornecedor" runat="server" ControlToValidate="txt_Fornecedor" ErrorMessage="Campo fornecedor não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <br />
        <br />
        &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" />
        &nbsp;<asp:Label ID="lbl_Msg" runat="server"></asp:Label>
    </div>
    
    <div class="grid">

        <asp:Label ID="Label5" runat="server" Text="Documentos"></asp:Label>
        <br />
        <asp:GridView ID="grid_DocumentosGed" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="grid_DocumentosGed_PageIndexChanging" OnRowCommand="grid_DocumentosGed_RowCommand">
            <Columns>
                <asp:BoundField DataField="id_documento" HeaderText="ID" />
                <asp:BoundField DataField="numero_documento" HeaderText="Numero Documento" />
                <asp:BoundField DataField="serie" HeaderText="Serie" />
                <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                <asp:BoundField DataField="fornecedor" HeaderText="Fornecedor" />
                <asp:BoundField DataField="arquivo" HeaderText="Arquivo" />
                <asp:ButtonField CommandName="btAlterar" HeaderText="Alterar" Text="Alterar" />
                <asp:ButtonField CommandName="btRemover" HeaderText="Remover" Text="Remover" />
            </Columns>
        </asp:GridView>
        <br />

    </div>

</asp:Content>
