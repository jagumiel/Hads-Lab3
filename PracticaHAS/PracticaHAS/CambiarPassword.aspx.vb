Public Class CambiarPassword
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub



    Protected Sub ButtonConf_Click(sender As Object, e As EventArgs) Handles ButtonConf.Click
        Dim miConfirmacion As New Funciones.MisFunciones
        Dim miCambio As New Funciones.DB_Logic
        Dim destinatario As String = BoxEmail.Text
        Dim mensaje As String = BoxNuevaPass.Text
        Dim asunto As String = "Contraseña modificada"
        Dim correo As String = BoxEmail.Text
        Dim newPass = BoxNuevaPass.Text
        miConfirmacion.sendMail(destinatario, asunto, mensaje)
        miCambio.ModificarPass(correo, newPass)
        MsgBox("Se ha cambiado la contraseña. Revise su correo")
        Response.Redirect("/Inicio.aspx")
    End Sub
End Class