Imports System.Net.Mail

Public Class MisFunciones
    Public Function NumConf() As Single
        Randomize()
        NumConf = CLng(Rnd() * 9000000) + 1000000
    End Function

    Public Function SimulacionVerificar(ByVal NumConf As Single) As Boolean
        Dim valor As Single = NumConf
        If (valor Mod 2 = 0) Then
            Return True
        Else
            Return False
        End If
    End Function

    Sub sendMail(ByVal direccion As String, ByVal titulo As String, ByVal mensaje As String)

        Dim SmtpServer As New SmtpClient("smtp.gmail.com", 587)
        'puerto que usa gmail: 465
        SmtpServer.Credentials = New Net.NetworkCredential("hasjosebego@gmail.com", "ijlgkiwksuzhkklm")
        SmtpServer.EnableSsl = True
        Dim mail As New MailMessage("hasjosebego@gmail.com", direccion, titulo, mensaje)
        SmtpServer.Send(mail)
    End Sub

End Class
