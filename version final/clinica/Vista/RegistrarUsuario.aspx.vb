Public Class RegistrarUsuario
    Inherits System.Web.UI.Page

    Dim dt As DataTable
    Dim cnn As New conexion
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try

        Catch ex As Exception
            dt = cnn.ConsultaSQL("select DISTINCT * from seg_permisos where cod_usuario = '" & Session("cod_usuario") & "'")
            Dim i As Integer = 0

            While i < dt.Rows.Count

                Select Case dt.Rows(i).Item("id_pagina").ToString


                    Case "6"

                    Case Else
                        [error].Visible = True
                        lbl_error.Text = "Error 404"
                        Response.Redirect("/default.aspx")
                End Select
                i = i + 1
            End While
        End Try

        Try
            dt = cnn.ConsultaSQL("select * from empleados")
            grid_lista_colaborador.DataSource = dt
            grid_lista_colaborador.DataBind()
        Catch ex As Exception

        End Try
        Try
            dt = cnn.ConsultaSQL("select b.cod_usuario,b.usuario,b.habilitado,b.tipo_usuario,b.fecha_creacion,A.* from seg_permisos A FULL JOIN usuarios B ON B.cod_usuario = A.cod_usuario AND B.cod_empresa = A.cod_empresa")
            GRID_LISTA_USUARIOS.DataSource = dt
            GRID_LISTA_USUARIOS.DataBind()
        Catch ex As Exception

        End Try

        If IsPostBack = True Then
            Try
                dt = cnn.ConsultaSQL("select * from datos_personal_medicos")
                gv_medicos.DataSource = dt
                gv_medicos.DataBind()
            Catch ex As Exception

            End Try

            Try
                drop_tipo_usuario.Items.Clear()
                dt = cnn.ConsultaSQL("select * from tipo_usuario where cod_empresa = '" & Session("cod_empresa").ToString & "'")
                Dim i As Integer = 0
                While i < dt.Rows.Count

                    drop_tipo_usuario.Items.Add(dt.Rows(i).Item("Descripcion").ToString)

                    i = i + 1
                End While


                'drop_tipo_usuario.Items.Clear()
                'drop_tipo_usuario.Items.Add("Operativo")
                'drop_tipo_usuario.Items.Add("General")
            Catch ex As Exception

            End Try
            Try
                Dim dt As New DataTable
                dt = cnn.ConsultaSQL("select isnull( (max(cod_tipo)+1),1) tipo from tipo_usuario")
                Me.txt_cod_tipo_usuario_asignaF.Text = dt.Rows(0).Item("tipo").ToString
                dt = cnn.ConsultaSQL("select * from tipo_usuario")

                dtg_tipo_usuario.DataSource = dt
                dtg_tipo_usuario.DataBind()
                Me.txt_tipo_usuario.Text = ""
                Me.txt_descripcion_tipo_usuario.Text = ""

            Catch ex As Exception

            End Try
            dt = cnn.ConsultaSQL("select * from tipo_usuario")

            dtg_tipo_usuario.DataSource = dt
            dtg_tipo_usuario.DataBind()

            Try



                dt = cnn.ConsultaSQL("select cod_empresa from empresas")

                Dim i As Integer = 0
                drp_empresa_modificar.Items.Clear()
                cod_empresanuevo.Items.Clear()

                While i < dt.Rows.Count
                    drp_empresa_modificar.Items.Add(dt.Rows(i).Item("cod_empresa").ToString)
                    cod_empresanuevo.Items.Add(dt.Rows(i).Item("cod_empresa").ToString)
                    drp_tipo_empresa.Items.Add(dt.Rows(i).Item("cod_empresa").ToString)
                    i = i + 1

                End While
                dt = cnn.ConsultaSQL("select max(cod_empresa) cod_empresa from empresa")
                txt_cod_empresa_nuevo.Text = dt.Rows(0).Item("cod_empresa").ToString

            Catch ex As Exception

            End Try


        End If
        If IsPostBack = False Then
            drp_tipo_empresa.Items.Clear()
            Dim i As Integer = 0
            dt = cnn.ConsultaSQL("select * from empresas")
            While i < dt.Rows.Count
                drp_tipo_empresa.Items.Add(dt.Rows(i).Item("Nombre").ToString)
                i = i + 1
            End While
            Try
                dt = cnn.ConsultaSQL("select * from datos_personal_medicos")
                gv_medicos.DataSource = dt
                gv_medicos.DataBind()
            Catch ex As Exception

            End Try
            Try
                drp_modulo_permiso.Items.Clear()
                drp_modulo_permiso.Items.Add("Consulta y Asignacion de camas")
                drp_modulo_permiso.Items.Add("Expedientes Pacientes")
                drp_modulo_permiso.Items.Add("Inventario")
                drp_modulo_permiso.Items.Add("Agenda de citas")
                drp_modulo_permiso.Items.Add("Recetas")
                drp_modulo_permiso.Items.Add("Registro de usuarios")

            Catch ex As Exception

            End Try
            Try
                drop_tipo_usuario.Items.Clear()
                Try
                    dt = cnn.ConsultaSQL("select * from tipo_usuario where cod_empresa = '" & Session("cod_empresa").ToString & "'")

                Catch ex As Exception
                    dt = cnn.ConsultaSQL("select * from tipo_usuario ")

                End Try
                i = 0
                While i < dt.Rows.Count

                    drop_tipo_usuario.Items.Add(dt.Rows(i).Item("Descripcion").ToString)

                    i = i + 1
                End While
                drp_tipo_empresa.Items.Clear()
                i = 0
                dt = cnn.ConsultaSQL("select * from empresas")
                While i < dt.Rows.Count
                    drp_tipo_empresa.Items.Add(dt.Rows(i).Item("Nombre").ToString)
                    i = i + 1
                End While

                'drop_tipo_usuario.Items.Clear()
                'drop_tipo_usuario.Items.Add("Operativo")
                'drop_tipo_usuario.Items.Add("General")
            Catch ex As Exception

            End Try


            Try
                'drop_tipo_usuario.Items.Clear()
                'drop_tipo_usuario.Items.Add("Administrativo")
                'drop_tipo_usuario.Items.Add("Operativo")
                'drop_tipo_usuario.Items.Add("General")

                Dim dt As New DataTable
                dt = cnn.ConsultaSQL("select isnull( (max(cod_tipo)+1),1) tipo from tipo_usuario")
                Me.txt_cod_tipo_usuario_asignaF.Text = dt.Rows(0).Item("tipo").ToString
                dt = cnn.ConsultaSQL("select * from tipo_usuario")
                dtg_tipo_usuario.DataSource = dt
                dtg_tipo_usuario.DataBind()
                Me.txt_tipo_usuario.Text = ""
                Me.txt_descripcion_tipo_usuario.Text = ""

            Catch ex As Exception

            End Try


            Try



                dt = cnn.ConsultaSQL("select cod_empresa from empresas")

                Dim i2 As Integer = 0
                drp_empresa_modificar.Items.Clear()
                cod_empresanuevo.Items.Clear()

                While i2 < dt.Rows.Count
                    drp_empresa_modificar.Items.Add(dt.Rows(i2).Item("cod_empresa").ToString)
                    cod_empresanuevo.Items.Add(dt.Rows(i2).Item("cod_empresa").ToString)
                    i2 = i2 + 1

                End While
                dt = cnn.ConsultaSQL("select max(cod_empresa) cod_empresa from empresa")
                txt_cod_empresa_nuevo.Text = dt.Rows(0).Item("cod_empresa").ToString

            Catch ex As Exception

            End Try


        End If



    End Sub

    Protected Sub regresa_home_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles regresa_home.Click
        Response.Redirect("/Vista/Inicio.aspx")
    End Sub

    Protected Sub btn_guardar_permisos_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_guardar_permisos.Click

        Dim permiso As Integer = 0
        Select Case drp_modulo_permiso.SelectedItem.Text
            Case "Consulta y Asignacion de camas"
                permiso = 1
            Case "Expedientes Pacientes"
                permiso = 2
            Case "Inventario"
                permiso = 3
            Case "Agenda de citas"
                permiso = 4
            Case "Recetas"
                permiso = 5
            Case "Registro de usuarios"
                permiso = 6
            Case Else
                permiso = 0
        End Select

        cnn.accionSQL("insert into seg_permisos (cod_usuario,fecha_modificacion,cod_empresa,id_pagina) values ('" & txt_cod_tipo.Text & "',getdate(),'" & Session("cod_empresa").ToString & "','" & permiso & "')")

        Response.Redirect("/Vista/RegistrarUsuario.aspx")
    End Sub

    Protected Sub btn_agregar_empleados_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_agregar_empleados.Click



        cnn.accionSQL("insert into empleados values ('" & txt_DPI_colaborador.Text & "','" & txt_nit_colaborador.Text & "','" & txt_dir_principal.Text & "','" & txt_puesto_asigna.Text & "','" & cod_usu_asigna.Text & "','" & txt_cod_empresa_asigna.Text & "','" & txt_activo_empleado.Text & "',getdate(),null,'" & Txt_salario.Text & "')")
        Response.Redirect("/Vista/RegistrarUsuario.aspx")
    End Sub

    Protected Sub btn_Agregar_medicos_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_Agregar_medicos.Click
        Try
            dt = cnn.ConsultaSQL("select a.*,b.DPI,b.Nit from info_usuario a, empleados b where a.cod_usuario in (select cod_usuario from empleados where cod_empleado = '" & txt_cod_empleado.Text & "')")

            cnn.accionSQL("insert into datos_personal_medicos values('" & txt_colegiado.Text & "','" & txt_cod_empleado.Text & "','" & dt.Rows(0).Item("primer_nombre").ToString & "','" & dt.Rows(0).Item("segundo_nombre").ToString & "','" & dt.Rows(0).Item("primer_apellido").ToString & "','" & dt.Rows(0).Item("segundo_apellido").ToString & "','" & dt.Rows(0).Item("DPI").ToString & "','" & dt.Rows(0).Item("NIT").ToString & "','" & txt_fecha_de_ingreso.Text.ToString & "',null,'" & txt_tel_principal.Text & "','" & txt_correo_principal.Text & "')")

        Catch ex As Exception

        End Try
        Response.Redirect("/Vista/RegistrarUsuario.aspx")
    End Sub

    Protected Sub btn_modificar_medicos_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_modificar_medicos.Click
        Try
            cnn.accionSQL("update datos_personal_medicos set num_colegiado = '" & txt_colegiado.Text & "',fecha_de_baja = '" & txt_fecha_de_salida.Text & "',Telefono_principal = '" & txt_tel_principal.Text & "',Correo_principal = '" & txt_correo_principal.Text & "' where cod_medico = '" & txt_cod_medico.Text & "'")
            Response.Redirect("/Vista/RegistrarUsuario.aspx")
        Catch ex As Exception

        End Try
    End Sub
    Protected Sub btn_actualiza_empleados_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_modificar_colaborador.Click
        Try

            dt = cnn.ConsultaSQL("select salario,fecha_fin,puesto from empleados where cod_empleado = '" & txt_cod_empleado_modifica.Text & "'")

            cnn.accionSQL("update empleados set salario = '" & If(salario_nuevo.Text = "", dt.Rows(0).Item("salario").ToString, salario_nuevo.Text).ToString & "',fecha_fin = " & If(fecha_fin_empleado.Text = "", "null", "'" & fecha_fin_empleado.Text & "'").ToString & ",puesto = '" & If(Puesto_nuevo.Text = "", dt.Rows(0).Item("puesto").ToString, Puesto_nuevo.Text).ToString & "' where cod_empleado = '" & txt_cod_empleado_modifica.Text & "'")
            Response.Redirect("/Vista/RegistrarUsuario.aspx")
        Catch ex As Exception

        End Try

    End Sub

    Protected Sub btn_quitar_permisos_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_quitar_permisos.Click
        Dim permiso As Integer
        Select Case drp_modulo_permiso.SelectedItem.Text
            Case "Consulta y Asignacion de camas"
                permiso = 1
            Case "Expedientes Pacientes"
                permiso = 2
            Case "Inventario"
                permiso = 3
            Case "Agenda de citas"
                permiso = 4
            Case "Recetas"
                permiso = 5
            Case "Registro de usuarios"
                permiso = 6
            Case Else
                permiso = 0
        End Select

        dt = cnn.ConsultaSQL("select * from seg_permisos where cod_usuario = " & txt_cod_tipo.Text & " and id_pagina =" & permiso & "")
        If dt.Rows.Count > 0 Then
            cnn.accionSQL("delete from seg_permisos where cod_usuario =  " & txt_cod_tipo.Text & " and id_pagina = " & permiso & "")
        End If
        Response.Redirect("/Vista/RegistrarUsuario.aspx")

    End Sub
    Protected Sub btnguarda_tipo_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_guarda_tipo.Click

        dt = cnn.ConsultaSQL("select * from empresas where nombre = '" & drp_tipo_empresa.SelectedItem.ToString & "'")


        cnn.accionSQL("insert into tipo_usuario (tipo,descripcion,cod_empresa) values ('" & txt_tipo_usuario.Text & "','" & txt_descripcion_tipo_usuario.Text & "','" & dt.Rows(0).Item("cod_empresa").ToString & "') ")

        Response.Redirect("/Vista/RegistrarUsuario.aspx")

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
        Response.Redirect("/Vista/RegistrarUsuario.aspx")
    End Sub

    Protected Sub btn_regresar(ByVal sender As Object, ByVal e As System.EventArgs) Handles regresar.Click


        Response.Redirect("/Default.aspx")

    End Sub

    Protected Sub btn_agregaempresa(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_agregar_empresa.Click

        Dim stringSQL As String = "insert into empresas (Nombre,Razon_social,Direccion,NIT) values ('" & txt_nombre_empresa.Text & "','" & txt_razon_social.Text & "', '" & txt_direccion_empresa.Text & "','" & txt_nit_empresa.Text & "')"
        cnn.accionSQL(stringSQL)
        Response.Redirect("/Vista/RegistrarUsuario.aspx")
    End Sub

    Protected Sub btn_atualizaempresas(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_modificar_empresa.Click
        Dim stringSQL As String = "update empresas  set Nombre = '" & txt_nombre_modificar.Text & "',Razon_social = '" & txt_razon_social_modificar.Text & "',Direccion= '" & txt_direccion_modificar.Text & "',NIT = '" & txt_nit_modificar.Text & "' where cod_empresa = '" & drp_empresa_modificar.SelectedItem.Text & "'"
        cnn.accionSQL(stringSQL)
        Response.Redirect("/Vista/RegistrarUsuario.aspx")
    End Sub

    Protected Sub btn_eliminar_tipo_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_eliminar_tipo.Click
        Try
            cnn.accionSQL("delete from tipo_usuario where cod_tipo =" & txt_cod_eliminar_usu.Text & "")
            Response.Redirect("/Vista/RegistrarUsuario.aspx")
        Catch ex As Exception

        End Try
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