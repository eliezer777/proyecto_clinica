Imports System.Data.Sql
Imports System.Data.SqlDbType
Imports System.Data
Imports ClinicaNET.sql_conect
Public Class _Default
    Inherits System.Web.UI.Page

    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub
    'Protected Sub conectar()
    '    Try
    '        Dim dt As New DataTable
    '        Dim ejecutar As New sql_conect
    '        dt = ejecutar.sql_consulta("select * from seg_usuario")
    '        Session.Add("usuario", dt)


    '    Catch ex As Exception

    '    End Try
    'End Sub

    Protected Sub btn_click(ByVal sender As Object, ByVal e As System.EventArgs) Handles enviar.Click
        '  conectar()
        'unicamente son conexiones de prueba a la base de datos  para logear el usuario.
        'Dim prueba As Boolean = True
        'Dim a As New sql_conect
        'prueba = a.conn

        'If prueba = False Then
        '    MsgBox("error")
        'Else
        '    MsgBox("conexion correcta")
        'End If

        Dim dt As New DataTable
        Dim cnn As New conexion

        Dim txt_usuario2 As String
        Dim txt_contraseña2 As String
        txt_usuario2 = Me.txt_usuario.Text
        txt_contraseña2 = Me.txt_contraseña.Text.ToString
        Dim stringSQL As String = "select * from usuarios where usuario = '" & txt_usuario2.ToString & "'"

        dt = cnn.ConsultaSQL(stringSQL)
        Try
            Me.error.Visible = False
            If dt.Rows(0).Item("pass").ToString = txt_contraseña2.ToString And txt_usuario2.ToString = dt.Rows(0).Item("usuario").ToString Then
                Session.Add("usuario", Me.txt_usuario.Text)

                Response.Redirect("/Vista/Inicio.aspx")
            Else
                lbl_error.Text = "¡Error Usuario o Contraseña Erroneos!"
                Me.error.Visible = True
            End If

        Catch ex As Exception
            Me.error.Visible = True
            lbl_error.Text = "¡Error Usuario o Contraseña Erroneos!"
        End Try



    End Sub
    Protected Sub btn_click2(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_registrar.Click

        Response.Redirect("/Vista/RegistrarUsuario.aspx")
    End Sub
End Class