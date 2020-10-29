<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Inicio.aspx.vb" Inherits="ClinicaNET.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body style="background-image: url('https://wallpaperaccess.com/full/1189413.jpg'); background-repeat: no-repeat; background-size: 1920px; background-position: center top; background-attachment: fixed;">
    <asp:Panel runat="server" ID="pnl_general">
        <form id="form1" runat="server">
            <asp:ScriptManager ID="script_manager" runat="server"></asp:ScriptManager>
            <div class="container-fluid">

                <div class="row">
                    <div class="col-sm-2">
                    </div>
                    <div class="col-sm-8">

                        <div>
                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Pagina De Inicio</a>
                                    <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Agendar Citas</a>
                                    <a class="nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Expedientes Pacientes</a>
                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">...</div>
                                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">...</div>
                                <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                    <div class="container-fluid">

                                        <div class="row">

                                            <div class="col-sm-8">

                                                <div class="card" style="width: 50rem;">
                                                    <div class="card-body">
                                                        <h5 class="card-title">Registrar pacientes</h5>
                                                        <h6 class="card-subtitle mb-2 text-muted">A continuacion se solicitan datos del paciente.</h6>
                                                        <p class="card-text">Los datos del paciente, deben de ser exactos ya que este reporte se entregara a los medicos, para que puedan generar su expediente.</p>


                                                        <div class="row">
                                                            <div class="col-sm-12">

                                                                <div class="row">
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_primer_nombre" runat="server" placeholder="Primer Nombre"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>

                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_segundo_nombre" runat="server" placeholder="Segundo Nombre"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_primer_apellido" runat="server" placeholder="Primer Apellido"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_segundo_apellido" runat="server" placeholder="Segundo Apellido"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_fecha_nacimiento" runat="server" toltip="Fecha Nacimiento" TextMode="date" ToolTip="fecha de nacimiento"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>

                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_dpi" runat="server" placeholder="DPI"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_nit" runat="server" placeholder="NIT"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_pasaporte" runat="server" placeholder="Pasaporte"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_tipo_sangre" runat="server" placeholder="Tipo De Sangre"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>

                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_licencia" runat="server" placeholder="Licencia"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                </div>




                                                            </div>
                                                            <div class="col-sm-12">

                                                                <div class="row">
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_numero" runat="server" placeholder="Numero Principal"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>

                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_direccion" runat="server" placeholder="Direccion Principal"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_correo" runat="server" TextMode="Email" placeholder="Correo Electronico"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_fecha_registro" runat="server" TextMode="Date" ToolTip="Fecha de ingreso"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                </div>

                                                                <div class="row">
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_Descripcion" runat="server" placeholder="Motivo del ingreso"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>

                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="txt_cod_medico" runat="server" placeholder="Codigo Del Medico Recidente"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                </div>

                                                                <%--     <div class="row">
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="TextBox15" runat="server" placeholder="Primer Apellido"></asp:TextBox>
                                                                        <br /><br />
                                                                    </div>

                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="TextBox16" runat="server" placeholder="Primer Apellido"></asp:TextBox>
                                                                        <br /><br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <asp:TextBox ID="TextBox17" runat="server" placeholder="Primer Apellido"></asp:TextBox>
                                                                        <br /><br />
                                                                    </div>
                                                                    <div class="col-sm-3">
                                                                        <br /><br />
                                                                    </div>--%>
                                                            </div>




                                                        </div>

                                                        <div class="col-sm-12">
                                                            <div class="card-footer text-muted">
                                                                <asp:Button runat="server" ID="btn_registrar_paciente" class="btn-outline-primary" ToolTip="Registrar Paciente" Text="Guardar" />
                                                            </div>
                                                            <asp:Panel ID="pnl_notificacion" runat="server">
                                                                <asp:UpdatePanel ID="error" runat="server" UpdateMode="Always" Visible="false">
                                                                    <ContentTemplate>
                                                                        <div class="alert alert-danger" role="alert">
                                                                            <asp:Label ID="lbl_error" runat="server"></asp:Label>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                                <asp:UpdatePanel ID="correcto" runat="server" UpdateMode="Always" Visible="false">
                                                                    <ContentTemplate>
                                                                        <div class="alert alert-success" role="alert">
                                                                            <asp:Label runat="server" ID="lbl_correcto"></asp:Label>
                                                                        </div>
                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>
                                                            </asp:Panel>
                                                        </div>
                                                    </div>


                                                </div>
                                            </div>




                                        </div>

                                    </div>


                                </div>



                            </div>
                        </div>

                    </div>
                    <div class="row">
                        <div class="col-sm-2" style="background-color: white;">
                        </div>
                        <div class="col-sm-8">
                            <div class="flex-lg-row">
                                <div class="flex-column">
                                </div>

                            </div>

                        </div>
                        <div class="col-sm-2" style="">
                        </div>

                    </div>



                </div>
                <div class="col-sm-2">
                </div>
            </div>

            </div>
        </form>

    </asp:Panel>

</body>
</html>
