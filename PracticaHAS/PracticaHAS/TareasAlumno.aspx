<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="TareasAlumno.aspx.vb" Inherits="PracticaHAS.TareasAlumno" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Text="Seleccionar Asignatura (solo se muestran aquellas en las que está matriculado):"></asp:Label>
    
        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource2" DataTextField="Nombre" DataValueField="Nombre">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString %>" SelectCommand="SELECT [Nombre] FROM [Asignaturas]"></asp:SqlDataSource>
    
    </div>
        <asp:CheckBoxList ID="CheckBoxList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="codigo" DataValueField="codigo">
        </asp:CheckBoxList>
        <asp:CheckBoxList ID="CheckBoxList2" runat="server" DataSourceID="SqlDataSource3" DataTextField="Descripcion" DataValueField="Descripcion">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString %>" SelectCommand="SELECT [Descripcion] FROM [TareasGenericas]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString %>" SelectCommand="SELECT [codigo] FROM [Asignaturas]"></asp:SqlDataSource>
        <asp:CheckBoxList ID="CheckBoxList3" runat="server" DataSourceID="SqlDataSource4" DataTextField="HEstimadas" DataValueField="HEstimadas">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource4" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString %>" SelectCommand="SELECT [HEstimadas] FROM [TareasGenericas]"></asp:SqlDataSource>
        <asp:CheckBoxList ID="CheckBoxList4" runat="server" DataSourceID="SqlDataSource5" DataTextField="TipoTarea" DataValueField="TipoTarea">
        </asp:CheckBoxList>
        <asp:SqlDataSource ID="SqlDataSource5" runat="server" ConnectionString="<%$ ConnectionStrings:Lab4ConnectionString %>" SelectCommand="SELECT [TipoTarea] FROM [TareasGenericas]"></asp:SqlDataSource>
    </form>
</body>
</html>
