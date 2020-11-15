Public Class Inicio
    Inherits System.Web.UI.Page
    Dim dt As New DataTable
    Dim cnn As New conexion
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        Try
            dt = cnn.ConsultaSQL("select * from Recetas_por_paciente")

            GridView3.DataSource = dt
            GridView3.DataBind()
        Catch ex As Exception

        End Try


        Try
            dt = cnn.ConsultaSQL("select DISTINCT * from seg_permisos where cod_usuario = '" & Session("cod_usuario") & "'")
            Dim i As Integer = 0
            Me.cnt_consulta.Visible = False
            Me.cnt_registro_pacientes.Visible = False
            Me.cnt_inventario.Visible = False
            Me.cnt_agenda.Visible = False
            Me.cnt_recetas.Visible = False
            Me.btn_registrar.Visible = False
            While i < dt.Rows.Count

                Select Case dt.Rows(i).Item("id_pagina").ToString
                    Case "1"
                        Me.cnt_consulta.Visible = True

                    Case "2"
                        Me.cnt_registro_pacientes.Visible = True

                    Case "3"
                        Me.cnt_inventario.Visible = True
                    Case "4"
                        Me.cnt_agenda.Visible = True
                    Case "5"
                        Me.cnt_recetas.Visible = True
                    Case "6"
                        Me.btn_registrar.Visible = True
                    Case "0"
                        [error].Visible = True
                        lbl_error.Text = "Error 404"
                End Select
                i = i + 1
            End While

        Catch ex As Exception

        End Try
        Try
            dt = cnn.ConsultaSQL("select a.*,b.* from transacion_producto a inner join ventas b on a.id_transaccion_p = b.id_transaccion")
            GridView4.DataSource = dt
            GridView4.DataBind()
        Catch ex As Exception

        End Try
        Try
            dt = cnn.ConsultaSQL("select * from datos_paciente a, datos_paciente_add b, datos_paciente_historial c where a.id_paciente in (select id_paciente_1 from datos_paciente_add) and  b.id_paciente_1 in (select id_paciente_1 from datos_paciente_historial)")
            gv_pacientes.DataSource = dt
            gv_pacientes.DataBind()

        Catch ex As Exception

        End Try
        Try
            dt = cnn.ConsultaSQL("select * from recetas_por_paciente")
            GridView3.DataSource = dt
            GridView3.DataBind()
        Catch ex As Exception

        End Try

        Try

            dt = cnn.ConsultaSQL("select * from agenda where fecha < (DATEADD(DAY,7,GETDATE())) OR fecha > (DATEADD(DAY,-1,GETDATE()))")
            GridView1.DataSource = dt
            GridView1.DataBind()


        Catch ex As Exception

        End Try


        If IsPostBack = False Then
            Try
                drp_cod_doc.Items.Clear()
                dt = cnn.ConsultaSQL("select * from datos_personal_medicos")
                Dim i As Integer = 0
                While i < dt.Rows.Count

                    drp_cod_doc.Items.Add(dt.Rows(i).Item("cod_medico").ToString)

                    i = i + 1
                End While

            Catch ex As Exception

            End Try
            Try
                Session("usuario") = Session("usuario").ToString
                Session("cod_empresa") = Session("cod_empresa").ToString

            Catch ex As Exception
                Response.Redirect("/default.aspx")
            End Try

            If Session("usuario").ToString = "" Or Session("cod_empresa").ToString = "" Then
                Response.Redirect("/default.aspx")
            End If
            Dim a As Boolean
            dt = cnn.ConsultaSQL("select id_cama from habitaciones where cod_empresa = '" & Session("cod_empresa") & "'")

            a = llenar_drop(dt, "id_cama")

            Try
                dt = cnn.ConsultaSQL("select isnull(max(id_cama)+1,1)id_cama from habitaciones where cod_empresa =  '" & Session("cod_empresa").ToString & "'")
                If dt.Rows.Count > 0 Then
                    Me.txt_num_cama.Text = dt.Rows(0).Item("id_cama").ToString

                End If

                Me.drp_add_equipo.Items.Add("si")
                Me.drp_add_equipo.Items.Add("no")

                Me.drp_add_cama_medico.Items.Add("si")
                Me.drp_add_cama_medico.Items.Add("no")

                Me.drp_disponible.Items.Add("si")
                Me.drp_disponible.Items.Add("no")

                Me.Dropdownlist1.Items.Add("si")
                Me.Dropdownlist1.Items.Add("no")

                Me.Dropdownlist2.Items.Add("si")
                Me.Dropdownlist2.Items.Add("no")


                Me.drp_prescripcion.Items.Add("si")
                Me.drp_prescripcion.Items.Add("no")


                dt = cnn.ConsultaSQL("select * from marca")

                Try
                    'llenar drop
                    Dim i As Integer = 0
                    While i < dt.Rows.Count

                        drp_marca.Items.Add(dt.Rows(i).Item("Nombre").ToString)
                        i = i + 1

                    End While



                    'llenar dt inventario
                    dt = cnn.ConsultaSQL("select * from inventario")

                    GridViewOne.DataSource = dt
                    GridView2.DataSource = dt
                    GridView2.DataBind()
                    GridViewOne.DataBind()
                    GridViewOne.Visible = True
                    GridView2.Visible = True

                    dt = cnn.ConsultaSQL("select isnull(max(id_marca)+1,1)id_marca from marca and cod_empresa = '" & Session("cod_empresa").ToString & "'")
                    If dt.Rows.Count > 0 Then
                        Me.txt_codmarca_asigna.Text = dt.Rows(0).Item("id_marca").ToString

                    End If


                Catch ex As Exception

                End Try





            Catch ex As Exception

            End Try
        End If

    End Sub


