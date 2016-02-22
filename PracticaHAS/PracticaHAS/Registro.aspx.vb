Public Class Registro
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Protected Sub ButtonRegistrar_Click(ByVal sender As Object, ByVal e As EventArgs) Handles ButtonRegistrar.Click
        'Cogemos los valores
        Dim enviarConfirmacion As Boolean = True
        Dim correo As String = BoxMail.Text
        Dim nombre As String = BoxNombre.Text
        Dim apellido1 As String = BoxApellido1.Text
        Dim apellido2 As String = BoxApellido2.Text
        Dim apellidos As String = apellido1 '& " " & apellido2
        Dim dni As String = BoxDNI.Text
        Dim pass As String = BoxPass.Text
        Dim pregunta As Integer = ListaPreguntas.SelectedValue
        Dim respuesta As String = BoxRespuesta.Text
        Dim miConfirmacion As New Funciones.MisFunciones
        Dim valor As Single = miConfirmacion.NumConf

        'Llamamos a la funcion registrar
        'Try
        Dim miRegistro As New Funciones.DB_Logic
        enviarConfirmacion = miRegistro.RegistrarUsuario(correo, nombre, apellidos, dni, pass, pregunta, respuesta, valor)
        'el metodo devuelve un booleano
        If (enviarConfirmacion = False) Then
            MsgBox("No se ha podido registrar el usuario")
        End If
        'Catch ex As Exception
        'enviarConfirmacion = False
        'MsgBox("Ha ocurrido un error a la hora de registrar su usuario")
        'End Try

        'Enviamos el número de confirmación al usuario
        If (enviarConfirmacion) Then
            Try
                Dim destinatario As String = BoxMail.Text
                Dim link As String = ("http://localhost:56338/Confirmar.aspx?NumConf=" & valor)
                Dim titulo As String = "Resultado de su registro"
                miConfirmacion.sendMail(destinatario, titulo, link)
                Throw New System.Net.WebException
            Catch ex As System.Net.WebException
                MsgBox("Error de envío. Ha ocurrido una excepción del tipo:" & vbCrLf & ex.Message)
            End Try
        End If
    End Sub

End Class