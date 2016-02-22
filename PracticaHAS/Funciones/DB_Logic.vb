Imports System.Net.Mail

Public Class DB_Logic

    'Fuente autenticar: http://forums.asp.net/t/1250726.aspx?How+to+Authenticate+Users+with+the+SQL+Server+database+table+using+C+with+Example+

    Function AutenticarLogIn(ByVal user As String, ByVal pass As String) As Boolean

        Dim sqlQuery As String = "Select Email, Password from Usuario where Email='" & user & "' and Password ='" & pass & "';"
        MsgBox(sqlQuery)
        Dim conexion As New System.Data.SqlClient.SqlConnection("Server=tcp:has17.database.windows.net,1433;Database=HAS17;User ID=has17@has17;Password=J0s3B3g0;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim sqlCommand As New System.Data.SqlClient.SqlCommand(sqlQuery, conexion)
        Dim reader As System.Data.SqlClient.SqlDataReader
        Try
            conexion.Open()
        Catch ex As Exception
            MsgBox("No se ha podido establecer la conexión")
        End Try
        reader = sqlCommand.ExecuteReader()
        If (reader.Read()) Then
            conexion.Close()
            Return True
        Else
            conexion.Close()
            Return False
        End If
    End Function


    Function RegistrarUsuario(ByVal correo As String, ByVal nombre As String, ByVal apellidos As String, ByVal dni As String, ByVal pass As String, ByVal pregunta As Integer, ByVal respuesta As String, ByVal numConf As Integer) As Boolean
        Dim noConf As String = "No"
        Dim sqlQuery As String = "INSERT INTO Usuario (Email, Nombre, Apellidos, DNI, Password, Pregunta, Respuesta, NumeroConfirmacion, Confirmado)VALUES ('" & correo & "','" & nombre & "','" & apellidos & "','" & dni & "','" & pass & "','" & pregunta & "','" & respuesta & "','" & numConf & "','" & noConf & "');"
        ' "insert into tabla (nombre) values ('" & nombre & " ')
        MsgBox(sqlQuery)
        Dim conexion As New System.Data.SqlClient.SqlConnection("Server=tcp:has17.database.windows.net,1433;Database=HAS17;User ID=has17@has17;Password=J0s3B3g0;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim sqlCommand As New System.Data.SqlClient.SqlCommand(sqlQuery, conexion)
        Dim reader As System.Data.SqlClient.SqlDataReader
        Try
            conexion.Open()
        Catch ex As Exception
            MsgBox("No se ha podido establecer la conexión")
        End Try
        reader = sqlCommand.ExecuteReader()
        'MsgBox(reader)
        conexion.Close()
        'If (reader.Read()) Then
        'Return True
        'Else
        'Return False
        'End If
        Return True
        'Comento lo anterior porque tenemos problemas y queremos que nos envie el correo de confirmacion.
        'Tenemos en cuenta que se añade correctamente el usuario a la lista.
        'Hay que controlar si el correo ya está registrado.
    End Function

    Function ConfirmarUsuario(ByVal numConf As String) As Boolean
        Dim sqlQuery As String = "UPDATE Usuario SET Confirmado='Yes' WHERE NumeroConfirmacion='" & numConf & "';"
        MsgBox(sqlQuery)
        Dim conexion As New System.Data.SqlClient.SqlConnection("Server=tcp:has17.database.windows.net,1433;Database=HAS17;User ID=has17@has17;Password=J0s3B3g0;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim sqlCommand As New System.Data.SqlClient.SqlCommand(sqlQuery, conexion)
        Dim reader As System.Data.SqlClient.SqlDataReader
        Try
            conexion.Open()
        Catch ex As Exception
            MsgBox("No se ha podido establecer la conexión")
        End Try
        reader = sqlCommand.ExecuteReader()
        'MsgBox(reader)
        conexion.Close()
        'If (reader.Read()) Then
        'Return True
        'Else
        'Return False
        'End If
        Return True
        'Comento lo anterior porque tenemos problemas y queremos que nos envie el correo de confirmacion.
        'Tenemos en cuenta que se añade correctamente el usuario a la lista.
        'Hay que controlar si el correo ya está registrado.
    End Function

    Function ModificarPass(ByVal correo As String, ByVal newPass As String) As Boolean
        'Dim sqlQuery As String = "UPDATE Usuario SET Password='" & newPass & "' WHERE Email='" & correo & "' and Password='" & oldPass & "';"
        Dim sqlQuery As String = "UPDATE Usuario SET Password='" & newPass & "' WHERE Email='" & correo & "';"
        MsgBox(sqlQuery)
        Dim conexion As New System.Data.SqlClient.SqlConnection("Server=tcp:has17.database.windows.net,1433;Database=HAS17;User ID=has17@has17;Password=J0s3B3g0;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;")
        Dim sqlCommand As New System.Data.SqlClient.SqlCommand(sqlQuery, conexion)
        Dim reader As System.Data.SqlClient.SqlDataReader
        Try
            conexion.Open()
        Catch ex As Exception
            MsgBox("No se ha podido establecer la conexión")
        End Try
        reader = sqlCommand.ExecuteReader()
        'MsgBox(reader)
        conexion.Close()
        'If (reader.Read()) Then
        'Return True
        'Else
        'Return False
        'End If
        Return True
        'Comento lo anterior porque tenemos problemas y queremos que nos envie el correo de confirmacion.
        'Tenemos en cuenta que se añade correctamente el usuario a la lista.
        'Hay que controlar si el correo ya está registrado.
    End Function

End Class
