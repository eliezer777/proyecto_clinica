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
    <asp:Panel runat="server" ID="pntl_general">

        <form id="form1" runat="server">
            <asp:ScriptManager ID="script_manager" runat="server"></asp:ScriptManager>

            <div class="container-fluid">
                <div class="row">

                    <div class="col-sm-12">



                        <nav>
                            <div class="nav nav-tabs" id="nav-tab" role="tablist">

                                <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Pagina De Inicio</a>
                                <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Consulta y Asignacion de camas</a>
                                <a class="nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Expedientes Pacientes</a>
                                <a class="nav-link" id="nav-inventario-tab" data-toggle="tab" href="#nav-inventario" role="tab" aria-controls="nav-inventario" aria-selected="false">Inventario</a>
                                <a class="nav-link" id="nav-agenda-tab" data-toggle="tab" href="#nav-agenda" role="tab" aria-controls="nav-agenda" aria-selected="false">Agendar Citas</a>
                                <a class="nav-link" id="nav-recetas-tab" data-toggle="tab" href="#nav-recetas" role="tab" aria-controls="nav-recetas" aria-selected="false">Recetas</a>

                            </div>

                        </nav>


                        <div class="tab-content" id="nav-tabContent">


                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                <br />
                                <br />
                                <div class="container-fluid">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="card">
                                                <div class="card-header">

                                                    <h5>Creacion de usuarios nuevos:</h5>
                                                </div>
                                                <div class="card-body">
                                                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                                                        <ol class="carousel-indicators">
                                                            <li data-target="#carouselExampleIndicators" data-slide-to="0" class="active"></li>
                                                            <li data-target="#carouselExampleIndicators" data-slide-to="1"></li>
                                                            <li data-target="#carouselExampleIndicators" data-slide-to="2"></li>
                                                        </ol>
                                                        <div class="carousel-inner">
                                                            <div class="carousel-item active">
                                                                <img class="d-block w-100" src="https://camimedicalsac.com/catalogo/wp-content/uploads/2020/02/slide-02-1.jpg" alt="First slide">
                                                            </div>
                                                            <div class="carousel-item">
                                                                <img class="d-block w-100" src="https://ak.picdn.net/shutterstock/videos/4808825/thumb/4.jpg" alt="Second slide">
                                                            </div>
                                                            <div class="carousel-item">
                                                                <img class="d-block w-100" src="https://ak.picdn.net/shutterstock/videos/4820795/thumb/1.jpg" alt="Third slide">
                                                            </div>
                                                        </div>
                                                        <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                                                            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                                            <span class="sr-only">Previous</span>
                                                        </a>
                                                        <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                                                            <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                                            <span class="sr-only">Next</span>
                                                        </a>
                                                    </div>




                                                </div>
                                                <asp:Button ID="btn_registrar" runat="server" class="btn btn-secondary" Text="ADMINISTRACION" heigt="300px;" />

                                            </div>


                                        </div>
                                    </div>
                                </div>

                            </div>

                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                <br />
                                <br />
                                <div class="container-fluid" runat="server" id="cnt_consulta">

                                    <div class="row">

                                        <div class="col-sm-12">
                                            <div class="card">
                                                <div class="card-body">
                                                    <br />
                                                    <h5 class="card-title"></h5>
                                                    <div class="col-sm-12">

                                                        <div class="row">
                                                            <div class="col-sm-5" style="border-color: whitesmoke;">

                                                                <h5 class="card-title">Consulta </h5>
                                                                <asp:TextBox ID="buscar_paciente" runat="server" TextMode="Search" placeholder="Codigo paciente"></asp:TextBox>
                                                                <asp:Button ID="btn_buscar" runat="server" class="btn btn-primary" CssClass="btn btn-primary" Text="Buscar"></asp:Button>

                                                                <br />
                                                                <asp:Label runat="server" Text="Nombres:"></asp:Label>
                                                                <br />
                                                                <asp:TextBox ID="txt_NombreP" runat="server" placeholder="" ToolTip=""></asp:TextBox>
                                                                <br />
                                                                <asp:Label runat="server" Text="Apellidos:"></asp:Label>
                                                                <br />
                                                                <asp:TextBox ID="txt_ApellidoP" runat="server" placeholder="" ToolTip=""></asp:TextBox>
                                                                <br />
                                                                <asp:Label runat="server" Text="DPI:"></asp:Label>
                                                                <br />
                                                                <asp:TextBox ID="txt_DPIP" runat="server" placeholder="" ToolTip=""></asp:TextBox>
                                                                <br />
                                                                <asp:Label runat="server" Text="Tipo de Sangre:"></asp:Label>
                                                                <br />
                                                                <asp:TextBox ID="txt_TsangreP" runat="server" placeholder="" ToolTip=""></asp:TextBox>
                                                                <br />
                                                                <asp:Label runat="server" Text="Motivo de ingreso:"></asp:Label>
                                                                <br />
                                                                <asp:TextBox ID="txt_descripcionP" runat="server" placeholder="" ToolTip="" TextMode="MultiLine" Enabled="True" Width="300" Height="200"></asp:TextBox>
                                                                <br />

                                                                <asp:Button runat="server" ID="btn_asigna" class="btn btn-primary" ToolTip="Registrar Paciente" Text="Guardar" />

                                                                <br />
                                                            </div>

                                                            <div class="col-sm-7">

                                                                <h5 class="card-title">Asignacion </h5>

                                                                <br />
                                                                <br />
                                                                <asp:Label runat="server" Text="Numero de cama : "></asp:Label><asp:DropDownList CssClass="dropdown-item" ID="drp_num_cama" runat="server" placeholder="" ToolTip="Numero de cama"></asp:DropDownList>
                                                                <br />
                                                                <asp:Label runat="server" Text="Dispone de TV"></asp:Label>
                                                                <br />
                                                                <asp:TextBox ID="txt_tv" runat="server" placeholder="" ToolTip=""></asp:TextBox>
                                                                <br />
                                                                <asp:Label runat="server" Text="Dispone de personal acargo"></asp:Label>
                                                                <br />

                                                                <asp:TextBox ID="txt_perosonalH" runat="server" placeholder="" ToolTip=""></asp:TextBox>
                                                                <br />
                                                                <asp:Label runat="server" Text="Dispone de equipo de emergencia:"></asp:Label>
                                                                <br />
                                                                <asp:TextBox ID="txt_equipo_emergencia" runat="server" placeholder="" ToolTip=""></asp:TextBox>
                                                                <br />
                                                                <asp:Label runat="server" Text="Esta Disponible"></asp:Label>
                                                                <br />
                                                                <asp:DropDownList ID="drp_disponible" runat="server" placeholder="" ToolTip="" CssClass="dropdown-item"></asp:DropDownList>
                                                                <br />
                                                                <br />
                                                                <!-- Button trigger modal -->
                                                                <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#exampleModal">
                                                                    Agregar Habitaciones
                                                                </button>

                                                                <!-- Modal -->
                                                                <div class="modal fade" id="exampleModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                    <div class="modal-dialog" role="document">
                                                                        <div class="modal-content">
                                                                            <div class="modal-header">
                                                                                <h5 class="modal-title" id="exampleModalLabel">Agregar Habitaciones (Camas)</h5>
                                                                                <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                                                                                    <span aria-hidden="true">&times;</span>
                                                                                </button>
                                                                            </div>
                                                                            <div class="modal-body">

                                                                                <asp:Label runat="server" Text="¿Posee equipo medico de emergencia?"></asp:Label>
                                                                                <asp:DropDownList runat="server" ID="drp_add_equipo" CssClass="dropdown-item"></asp:DropDownList>
                                                                                <br />
                                                                                <br />
                                                                                <asp:Label runat="server" Text="¿Pose medico a cargo?"></asp:Label>
                                                                                <asp:DropDownList runat="server" ID="drp_add_cama_medico" CssClass="dropdown-item"></asp:DropDownList>

                                                                                <br />
                                                                                <br />
                                                                                <asp:Label runat="server" Text="Esta Disponible"></asp:Label>
                                                                                <asp:DropDownList runat="server" ID="Dropdownlist1" CssClass="dropdown-item"></asp:DropDownList>

                                                                                <br />
                                                                                <br />

                                                                                <asp:Label runat="server" Text="Dispone de TV"></asp:Label>
                                                                                <asp:DropDownList runat="server" ID="Dropdownlist2" CssClass="dropdown-item"></asp:DropDownList>
                                                                                <br />
                                                                                <br />

                                                                                <asp:Label runat="server" Text="Numero de cama para asignar :"></asp:Label>
                                                                                <asp:TextBox runat="server" Text="" ID="txt_num_cama"></asp:TextBox>


                                                                            </div>
                                                                            <div class="modal-footer">
                                                                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                                                                                <asp:Button ID="btn_agregar" runat="server" class="btn btn-primary" Text="Agregar"></asp:Button>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>

                                                                <br />
                                                                <br />



                                                            </div>
                                                            <div class="col-sm-12">
                                                                <div class="card-footer bg-white">
                                                                    <div class="row">
                                                                        <div class="col-sm-10">
                                                                            <asp:Panel ID="Panel1" runat="server">
                                                                                <asp:UpdatePanel ID="up_o" runat="server" UpdateMode="Always" Visible="false">
                                                                                    <ContentTemplate>
                                                                                        <div class="alert alert-danger" role="alert">
                                                                                            <asp:Label ID="lbl_error_p" runat="server"></asp:Label>
                                                                                        </div>
                                                                                    </ContentTemplate>
                                                                                </asp:UpdatePanel>
                                                                                <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always" Visible="false">
                                                                                    <ContentTemplate>
                                                                                        <div class="alert alert-success" role="alert">
                                                                                            <asp:Label runat="server" ID="lbl_correcto_p"></asp:Label>
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

                                </div>



                            </div>


                            <div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">
                                <br />
                                <br />

                                <div class="container-fluid" runat="server" id="cnt_registro_pacientes">

                                    <div class="row">

                                        <div class="col-sm-12">

                                            <div class="card">
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
                                                        <div class="card-footer bg-white">
                                                            <asp:Button runat="server" ID="btn_registrar_paciente" class="btn btn-primary" ToolTip="Registrar Paciente" Text="Guardar" />
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

                                                    <div>
                                                         <div class="container-fluid">
                                                    <div class="card card-body">
                                                        <div class="row">
                                                            <div class="col-sm-12">

                                                                <div class="divGrid table table-hover">
                                                                    <div class="grid ">

                                                                        <asp:UpdatePanel ID="UpdatePanel6" runat="server" UpdateMode="Always">
                                                                            <ContentTemplate>

                                                                                <asp:GridView
                                                                                    ID="gv_pacientes"
                                                                                    runat="server"
                                                                                    CssClass="datatable"
                                                                                    CellPadding="0"
                                                                                    CellSpacing="0"
                                                                                    AutoGenerateColumns="false">

                                                                                    <RowStyle CssClass="even" />
                                                                                    <HeaderStyle CssClass="header" />
                                                                                    <AlternatingRowStyle CssClass="odd" />
                                                                                    <Columns>
                                                                                        <asp:BoundField HeaderText="Codigo Paciente" DataField="id_paciente" />
                                                                                        <asp:BoundField HeaderText="Primer Nombre" DataField="Primer_Nombre" />
                                                                                        <asp:BoundField HeaderText="Primer Apellido" DataField="Primer_apellido" />
                                                                                        <asp:BoundField HeaderText="Telefono" DataField="telefono" />
                                                                                        <asp:BoundField Headertext="Direccion" DataField="direccion" />
                                                                                        <asp:BoundField HeaderText="Fecha de Ingreso" DataField="fecha_ingreso_paciente" />
                                                                                        <asp:BoundField HeaderText="Fecha de Salida" DataField="fecha_salida_paciente" />
                                                                                        <asp:BoundField HeaderText="Motivo de la cita" DataField="Descripcion" />

                                                                                    </Columns>
                                                                                </asp:GridView>

                                                                            </ContentTemplate>
                                                                        </asp:UpdatePanel>

                                                                    </div>
                                                                    <!-- grid -->
                                                                </div>
                                                                <!-- divGrid -->


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


                            </div>

                            <div class="tab-pane fade" id="nav-inventario" role="tabpanel" aria-labelledby="nav-inventario-tab">
                                <br />
                                <br />

                                <div class="container-fluid" id="cnt_inventario" runat="server">

                                    <div class="card">

                                        <div class="card-header">
                                            <h3>Inventario General</h3>
                                        </div>

                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-sm-12">
                                                    <div class="form-group" style="padding: 4px;">
                                                        <div class="row">
                                                            <div class="col-lg-4">


                                                                <div class="col-sm-6" style="padding: 4px;">

                                                                    <asp:TextBox runat="server" ID="txt_nombre_producto" placeholder="Nombre del medicamento"></asp:TextBox>
                                                                </div>
                                                                <div class="col-sm-6" style="padding: 4px;">
                                                                    <asp:TextBox runat="server" ID="txt_fecha_ingreso" TextMode="Date" placeholder="" ToolTip="Fecha De Ingreso"></asp:TextBox>
                                                                </div>
                                                                <div class="col-sm-6" style="padding: 4px;">
                                                                    <asp:TextBox runat="server" ID="txt_cantidad" placeholder="Cantidad de unidades" ToolTip=""></asp:TextBox>
                                                                </div>
                                                                <div class="col-sm-6" style="padding: 4px;">
                                                                    <asp:DropDownList runat="server" ID="drp_marca" placeholder="" ToolTip="Seleccione la marca del producto"></asp:DropDownList>
                                                                    <!-- Button trigger modal -->
                                                                    <button type="button" class="btn btn-success" data-toggle="modal" data-target="#modal_1">
                                                                        +
                                                                    </button>

                                                                    <!-- Modal -->
                                                                    <div class="modal fade" id="modal_1" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
                                                                        <div class="modal-dialog" role="document">
                                                                            <div class="modal-content">
                                                                                <div class="modal-header">
                                                                                    <h5 class="modal-title">Agregar Marca</h5>
                                                                                    <button type="button" class="close" data-dismiss="modal" aria-label="Cerrar">
                                                                                        <span aria-hidden="true">&times;</span>
                                                                                    </button>
                                                                                </div>
                                                                                <div class="modal-body">
                                                                                    <asp:TextBox runat="server" ID="txt_nombre_marca" placeholder="Nombre Marca"></asp:TextBox>
                                                                                    <br />
                                                                                    <br />
                                                                                    <asp:TextBox runat="server" ID="txt_descuento" placeholder="Descuento" ToolTip="Ingresar 0 si no posee descuento"></asp:TextBox>
                                                                                    <br />
                                                                                    <br />
                                                                                    <asp:TextBox runat="server" ID="txt_impuesto" placeholder="Impuesto"></asp:TextBox>
                                                                                    <br />
                                                                                    <br />
                                                                                    <asp:TextBox runat="server" ID="txt_descripcion_marca" placeholder="Descripcion Marca"></asp:TextBox>
                                                                                    <br />
                                                                                    <br />
                                                                                    <asp:TextBox runat="server" ID="txt_codmarca_asigna" Enabled="false" placeholder="Codigo de marca asignado por el sistema" ToolTip="Codigo de marca"></asp:TextBox>
                                                                                    <br />
                                                                                    <br />
                                                                                    <div class="col-sm-12">



                                                                                        <a class="btn btn-primary" data-toggle="collapse" href="#collapseExample" role="button" aria-expanded="false" aria-controls="collapseExample">Modificar Marca
                                                                                        </a>

                                                                                        <div class="collapse" id="collapseExample">
                                                                                            <div class="card card-body">

                                                                                                <asp:TextBox ID="txt_cod_modmarca" runat="server" placeholder="Ingrese el codigo de la marca a modificar"></asp:TextBox>
                                                                                                <br />
                                                                                                <br />
                                                                                                <asp:TextBox runat="server" ID="txt_nombre_marcanuevo" placeholder="Nombre Marca"></asp:TextBox>
                                                                                                <br />
                                                                                                <br />
                                                                                                <asp:TextBox runat="server" ID="txt_descuentto_nuevo" placeholder="Descuento" ToolTip="Ingresar 0 si no posee descuento"></asp:TextBox>
                                                                                                <br />
                                                                                                <br />
                                                                                                <asp:TextBox runat="server" ID="txt_impuesto_nuevo" placeholder="Impuesto"></asp:TextBox>
                                                                                                <br />
                                                                                                <br />
                                                                                                <asp:TextBox runat="server" ID="txt_descripcion_nuevo" placeholder="Descripcion" TextMode="MultiLine"></asp:TextBox>
                                                                                                <br />

                                                                                                <br />
                                                                                                <asp:Button runat="server" ID="ModificarMarca" CssClass="btn btn-success" Text="Guardar" />
                                                                                                <br />
                                                                                            </div>
                                                                                        </div>

                                                                                    </div>

                                                                                    <br />
                                                                                    <br />
                                                                                </div>
                                                                                <div class="modal-footer">
                                                                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                                                                                    <asp:Button runat="server" ID="btn_agregamarca" class="btn btn-primary" Text="Guardar Marca"></asp:Button>
                                                                                </div>
                                                                            </div>
                                                                        </div>
                                                                    </div>
                                                                </div>
                                                                <div class="col-sm-6" style="padding: 4px; height: 10px; width: 100px;">
                                                                    <asp:TextBox runat="server" ID="txt_descProducto" placeholder="Descripcion" TextMode="MultiLine" ToolTip=""></asp:TextBox>

                                                                </div>
                                                                <div class="col-sm-6" style="padding: 4px;">
                                                                    <br />
                                                                    <br />

                                                                    <asp:TextBox runat="server" ID="txt_fecha_caduca" placeholder="" TextMode="Date" ToolTip="Fecha de caducidad del lote de medicamento"></asp:TextBox>
                                                                </div>
                                                                <div class="col-sm-6" style="padding: 4px;">
                                                                    <asp:TextBox runat="server" ID="txt_precio" placeholder="Precio del medicamento" ToolTip="Precio puede incluir decimales esto es por unidad"></asp:TextBox>
                                                                </div>
                                                                <div class="col-sm-6" style="padding: 4px;">
                                                                    <asp:DropDownList runat="server" ID="drp_prescripcion" CssClass="dropdown-item" ToolTip="Prescripcion Medica"></asp:DropDownList>
                                                                </div>
                                                                <div class="col-sm-6" style="padding: 4px;">

                                                                    <asp:Button runat="server" ID="btn_guardar_medicamento" class="btn btn-primary" Text="Guardar" />
                                                                                                                               <br /><br />                                                           <br /><br />                                                           <br /><br />
                                                                </div>


                                                            </div>


                                                            <div class="col-sm-8">
                                                                <div class="card">
                                                                    <div class="card-body">

                                                                        <div class="divGrid">
                                                                            <div class="grid">

                                                                                <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Conditional">
                                                                                    <ContentTemplate>

                                                                                        <asp:GridView
                                                                                            ID="GridViewOne"
                                                                                            runat="server"
                                                                                            CssClass="datatable"
                                                                                            CellPadding="0"
                                                                                            CellSpacing="0"
                                                                                            AutoGenerateColumns="false">

                                                                                            <RowStyle CssClass="even" />
                                                                                            <HeaderStyle CssClass="header" />
                                                                                            <AlternatingRowStyle CssClass="odd" />
                                                                                            <Columns>
                                                                                                <asp:BoundField HeaderText="Codigo de producto" DataField="id_producto" />
                                                                                                <asp:BoundField HeaderText="Nombre Producto" DataField="Nombre" />
                                                                                                <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                                                                                                <asp:BoundField HeaderText="Fecha de ingreso" DataField="fecha_ingreso" />
                                                                                                <asp:BoundField HeaderText="Fecha de vencimiento" DataField="fecha_vencimiento" />
                                                                                                <asp:BoundField HeaderText="Precio" DataField="precio" />
                                                                                                <asp:BoundField HeaderText="Unidades" DataField="cantidad_unidades" />
                                                                                                <asp:BoundField HeaderText="Codigo de marca" DataField="id_marca" />
                                                                                            </Columns>
                                                                                        </asp:GridView>

                                                                                    </ContentTemplate>
                                                                                </asp:UpdatePanel>

                                                                            </div>
                                                                            <!-- grid -->
                                                                        </div>
                                                                        <!-- divGrid -->

                                                                    </div>
                                                                </div>

                                                            </div>
 
                                                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#Transaccional" aria-expanded="false" aria-controls="Transaccional">
                                                                Registro de ventas
                                                            </button>
                                                            <div class="col-sm-8">
                                                                <div class="collapse" id="Transaccional">
                                                                    <div class="card card-body">

                                                                        <div class="divGrid">
                                                                            <div class="grid">
                                                                                <h3>Historial de ventas y transacciones</h3>

                                                                                <asp:UpdatePanel ID="UpdatePanel5" runat="server" UpdateMode="Conditional">
                                                                                    <ContentTemplate>

                                                                                        <asp:GridView
                                                                                            ID="GridView4"
                                                                                            runat="server"
                                                                                            CssClass="datatable"
                                                                                            CellPadding="0"
                                                                                            CellSpacing="0"
                                                                                            AutoGenerateColumns="True">

                                                                                            <RowStyle CssClass="even" />
                                                                                            <HeaderStyle CssClass="header" />
                                                                                            <AlternatingRowStyle CssClass="odd" />

                                                                                        </asp:GridView>

                                                                                    </ContentTemplate>
                                                                                </asp:UpdatePanel>

                                                                            </div>
                                                                            <!-- grid -->
                                                                        </div>
                                                                        <!-- divGrid -->

                                                                    </div>
                                                                </div>

                                                            </div>

                                                        </div>

                                                    </div>

                                                </div>

                                            </div>

                                        </div>
                                        <div class="card-footer">
                                        </div>


                                    </div>



                                </div>



                            </div>


                            <div class="tab-pane fade" id="nav-agenda" role="tabpanel" aria-labelledby="nav-agenda-tab">
                                <br />
                                <br />

                                <div class="container-fluid" runat="server" id="cnt_agenda">

                                    <div class="card">

                                        <div class="card-header">
                                            <h3>Agendar Citas</h3>
                                        </div>

                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-lg-12">
                                                    <div class="row">
                                                        <div class="col-sm-4">

                                                            <div class="col-lg-12">

                                                                <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#agendar_citas" aria-expanded="false" aria-controls="agendar_citas">
                                                                    Agendar Cita
                                                                </button>
                                                                <div class="collapse" id="agendar_citas">
                                                                    <div class="card card-body">
                                                                        <asp:TextBox runat="server" ID="cod_paciente_buscar" TextMode="Search" placeholder="codigo de paciente"></asp:TextBox>
                                                                        <br />


                                                                        <asp:TextBox runat="server" ID="fecha_cita" type="datetime-local"></asp:TextBox>
                                                                        <br />
                                                                        <asp:DropDownList runat="server" ID="drp_cod_doc" CssClass=" dropdown-item" placeholder="codigo del medico"></asp:DropDownList>
                                                                        <br />
                                                                        <asp:Button runat="server" ID="btn_asignar_cita" Text="Asigna Cita" Class="btn btn-primary"></asp:Button>

                                                                    </div>

                                                                    <div class="col-lg-12">
                                                                    </div>

                                                                    <div class="col-lg-12">
                                                                    </div>
                                                                    <div class="col-lg-12">
                                                                    </div>
                                                                </div>


                                                            </div>

                                                            <div class="col-sm-12">
                                                                <br />
                                                                <button class="btn btn-info" type="button" data-toggle="collapse" data-target="#modificar_cita" aria-expanded="false" aria-controls="modificar_cita">
                                                                    Modificar Cita
                                                                </button>
                                                                <div class="collapse" id="modificar_cita">
                                                                    <div class="card card-body">
                                                                        <asp:TextBox runat="server" ID="cod_cita_modificar" placeholder="Codigo de cita"></asp:TextBox>
                                                                        <br />
                                                                        <asp:TextBox runat="server" ID="cod_doctor_citamodificar" placeholder="Codigo del doctor"></asp:TextBox>
                                                                        <br />
                                                                        <asp:TextBox runat="server" ID="fecha_citamodificar" TextMode="DateTimeLocal"></asp:TextBox>
                                                                        <br />
                                                                        <asp:Button runat="server" ID="btn_modificar_cita" CssClass="btn-success" Text="Cambiar" />

                                                                    </div>
                                                                </div>
                                                            </div>

                                                            <div class="col-sm-12">
                                                                <br />
                                                                <button class="btn btn-danger" type="button" data-toggle="collapse" data-target="#Eliminar_cita" aria-expanded="false" aria-controls="Eliminar_cita">
                                                                    Eliminar Cita
                                                                </button>
                                                                <div class="collapse" id="Eliminar_cita">
                                                                    <div class="card card-body">
                                                                        <asp:TextBox runat="server" ID="txt_cita_elimina" placeholder="Codigo de cita"></asp:TextBox>
                                                                        <br />
                                                                        <asp:Button runat="server" ID="btn_elimina" CssClass="btn btn-danger" Text="Eliminar" />

                                                                    </div>
                                                                </div>
                                                            </div>


                                                        </div>
                                                        <div class="col-sm-8">


                                                            <div class="col-sm-8">
                                                                <div class="card">
                                                                    <div class="card-body">

                                                                        <div class="divGrid">
                                                                            <div class="grid table table-hover">
                                                                                <h3>Listado de citas de la semana</h3>

                                                                                <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
                                                                                    <ContentTemplate>

                                                                                        <asp:GridView
                                                                                            ID="GridView1"
                                                                                            runat="server"
                                                                                            CssClass="datatable"
                                                                                            CellPadding="0"
                                                                                            CellSpacing="0"
                                                                                            AutoGenerateColumns="false">

                                                                                            <RowStyle CssClass="even" />
                                                                                            <HeaderStyle CssClass="header" />
                                                                                            <AlternatingRowStyle CssClass="odd" />
                                                                                            <Columns>
                                                                                                <asp:BoundField HeaderText="Codigo De Cita" DataField="id_cita" />
                                                                                                <asp:BoundField HeaderText="Fecha Y Hora Cita" DataField="fecha" />
                                                                                                <asp:BoundField HeaderText="Codigo de paciente" DataField="id_paciente" />
                                                                                                <asp:BoundField HeaderText="Codigo de medico a cargo" DataField="cod_medico" />


                                                                                            </Columns>
                                                                                        </asp:GridView>

                                                                                    </ContentTemplate>
                                                                                </asp:UpdatePanel>

                                                                            </div>
                                                                            <!-- grid -->
                                                                        </div>
                                                                        <!-- divGrid -->

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


                            </div>
                            <div class="tab-pane fade" id="nav-recetas" role="tabpanel" aria-labelledby="nav-recetas-tab">
                                <br />
                                <br />

                                <div class="container-fluid" id="cnt_recetas" runat="server">

                                    <div class="card">

                                        <div class="card-header">
                                            <h3>Recetas</h3>


                                        </div>
                                        <div class="card-body">
                                            <div class="row">

                                                <div class="col-sm-6">

                                                    <div class="col-sm-12">
                                                        <h3>
                                                            <center> Receta</center>
                                                        </h3>
                                                        <div class="col-sm-3">
                                                            <asp:TextBox ID="id_paciente_receta" runat="server" placeholder="Codigo de paciente"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <asp:TextBox ID="txt_cod_medico_receta" runat="server" placeholder="Codigo del medico"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-3">
                                                            <asp:TextBox ID="id_de_cita" runat="server" placeholder="Codigo de cita"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>

                                                        <div class="col-sm-3">
                                                            <asp:TextBox ID="precio" runat="server" placeholder="Costo de atenciones"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>

                                                        <div class="col-sm-6">
                                                            <asp:TextBox ID="descripcion_receta" runat="server" placeholder="Examenes,Notas,Horarios del medicamento" TextMode="MultiLine"></asp:TextBox>
                                                            <br />
                                                        </div>

                                                        <div class="col-sm-6">
                                                            <div class="divGrid">
                                                                <div class="grid">

                                                                    <asp:UpdatePanel ID="UpdatePanel3" runat="server" UpdateMode="Conditional">
                                                                        <ContentTemplate>

                                                                            <asp:GridView
                                                                                ID="GridView2"
                                                                                runat="server"
                                                                                CssClass="table table-hover"
                                                                                CellPadding="0"
                                                                                CellSpacing="0"
                                                                                datakeynames="Nombre,id_producto,descripcion,fecha_ingreso,fecha_vencimiento,precio,cantidad_unidades,id_marca"
                                                                                AutoGenerateColumns="false">
                                                                                <RowStyle CssClass="even" />
                                                                                <HeaderStyle CssClass="header" />
                                                                                <AlternatingRowStyle CssClass="odd" />
                                                                                <Columns>
                                                                                    <asp:TemplateField HeaderText="Agregar a la receta">
                                                                                        <ItemTemplate>
                                                                                            <asp:CheckBox ID="Marcar" runat="server" CssClass="custom-checkbox" />
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:TemplateField HeaderText="Cantidad de unidades">
                                                                                        <ItemTemplate>
                                                                                            <asp:TextBox ID="cantidad" runat="server" CssClass="text-lg-center"></asp:TextBox>
                                                                                        </ItemTemplate>
                                                                                    </asp:TemplateField>
                                                                                    <asp:BoundField HeaderText="Codigo de producto" DataField="id_producto" />
                                                                                    <asp:BoundField HeaderText="Nombre Producto" DataField="Nombre" />
                                                                                    <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
                                                                                    <asp:BoundField HeaderText="Fecha de ingreso" DataField="fecha_ingreso" />
                                                                                    <asp:BoundField HeaderText="Fecha de vencimiento" DataField="fecha_vencimiento" />
                                                                                    <asp:BoundField HeaderText="Precio" DataField="precio" />
                                                                                    <asp:BoundField HeaderText="Unidades" DataField="cantidad_unidades" />
                                                                                    <asp:BoundField HeaderText="Codigo de marca" DataField="id_marca" />
                                                                                </Columns>
                                                                            </asp:GridView>

                                                                        </ContentTemplate>
                                                                    </asp:UpdatePanel>

                                                                </div>
                                                                <!-- grid -->
                                                            </div>
                                                            <!-- divGrid -->



                                                            <br />
                                                            <br />
                                                        </div>
                                                    </div>
                                                    <div class="col-sm-6">
                                                        <asp:Button ID="btn_receta" runat="server" Text="Emitir Receta" CssClass="btn btn-primary" />
                                                        <button class="btn btn-info" type="button" data-toggle="collapse" data-target="#historial" aria-expanded="false" aria-controls="historial">
                                                            Historial de recetas
                                                        </button>

                                                    </div>

                                                </div>

                                            </div>
                                            <div class="collapse" id="historial">
                                                <div class="card card-body">

                                                    <div class="col-sm-12">
                                                        <h3>
                                                            <center> Recetas Emitidas </center>
                                                        </h3>
                                                        <div class="divGrid">
                                                            <div class="grid table table-hover">

                                                                <asp:UpdatePanel ID="UpdatePanel4" runat="server" UpdateMode="Conditional">
                                                                    <ContentTemplate>
                                                                        <asp:GridView
                                                                            ID="GridView3"
                                                                            runat="server"
                                                                            CssClass="table table-hover"
                                                                            CellPadding="0"
                                                                            CellSpacing="0"
                                                                            AutoGenerateColumns="false">
                                                                            <RowStyle CssClass="even" />
                                                                            <HeaderStyle CssClass="header" />
                                                                            <AlternatingRowStyle CssClass="odd" />
                                                                            <Columns>
                                                                                <asp:BoundField HeaderText="Codigo De Receta" DataField="id" />
                                                                                <asp:BoundField HeaderText="Codigo De Paciente" DataField="id_paciente" />
                                                                                <asp:BoundField HeaderText="Codigo Del Medico Responsable" DataField="cod_medico" />
                                                                                <asp:BoundField HeaderText="Fecha De Emision" DataField="fecha_de_registro" />
                                                                                <asp:BoundField HeaderText="Descripcion general de la receta" DataField="receta" />
                                                                                <asp:BoundField HeaderText="Codigo de cita" DataField="id_cita" />
                                                                                <asp:BoundField HeaderText="Correlativo De Cobros" DataField="id_transaccion" />
                                                                                <asp:BoundField HeaderText="Costo De Atencion" DataField="precio_atencion" />
                                                                            </Columns>
                                                                        </asp:GridView>

                                                                    </ContentTemplate>
                                                                </asp:UpdatePanel>

                                                            </div>
                                                            <!-- grid -->
                                                        </div>
                                                        <!-- divGrid -->


                                                        <div class="col-sm-6">
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





                </div>



            </div>

        </form>
    </asp:Panel>

</body>



</html>
