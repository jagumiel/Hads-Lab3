Public Class Confirmar
    Inherits System.Web.UI.Page


    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Dim miConfirmacion As New Funciones.DB_Logic
        Dim miNumero As Single = Request.QueryString("NumConf")
        Dim confirmado As String = "Usted ha sido dado de alta."
        Dim No_Confirmado As String = "Usted NO ha sido dado de alta."


        If (miConfirmacion.ConfirmarUsuario(miNumero)) Then
            LabelResultado.Text = confirmado
            LabelResultado.ForeColor = Drawing.Color.Aqua
        Else
            LabelResultado.Text = No_Confirmado
            LabelResultado.ForeColor = Drawing.Color.DarkRed
        End If



    End Sub

End Class