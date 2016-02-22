<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="PracticaHAS._Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Página de Bienvenida</h1>
        <table align="center">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Nombre Usuario:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="BoxUsuario" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="BoxUsuario" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="BoxUsuario" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#993300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Inserte un E-Mail válido</asp:RegularExpressionValidator>
                </td>
            </tr>
             <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="PassWord:"></asp:Label>
                 </td>
                <td>
                    <asp:TextBox ID="BoxPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="BoxPass" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                 </td>
            </tr>
             <tr>
                <td colspan="2">
                    <asp:Button ID="ButtonLogIn" runat="server" Text="Iniciar Sesión" Width="236px" />
                 </td>
            </tr>
             <tr>
                <td colspan="2">
                    <a href="/Registro.aspx">¿No tienes cuenta? Regístrate.</a>
</td>
            </tr>
             <tr>
                <td colspan="2">
                    <a href="/CambiarPassword.aspx">Cambiar contraseña.</a></td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
