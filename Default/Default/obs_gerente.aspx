<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="obs_gerente.aspx.cs" Inherits="Default.obs_gerente1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../estilo.css" />
</head>
<body>
    <form id="form1" runat="server">
    
        <div class="obsgerente">    
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" ValidationGroup="validacao" />
            <br />
            <asp:Label ID="Label1" runat="server" Text="OBSERVAÇÃO."></asp:Label>
            <br />
        <asp:TextBox ID="txt_obs" runat="server" Width="523px"></asp:TextBox>
            <asp:RequiredFieldValidator ID="validatorObservacao" runat="server" ControlToValidate="txt_obs" ErrorMessage="CAMPO OBSERVAÇÃO NÃO INFORMADO." ForeColor="Red" ValidationGroup="validacao">*</asp:RequiredFieldValidator>
        <br />
        <asp:Button ID="Button1" runat="server" Text="OK" OnClick="Button1_Click" ValidationGroup="validacao" />
    
    </div>
    </form>
</body>
</html>
