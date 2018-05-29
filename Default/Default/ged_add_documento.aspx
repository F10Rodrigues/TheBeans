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

    <div class="border border-success">
        <br />
        <asp:TextBox ID="txt_ID" runat="server" Visible="False"></asp:TextBox>
        &nbsp;<br />
        <asp:Label ID="lbl_NumeroDoc" runat="server" Text="NUMERO DOCUMENTO"></asp:Label>
        <asp:TextBox ID="txt_NumeroDoc" runat="server" Width="178px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorNumeroDoc" runat="server" ControlToValidate="txt_NumeroDoc" ErrorMessage="Campo numero documento não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="lbl_Serie" runat="server" Text="SERIE"></asp:Label>
        <asp:TextBox ID="txt_Serie" runat="server" Width="180px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorSERIE" runat="server" ControlToValidate="txt_Serie" ErrorMessage="Campo serie não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="lbl_Cnpj" runat="server" Text="CNPJ"></asp:Label>
        <asp:TextBox ID="txt_CNPJ" runat="server" Width="265px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorCNPJ" runat="server" ControlToValidate="txt_CNPJ" ErrorMessage="Campo CNPJ não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        &nbsp;<asp:Label ID="lbl_Fornecedor" runat="server" Text="FORNECEDOR"></asp:Label>
        <asp:TextBox ID="txt_Fornecedor" runat="server" Width="290px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="validatorFornecedor" runat="server" ControlToValidate="txt_Fornecedor" ErrorMessage="Campo fornecedor não preenchido" ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        &nbsp;<br />
        <br />
        &nbsp;<asp:FileUpload ID="FileUpload1" runat="server" Width="482px" />
        &nbsp;<asp:Label ID="lbl_Msg" runat="server"></asp:Label>

        <br />

        <br />
    </div>
    <br />
    
    
        <div>
            <asp:Label CssClass="text-success" ID="Label5" runat="server" Font-Size="Larger" Font-Bold="true" Text="DOCUMENTOS"></asp:Label>
        </div>
        <br />
    <div class="grid">
        <asp:GridView ID="grid_DocumentosGed" runat="server" AutoGenerateColumns="False" OnPageIndexChanging="grid_DocumentosGed_PageIndexChanging" OnRowCommand="grid_DocumentosGed_RowCommand" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#FFCC00" />
            <Columns>
                <asp:BoundField DataField="id_documento" HeaderText="ID" />
                <asp:BoundField DataField="numero_documento" HeaderText="NUMERO DOCUMENTO" />
                <asp:BoundField DataField="serie" HeaderText="SERIE" />
                <asp:BoundField DataField="cnpj" HeaderText="CNPJ" />
                <asp:BoundField DataField="fornecedor" HeaderText="FORNECEDOR" />
                <asp:BoundField DataField="arquivo" HeaderText="ARQUIVO" />
                <asp:ButtonField CommandName="btAlterar" HeaderText="ALTERAR" Text="ALTERAR" />
                <asp:ButtonField CommandName="btRemover" HeaderText="REMOVER" Text="REMOVER" />
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
        <br />

    </div>

</asp:Content>
