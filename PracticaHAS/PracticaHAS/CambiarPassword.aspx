<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="CambiarPassword.aspx.vb" Inherits="PracticaHAS.CambiarPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <h1>Cambiar Contraseña</h1>

        <p>¿Desea cambiar la contraseña?</p>
        <a href="Inicio.aspx">Volver</a>
       

        <table align="center">
                        <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Email:"></asp:Label>
                </td>
                <td>
    
                    <asp:TextBox ID="BoxEmail" runat="server" TextMode="Email"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="BoxEmail" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
    
                </td>
            </tr>
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Nueva Contraseña:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="BoxNuevaPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="BoxNuevaPass" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="BoxNuevaPass" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#993300" ValidationExpression="(?=^.{8,}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s)[0-9a-zA-Z!@#$%^&amp;*()]*$">Contraseña Incorrecta. (0aAXXXXX )</asp:RegularExpressionValidator>
                </td>
            </tr>
                        <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Confirmar Contraseña:"></asp:Label>
                </td>
                <td>
                    <asp:TextBox ID="BoxConfPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="BoxConfPass" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="BoxConfPass" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#993300" ValidationExpression="(?=^.{8,}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s)[0-9a-zA-Z!@#$%^&amp;*()]*$">Contraseña Incorrecta. (0aAXXXXX )</asp:RegularExpressionValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="CompareValidator" Font-Size="Large" ForeColor="#993300" ControlToCompare="BoxNuevaPass" ControlToValidate="BoxConfPass">Las contraseñas no coinciden.</asp:CompareValidator>
                </td>
            </tr>
                        <tr>
                <td colspan="2">
                    <asp:Button ID="ButtonConf" runat="server" Text="Confirmar" Width="269px" />
                </td>
            </tr>
    
    </div>
    </form>
</body>
</html>
