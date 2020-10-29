Public Class RegistrarUsuario
    Inherits System.Web.UI.Page
    Dim cnn As New conexion
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

    Function validar_usuario() As Boolean

        Me.error.Visible = False
        Me.correcto.Visible = False
        Dim dt As New DataTable
        Dim consulta As String = "select usuario from usuarios where usuario ='" & txt_usuario.Text & "'"
        Dim correcto As Boolean = True
        Try
            dt = cnn.ConsultaSQL(consulta)

        Catch ex As Exception

            correcto = False

        End Try

        If correcto = True Then

            If dt.Rows.Count > 0 Then

                Me.error.Visible = True
                Me.correcto.Visible = False

                lbl_error.Text = "¡El nombre de usuario ingresado ya existe!"
                Return False


            Else
                Me.error.Visible = False
                lbl_error.Text = "¡El nombre de usuario ingresado ya existe!"
                Return True


            End If
        Else
            Return correcto
        End If

    End Function

    Function validar_datos() As Boolean
        Dim a As Boolean = True
        Me.error.Visible = False
        Me.correcto.Visible = False
        If txt_usuario.Text = "" Or txt_Telefono.Text = "" Or txt_apellido_1.Text = "" Or txt_apellido_2.Text = "" Or txt_correo.Text = "" Or txt_direccion.Text = "" Or txt_edad.Text = "" Or txt_nombre_1.Text = "" Or txt_nombre_2.Text = "" Then
            lbl_error.Text = "Hay algunos parametros vacios, favor llenar datos. "
            If (txt_password.Text = txt_password2.Text) And txt_password.Text.Length > 0 Then
                Me.error.Visible = False

                Return a
            Else
                a = False
                Me.error.Visible = True
                lbl_error.Text = lbl_error.Text & "  Las contraseñas no coinciden"
                Return a
            End If
        Else
            If (txt_password.Text = txt_password2.Text) And txt_password.Text.Length > 0 Then
                Me.error.Visible = False

                Return a
            Else
                a = False
                Me.error.Visible = True

                lbl_error.Text = "Las contraseñas no coinciden "
                Return a
            End If

        End If

    End Function

    Protected Sub btn_guardar(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Guardar_Usuario.Click

        Dim val As Boolean = True

        val = validar_usuario()
        If val = False Then
            Exit Sub
        End If
        val = validar_datos()
        If val = False Then
            Me.error.Visible = True
            Exit Sub
        End If


        Try
            'ingresar valores
            Dim ingreso As Boolean
            Dim StringSQL As String
            StringSQL = "insert into info_usuario (cod_usuario, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, edad, fecha_nacimiento) values ((select isnull ((max(cod_usuario)+1),1)from info_usuario),'" & txt_nombre_1.Text & "', '" & txt_nombre_2.Text & "','" & txt_apellido_1.Text & "','" & txt_apellido_2.Text & "','" & txt_edad.Text & "','" & txt_fecha_nac.Text & "')"
            StringSQL = StringSQL + "insert into info_usuario_add (cod_usuario, telefono, correo_electronico, direccion) values((select isnull ((max(cod_usuario)),1) from info_usuario)," & txt_Telefono.Text & ",'" & txt_correo.Text & "','" & txt_direccion.Text & "')"
            StringSQL = StringSQL + " insert into usuarios (usuario, pass, habilitado, tipo_usuario, fecha_creacion, fecha_modificacion, cod_tipo, cod_usuario_1) values ('" & txt_usuario.Text & "','" & txt_password.Text & "',1,1,getdate(),getdate(),1,(select max(cod_usuario) from info_usuario))"
            ingreso = cnn.accionSQL(StringSQL)

            If ingreso = True Then
                Me.correcto.Visible = True

            Else
                Me.error.Visible = True
                lbl_error.Text = "¡Error al registrar el usuario!"
                Me.correcto.Visible = False

            End If
        Catch ex As Exception

            Me.error.Visible = True
            lbl_error.Text = "¡Error al registrar el usuario!"
            Me.correcto.Visible = False

        End Try

        Me.regresar.Visible = True

    End Sub

    Protected Sub btn_regresar(ByVal sender As Object, ByVal e As System.EventArgs) Handles regresar.Click


        Response.Redirect("/Default.aspx")
    End Sub


End Class