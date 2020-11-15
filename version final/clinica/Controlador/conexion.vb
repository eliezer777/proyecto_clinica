Imports System.Data.SqlClient
Imports System.Data
Imports System.Data.Sql
Public Class conexion
    Dim cadena = "Data Source=YEYEPC;Initial Catalog=ClinicaNET2;User ID= sa;Password=123"
    Dim conexion As New SqlConnection(cadena)
    Dim cmd As New SqlCommand
    Dim dr As SqlDataReader
    Dim ds As New DataSet



    'Public Function ComandoSQL(ByVal codigoSql1 As String, ByVal tablas As String) As DataTable

    '    cmd.Connection = conexion
    '    cmd.CommandText = codigoSql1
    '    conexion.Open()
    '    dr = cmd.ExecuteReader()
    '    ds.Load(dr, LoadOption.PreserveChanges, (tablas))

    '    'Select Case (formulario)
    '    '    Case 1
    '    '        frm_01_pantalla_principal.dgv_pp_dentrogimnasio.DataSource = ds.Tables(tablas)

    '    'End Select

    '    Dim dt As New DataTable
    '    dt.Rows.Add(ds.Tables)


    '    dr.Close()

    '    conexion.Close()
    '    Return dt

    'End Function

    Function ConsultaSQL(ByVal StringSQL As String) As DataTable

        Dim cnn As SqlConnection
        'Dim a As String = "Server=localhost;Database=ClinicaNET;Trusted_Connection=True;"
        cnn = New SqlConnection("Data Source=YEYEPC;Initial Catalog=ClinicaNet2;User ID= sa;Password=123")
        cnn.Open()

        REM creamos el comando a ejecutar
        Dim cmd As SqlCommand
        cmd = cnn.CreateCommand()
        cmd.CommandText = StringSQL
        cmd.CommandType = CommandType.Text

        REM creamos un adaptador de datos
        Dim adapter As SqlDataAdapter
        adapter = New SqlDataAdapter(cmd)

        REM llenamos los datos desde el adaptador hacia el DataTable
        Dim Table As New DataTable
        'adapter.Fill(Table, "Mi_Tabla")
        adapter.Fill(Table)

        REM liberamos recursos
        adapter.Dispose()
        cmd.Dispose()
        cnn.Dispose()

        Return Table

    End Function

    Function accionSQL(ByVal StringSQL As String) As Boolean

        Dim cnn As SqlConnection
        cnn = New SqlConnection("Data Source=YEYEPC;Initial Catalog=ClinicaNet2;User ID= sa;Password=123")
        cnn.Open()

        REM creamos el comando a ejecutar
        Dim cmd As SqlCommand
        cmd = cnn.CreateCommand()
        cmd.CommandText = StringSQL
        cmd.CommandType = CommandType.Text

        REM creamos un adaptador de datos
        Dim adapter As SqlDataAdapter
        adapter = New SqlDataAdapter(cmd)

        'REM llenamos los datos desde el adaptador hacia el DataTable
        Dim Table As New DataTable
        'adapter.Fill(Table, "Mi_Tabla")
        adapter.Fill(Table)

        'REM liberamos recursos
        adapter.Dispose()
        cmd.Dispose()
        'cnn.Dispose()

        'Return Table
        Return True
    End Function
End Class
