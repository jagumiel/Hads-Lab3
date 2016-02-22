Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonLogIn_Click(sender As Object, e As EventArgs) Handles ButtonLogIn.Click
        '1.-Recogemos los valores que ha introducido el usuario
        Dim databaseLogic As New Funciones.DB_Logic
        Dim user As String = BoxUsuario.Text
        Dim pass As String = BoxPass.Text
        '2.-Mandamos una query para ver si es correcto.
        'Nota:Hacer el hash
        If (databaseLogic.AutenticarLogIn(user, pass) = True) Then
            MsgBox("Login Correcto")
            Response.Redirect("ApliUsuRegis.aspx")
        Else
            MsgBox("Login Incorrecto")
        End If
    End Sub
End Class