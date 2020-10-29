Public Class Inicio
    Inherits System.Web.UI.Page
    Dim dt As New DataTable
    Dim cnn As New conexion
    Protected Sub Page_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load

    End Sub

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

    Protected Sub btn_registrar(ByVal sender As Object, ByVal e As System.EventArgs) Handles btn_registrar_paciente.Click
        dt = cnn.ConsultaSQL("select cod_usuario_1 from usuarios where usuario = '" & Session("usuario").ToString & "'")

        If validar() = True Then
            Dim StringSql As String = ""

            StringSql = "insert into datos_paciente (Primer_nombre,Segundo_nombre,Primer_apellido,Segundo_apellido,Fecha_nacimiento,dpi,nit,pasaporte,tipo_de_sangre,licencia)"
            StringSql = StringSql + " " + "values ('" & txt_primer_nombre.Text & "','" & txt_segundo_nombre.Text & "','" & txt_primer_apellido.Text & "','" & txt_segundo_apellido.Text & "',isnull('" & txt_fecha_nacimiento.Text & "',getdate()),'" & txt_dpi.Text & "','" & txt_nit.Text & "','" & txt_pasaporte.Text & "','" & txt_tipo_sangre.Text & "','" & txt_licencia.Text & "')"
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



End Class