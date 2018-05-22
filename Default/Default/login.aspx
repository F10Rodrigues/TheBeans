<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="Default.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link rel="stylesheet" href="../estilo.css" />


</head>
<body>
    <form id="form1" runat="server">

        <div class="logo">
             <img src="Imagens/deere.logo.ag.hq.png" />
        </div>
        
            <asp:Login ID="Login1" CssClass="login" runat="server" FailureText="Login Inválido! Tente novamente." LoginButtonText="Entrar" OnAuthenticate="Login1_Authenticate" PasswordLabelText="Senha:" RememberMeText="Lembre-me das credenciais da próxima vez" TitleText="Entre com suas credenciais" UserNameLabelText="Usuário:" ForeColor="Black">
                <LoginButtonStyle BackColor="#009933" BorderStyle="Groove" ForeColor="White" />
            </asp:Login>
    </form>

    <div class="rodape">
        
    </div>
    <div class="rodape2">
        
    </div>
</body>
</html>
