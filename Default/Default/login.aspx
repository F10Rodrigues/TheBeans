<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Default.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Login ID="Login1" runat="server" FailureText="Login Inválido! Tente novamente." LoginButtonText="Entrar" OnAuthenticate="Login1_Authenticate" PasswordLabelText="Senha:" RememberMeText="Lembre-me das credenciais da próxima vez" TitleText="Entre com suas credenciais" UserNameLabelText="Usuário:">
        </asp:Login>
    
    </div>
    </form>
</body>
</html>
