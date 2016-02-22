<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Registro.aspx.vb" Inherits="PracticaHAS.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 23px;
        }
        .auto-style2 {
            width: 671px;
        }
        .auto-style3 {
            height: 23px;
            width: 671px;
        }
        .auto-style4 {
            height: 30px;
        }
        .auto-style5 {
            width: 671px;
            height: 30px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <table align="center">
            <tr>
                <td>
                    <asp:Label ID="Label1" runat="server" Text="Correo Usuario:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="BoxMail" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="BoxMail" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="BoxMail" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#993300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">Introduzca un email válido.</asp:RegularExpressionValidator>
                </td>
            </tr>
        <tr>
                <td>
                    <asp:Label ID="Label2" runat="server" Text="Nombre:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="BoxNombre" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="BoxNombre" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator8" runat="server" ControlToValidate="BoxNombre" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#993300" ValidationExpression="(\w+\w+)">Mínimo 2 caracteres</asp:RegularExpressionValidator>
                </td>
            </tr>
        <tr>
                <td>
                    <asp:Label ID="Label3" runat="server" Text="Primer Apellido:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="BoxApellido1" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="BoxApellido1" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator9" runat="server" ControlToValidate="BoxApellido1" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#993300" ValidationExpression="(\w+\w+)">Mínimo 2 caracteres</asp:RegularExpressionValidator>
                </td>
            </tr>
        <tr>
                <td class="auto-style4">
                    <asp:Label ID="Label4" runat="server" Text="Segundo Apellido:"></asp:Label>
                </td>
                <td class="auto-style5">
                    <asp:TextBox ID="BoxApellido2" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="BoxApellido2" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator10" runat="server" ControlToValidate="BoxApellido2" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#993300" ValidationExpression="(\w+\w+)">Mínimo 2 caracteres</asp:RegularExpressionValidator>
                </td>
            </tr>
        <tr>
                <td style="margin-left: 40px">
                    <asp:Label ID="Label5" runat="server" Text="D.N.I.:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="BoxDNI" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="BoxDNI" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ControlToValidate="BoxDNI" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#993300" ValidationExpression="(\d{8})([A-Z]{1})">Introduzca un D.N.I. válido, sin espacios</asp:RegularExpressionValidator>
                </td>
            </tr>
        <tr>
                <td class="auto-style1" style="margin-left: 40px">
                    <asp:Label ID="Label6" runat="server" Text="Contraseña"></asp:Label>
                </td>
                <td class="auto-style3">
                    <asp:TextBox ID="BoxPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="BoxPass" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator7" runat="server" ControlToValidate="BoxPass" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#993300" ValidationExpression="(?=^.{8,}$)(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?!.*\s)[0-9a-zA-Z!@#$%^&amp;*()]*$">Contraseña Incorrecta. (0aAXXXXX )</asp:RegularExpressionValidator>
                </td>
            </tr>
        <tr>
                <td style="margin-left: 40px">
                    <asp:Label ID="Label7" runat="server" Text="Confirmar Contraseña:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="BoxConfPass" runat="server" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ControlToValidate="BoxConfPass" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="BoxPass" ControlToValidate="BoxConfPass" ErrorMessage="CompareValidator" Font-Size="Large" ForeColor="#993300">Las contraseñas no coinciden.</asp:CompareValidator>
                </td>
            </tr>
        <tr>
                <td style="margin-left: 40px">
                    <asp:Label ID="Label8" runat="server" Text="Pregunta secreta:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:DropDownList ID="ListaPreguntas" runat="server">
                        <asp:ListItem Value="0">Nombre de una profesora</asp:ListItem>
                        <asp:ListItem Value="1">Nombre de mascota</asp:ListItem>
                        <asp:ListItem Value="2">Nombre de tu madre</asp:ListItem>
                        <asp:ListItem Value="3">Equipo deportivo preferido</asp:ListItem>
                        <asp:ListItem Value="4">Marca de ropa</asp:ListItem>
                    </asp:DropDownList>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ControlToValidate="ListaPreguntas" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                </td>
            </tr>
        <tr>
                <td style="margin-left: 40px">
                    <asp:Label ID="Label9" runat="server" Text="Respuesta:"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="BoxRespuesta" runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ControlToValidate="BoxRespuesta" ErrorMessage="RequiredFieldValidator" Font-Size="Large" ForeColor="#993300">*</asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="RegularExpressionValidator11" runat="server" ControlToValidate="BoxRespuesta" ErrorMessage="RegularExpressionValidator" Font-Size="Large" ForeColor="#993300" ValidationExpression="(\w+\w+)">Mínimo 2 caracteres</asp:RegularExpressionValidator>
                </td>
            </tr>
        <tr>
                <td style="margin-top: 40px" colspan="2">
                    <asp:Button ID="ButtonRegistrar" runat="server" style="text-align: center" Text="Registrar" />
                </td>
            </tr>
        <tr>
                <td style="margin-left: 40px">
                    &nbsp;</td>
                <td class="auto-style2">
                    &nbsp;</td>
            </tr>
        </table>
    </div>
    </form>
</body>
</html>
