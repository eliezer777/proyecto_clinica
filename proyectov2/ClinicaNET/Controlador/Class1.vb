Imports System.Data
Imports System.Data.SqlClient
Public Class sql_conect
    Public Function sqlins() As Boolean
        Dim result As Boolean = True

        Try

            Dim sCnn As String
            sCnn = "data source = omen15; initial catalog = ClinicaNET; user id = sa; password = alpha2020"

            Dim sSel As String = "data"

            Dim da As New SqlDataAdapter


            da = New SqlDataAdapter(sSel, sCnn)
        Catch ex As Exception
            result = False
        End Try



        Return result
    End Function

    Public Function sql_consulta(ByVal data As String) As Data.DataTable
        Dim tr As New Data.DataTable

        Try
            Dim sCnn As String
            sCnn = "data source = omen15; initial catalog = ClinicaNET; user id = sa; password = alpha2020"

            Dim sSel As String = data

            Dim da As New SqlDataAdapter
            Dim dt As New DataTable

            Try
                da = New SqlDataAdapter(sSel, sCnn)

                da.Fill(dt)
                tr = dt

            Catch ex As Exception

            End Try
        Catch ex As Exception

        End Try

        Return tr
    End Function

    Public Function conn() As Boolean
        Dim servidor As String = "omen15"
        Dim bd As String = "ClinicaNet"
        Dim usuario As String = "CLINICAL_ADMIN"
        Dim pass As String = "alpha2020"

        Dim cadena = "data source =" & servidor & "; initial catalog = " & bd & "; user id = " & usuario & "; password = " & pass

        Dim oConexion = New SqlConnection(cadena)
        Try
            oConexion.Open()
            Dim oDataReader As SqlDataReader
            Try
                Dim oComando = New SqlCommand()
                oComando.CommandText = "Select * from tabla"
                oComando.Connection = oConexion
                oDataReader = oComando.ExecuteReader
            Catch ex As Exception

            End Try


            Return True
        Catch ex As Exception
            oConexion.Open()
            Return False
        End Try

    End Function


End Class
