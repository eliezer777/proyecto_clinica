Public Class RegistrarUsuario
    Inherits System.Web.UI.Page
    Dim cnn As New conexion
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If IsPostBack = True Then

            Try
                Dim dt As DataTable
                dt = cnn.ConsultaSQL("select cod_empresa from empresas")

                Dim i As Integer = 0
                drp_empresa_modificar.Items.Clear()
                cod_empresanuevo.Items.Clear()

                While i < dt.Rows.Count
                    drp_empresa_modificar.Items.Add(dt.Rows(i).Item("cod_empresa").ToString)
                    cod_empresanuevo.Items.Add(dt.Rows(i).Item("cod_empresa").ToString)
                    i = i + 1

                End While
                dt = cnn.ConsultaSQL("select max(cod_empresa) cod_empresa from empresa")
                txt_cod_empresa_nuevo.Text = dt.Rows(0).Item("cod_empresa").ToString

            Catch ex As Exception

            End Try


        End If

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
            StringSQL = "insert into info_usuario (cod_usuario, primer_nombre, segundo_nombre, primer_apellido, segundo_apellido, edad, fecha_nacimiento,cod_empresa) values ((select isnull ((max(cod_usuario)+1),1)from info_usuario),'" & txt_nombre_1.Text & "', '" & txt_nombre_2.Text & "','" & txt_apellido_1.Text & "','" & txt_apellido_2.Text & "','" & txt_edad.Text & "','" & txt_fecha_nac.Text & "','" & Me.cod_empresanuevo.SelectedItem.Text & "')"
            StringSQL = StringSQL + "insert into info_usuario_add (cod_usuario, telefono, correo_electronico, direccion,cod_usuario_1) values((select isnull ((max(cod_usuario)),1) from info_usuario)," & txt_Telefono.Text & ",'" & txt_correo.Text & "','" & txt_direccion.Text & "',(select isnull ((max(cod_usuario)),1) from info_usuario))"
            StringSQL = StringSQL + " insert into usuarios (usuario, pass, habilitado, tipo_usuario, fecha_creacion, fecha_modificacion, cod_tipo, cod_usuario_1,cod_empresa) values ('" & txt_usuario.Text & "','" & txt_password.Text & "',1,1,getdate(),getdate(),1,(select max(cod_usuario) from info_usuario),'" & Me.cod_empresanuevo.SelectedItem.Text & "')"
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

    Protected Sub btn_agregaempresa(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_agregar_empresa.Click

        Dim stringSQL As String = "insert into empresas (Nombre,Razon_social,Direccion,NIT) values ('" & txt_nombre_empresa.Text & "','" & txt_razon_social.Text & "', '" & txt_direccion_empresa.Text & "','" & txt_nit_empresa.Text & "')"
        cnn.accionSQL(stringSQL)

    End Sub

    Protected Sub btn_atualizaempresas(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_modificar_empresa.Click
        Dim stringSQL As String = "update from empresas  set (Nombre = '" & txt_nombre_modificar.Text & "',Razon_social = '" & txt_razon_social_modificar.Text & "',Direccion= '" & txt_direccion_modificar.Text & "',NIT = '" & txt_nit_modificar.Text & "' where cod_empresa = '" & drp_empresa_modificar.SelectedItem.Text & "' )"
        cnn.accionSQL(stringSQL)

    End Sub

    'Protected Sub btn_eliminarempresas(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_eliminar_empresa.Click

    '    cnn.accionSQL("delete from empresas where cod_empresa = '" & drp_empresa_modificar.SelectedItem.Text & "'")
    'End Sub

    Protected Sub drp_empresas(ByVal sender As Object, ByVal e As System.EventArgs) Handles drp_empresa_modificar.SelectedIndexChanged

        Dim dt As New DataTable
        dt = cnn.ConsultaSQL("select * from empresas where cod_empresa = '" & Me.drp_empresa_modificar.SelectedItem.Text & "'")

        Me.txt_direccion_modificar.Text = dt.Rows(0).Item("direccion").ToString
        Me.txt_nombre_modificar.Text = dt.Rows(0).Item("Nombre").ToString
        Me.txt_nit_modificar.Text = dt.Rows(0).Item("NIT").ToString
        Me.txt_razon_social_modificar.Text = dt.Rows(0).Item("Razon_social").ToString

    End Sub


End Class