#Region "Consulta y Asignacion"
    Function llenar_drop(ByVal data As DataTable, ByVal nombre_columna As String) As Boolean
        Me.drp_num_cama.Items.Clear()
        Dim i As Integer = 0
        While i < dt.Rows.Count
            Me.drp_num_cama.Items.Add(dt.Rows(i).Item(nombre_columna).ToString)
            i = i + 1

        End While


        Return True
    End Function

    Protected Sub btn_agrega(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_agregar.Click
        Try
            Dim strsql As String = "insert into habitaciones (tv,equipo_emergencia,personal_encargado,disponible,cod_empresa) values (" & If(Dropdownlist2.SelectedItem.Text = "si", "1", "0").ToString & "," & If(drp_add_equipo.SelectedItem.Text = "si", "1", "0").ToString & "," & If(drp_add_cama_medico.SelectedItem.Text = "si", "1", "0").ToString & "," & If(Dropdownlist1.SelectedItem.Text = "si", "1", "0").ToString & ",'" & Session("cod_empresa").ToString & "') "
            cnn.accionSQL(strsql)
            Response.Redirect("/Vista/Inicio.aspx")
        Catch ex As Exception

        End Try




    End Sub




    Protected Sub btn_b(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_buscar.Click
        Dim strSQL As String
        Dim cod_buscar As String = buscar_paciente.Text
        Dim dt As New DataTable
        strSQL = "select a.*,b.* from datos_paciente a inner join datos_paciente_historial b on a.id_paciente = b.id_paciente where id_paciente ='" & cod_buscar & "'"
        Try
            dt = cnn.ConsultaSQL(strSQL)

            If dt.Rows.Count = 0 Then

                strSQL = "select a.*,b.* from datos_paciente a inner join datos_paciente_historial b on a.id_paciente = b.id_paciente where dpi ='" & cod_buscar & "'"
                dt = cnn.ConsultaSQL(strSQL)

            End If

        Catch ex As Exception

        End Try

        If dt.Rows.Count = 0 Then
            Me.up_o.Visible = True
            lbl_error_p.Text = "Error Dpi o Codigo de paciente incorrecto."
        Else
            Me.up_o.Visible = False

            Me.txt_NombreP.Text = dt.Rows(0).Item("Primer_nombre").ToString & " " & dt.Rows(0).Item("Segundo_nombre").ToString
            Me.txt_ApellidoP.Text = dt.Rows(0).Item("Primer_apellido").ToString & " " & dt.Rows(0).Item("Segundo_apellido").ToString
            Me.txt_descripcionP.Text = dt.Rows(0).Item("descripcion").ToString
            Me.txt_TsangreP.Text = dt.Rows(0).Item("tipo_de_sangre").ToString
            Me.txt_DPIP.Text = dt.Rows(0).Item("dpi").ToString

        End If
        Try
            ScriptManager.RegisterStartupScript(Me, GetType(String), "tab", "setNameTab('nav-profile');", True)


        Catch ex As Exception

        End Try


    End Sub

#End Region
#Region "inventario"
    Function cargar_dgv() As Boolean
        Dim a As Boolean
        a = True
        Return a
    End Function



#End Region

    Function validar() As Boolean



        If txt_cod_medico.Text = "" Or txt_correo.Text = "" Or txt_Descripcion.Text = "" Or txt_direccion.Text = "" Or txt_dpi.Text = "" Or txt_licencia.Text = "" Or txt_nit.Text = "" Or txt_numero.Text = "" Or txt_pasaporte.Text = "" Or txt_primer_apellido.Text = "" Or txt_primer_nombre.Text = "" Or txt_segundo_apellido.Text = "" Or txt_segundo_nombre.Text = "" Or txt_tipo_sangre.Text = "" Then

            Me.error.Visible = True
            lbl_error.Visible = True
            lbl_error.Text = "Error, todos los campos son requeridos."
            Return False

        Else
            lbl_error.Visible = False
            Me.error.Visible = False
            Return True

        End If



    End Function

    Protected Sub btn_registrar_pacientesdas(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_registrar_paciente.Click
        dt = cnn.ConsultaSQL("select cod_usuario_1 from usuarios where usuario = '" & Session("usuario").ToString & "'")

        If validar() = True Then
            Dim StringSql As String = ""

            StringSql = "insert into datos_paciente (Primer_nombre,Segundo_nombre,Primer_apellido,Segundo_apellido,Fecha_nacimiento,dpi,nit,pasaporte,tipo_de_sangre,licencia,cod_empresa)"
            StringSql = StringSql + " " + "values ('" & txt_primer_nombre.Text & "','" & txt_segundo_nombre.Text & "','" & txt_primer_apellido.Text & "','" & txt_segundo_apellido.Text & "',isnull('" & txt_fecha_nacimiento.Text & "',getdate()),'" & txt_dpi.Text & "','" & txt_nit.Text & "','" & txt_pasaporte.Text & "','" & txt_tipo_sangre.Text & "','" & txt_licencia.Text & "','" & Session("cod_empresa") & "')"
            StringSql = StringSql + " "
            StringSql = StringSql + "insert into datos_paciente_historial (id_paciente,cod_usuario,fecha_registro,fecha_ingreso_paciente,descripcion,cod_medico_atiende)"
            StringSql = StringSql + " values ((select max(id_paciente) from datos_paciente)," & dt.Rows(0).Item("cod_usuario_1").ToString & ", isnull('" & txt_fecha_registro.Text & "',getdate()),isnull('" & txt_fecha_registro.Text & "',getdate()),'" & txt_Descripcion.Text & "','" & txt_cod_medico.Text & "')"

            If cnn.accionSQL(StringSql) = True Then
                Me.correcto.Visible = True
                lbl_correcto.Text = "Datos Guardados Correctamente"
                Exit Sub
            Else
                Me.error.Visible = True
                lbl_error.Visible = True
                lbl_error.Text = "Error, al ingresar los datos."
                Exit Sub
            End If



        Else

        End If


    End Sub


    Protected Sub btn_registrar_c(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_registrar.Click

        Response.Redirect("/Vista/RegistrarUsuario.aspx")
    End Sub
    Protected Sub btn_agregamarca_(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_agregamarca.Click

        cnn.accionSQL("insert into Marca (Nombre,Descripcion,Descuento,impuesto,Fecha_creacion,Fecha_modificacion,cod_empresa) values ('" & txt_nombre_marca.Text & "','" & txt_descripcion_marca.Text & "','" & txt_descuento.Text & "','" & txt_impuesto.Text & "',getdate(),getdate(),'" & Session("cod_empresa").ToString & "')")
        ScriptManager.RegisterClientScriptBlock(pnl_notificacion, pnl_notificacion.GetType(), "modal", "$('.modal-backdrop').close();$('.modal-backdrop').close();", True)
        Response.Redirect("/Vista/inicio.aspx")

    End Sub

    Protected Sub ModificarMarca_btn(ByVal sender As Object, ByVal e As System.EventArgs) Handles ModificarMarca.Click
        cnn.accionSQL("update marca set Nombre = '" & txt_nombre_marcanuevo.Text & "',Descripcion = '" & txt_descripcion_nuevo.Text & "',Descuento = '" & txt_descuentto_nuevo.Text & "',impuesto = '" & txt_impuesto_nuevo.Text & "',fecha_modificacion = getdate() where cod_marca = " & txt_cod_modmarca.Text)
        ScriptManager.RegisterClientScriptBlock(pnl_notificacion, pnl_notificacion.GetType(), "modal", "$('.modal-backdrop').close();$('.modal-backdrop').close();", True)
        Response.Redirect("/Vista/inicio.aspx")

    End Sub

    Protected Sub btn_guardar_medicamento_ck(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_guardar_medicamento.Click
        Dim dt As New DataTable
        dt = cnn.ConsultaSQL("select id_marca from marca where Nombre = '" & drp_marca.SelectedItem.Text.ToString & "' and cod_empresa = '" & Session("cod_empresa").ToString & "'")

        cnn.accionSQL("insert into inventario (Nombre,Descripcion,Fecha_ingreso,Fecha_vencimiento,id_marca,precio,cantidad_unidades,req_prescripcion,cod_empresa) values ('" & txt_nombre_producto.Text & "','" & txt_descProducto.Text & "','" & txt_fecha_ingreso.Text & "','" & txt_fecha_caduca.Text & "','" & dt.Rows(0).Item("id_marca").ToString & "', '" & txt_precio.Text & "','" & txt_cantidad.Text & "','" & If(drp_prescripcion.SelectedItem.Text = "si", 1, 0) & "','" & Session("cod_empresa") & "')")

        GridViewOne.Columns.Clear()
        dt = cnn.ConsultaSQL("select * from inventario")
        GridViewOne.DataSource = dt
        GridViewOne.DataBind()

        Response.Redirect("/Vista/Inicio.aspx")

    End Sub

#Region "Agenda"
    Protected Sub btn_agrega_agenda_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_asignar_cita.Click
        cnn.accionSQL("insert into agenda values('" & cod_paciente_buscar.Text & "','" & Session("cod_empresa").ToString & "','" & Session("cod_usuario").ToString & "',REPLACE('" & fecha_cita.Text & "','T',' '),'" & drp_cod_doc.SelectedItem.Text & "')")

        Response.Redirect("/Vista/Inicio.aspx")

    End Sub
    Protected Sub btn_edita_agenda_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_modificar_cita.Click
        cnn.accionSQL("update agenda set fecha = REPLACE( '" & fecha_citamodificar.Text & "','T',' '),cod_medico = '" & cod_doctor_citamodificar.Text & "' where id_cita = '" & cod_cita_modificar.Text & "'")

        Response.Redirect("/Vista/Inicio.aspx")

    End Sub
    Protected Sub btn_elimina_cita_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_elimina.Click
        cnn.accionSQL("delete from agenda where id_cita = '" & txt_cita_elimina.Text & "'")

        Response.Redirect("/Vista/Inicio.aspx")

    End Sub


#End Region

#Region "Recetas"

    Protected Sub btn_receta_clk(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_receta.Click

        Try
            Dim cadena_receta As String = ""
            Dim cadena_receta_T As String = ""
            Dim marcar As New CheckBox
            Dim txt As New TextBox
            Dim et As Decimal = 0
            Dim contador As Integer
            For i = 0 To GridView2.Rows.Count - 1
                marcar = CType(GridView2.Rows(i).FindControl("marcar"), CheckBox)
                txt = CType(GridView2.Rows(i).FindControl("cantidad"), TextBox)
                If marcar.Checked Then
                    'se hacen los cobros
                    contador = contador + 1
                    cadena_receta = cadena_receta + " Medicamento :" + " " + GridView2.DataKeys.Item(i).Item("Nombre").ToString
                    cadena_receta = cadena_receta + " Cantidad " + txt.Text.ToString + " , "
                    cadena_receta = cadena_receta + " Total Medicamento #" + i.ToString + " "
                    Dim a As Decimal = CDec(txt.Text) * CDec(GridView2.DataKeys.Item(i).Item("precio").ToString)

                    cadena_receta = cadena_receta + (a).ToString
                    et = ((txt.Text) * GridView2.DataKeys.Item(i).Item("precio"))
                    cadena_receta_T = cadena_receta_T + cadena_receta

                    cnn.accionSQL("insert into ventas values ('" & cadena_receta & "',getdate(),'" & txt.Text & "','" & Session("cod_usuario").ToString & "','" & Session("cod_empresa") & "')")
                    cadena_receta = ""
                    cnn.accionSQL("insert into transacion_producto values((select isnull(max(id_transaccion) ,1) from ventas),'" & GridView2.DataKeys.Item(i).Item("id_producto").ToString & "',getdate(),'" & Session("cod_empresa").ToString & "','" & GridView2.DataKeys.Item(i).Item("precio").ToString & "','" & txt.Text.ToString & "','" & et.ToString & "')")
                    cnn.accionSQL("update inventario set cantidad_unidades = (cantidad_unidades -" & txt.Text & ") where id_producto = '" & GridView2.DataKeys.Item(i).Item("id_producto").ToString & "'")
                End If
            Next

            'se llena la receta'
            cnn.accionSQL("insert into recetas_por_paciente values ('" & id_paciente_receta.Text & "','" & txt_cod_medico_receta.Text & "',getdate(),'" & cadena_receta_T.ToString & "','" & id_de_cita.Text & "',(select isnull(max(id_transaccion),1) from ventas),'" & precio.Text & "')")

            Try
                dt = cnn.ConsultaSQL("select * from recetas_por_paciente")
                GridView3.DataSource = dt
                GridView3.DataBind()

            Catch ex As Exception

            End Try


            Response.Redirect("/Vista/inicio.aspx")

        Catch ex As Exception

        End Try



    End Sub

#End Region



End Class