<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegistrarUsuario.aspx.vb" Inherits="ClinicaNET.RegistrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous"></link>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>

</head>
<body style="background-image: url('https://wallpaperaccess.com/full/1189413.jpg'); background-repeat: no-repeat; background-size: 1920px; background-position: center top; background-attachment: fixed;">


    <form id="form1" runat="server">

        <asp:ScriptManager ID="script_manager" runat="server"></asp:ScriptManager>
        <asp:Panel runat="server">


            <div class="row">



                <div class="col-sm-2">
                </div>
                <div class="col-sm-8">

                    <br />
                    <br />
                    <br />
                    <br />
                    <div class="card">
                        <div class="card-body">

                            <h2>
                                <center>Panel Administrativo</center>
                            </h2>
                            <asp:LinkButton ID="regresa_home" runat="server" Text="Regresa a home"></asp:LinkButton>

                            <nav>
                                <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                    <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Crear de Usuarios </a>
                                    <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Colaboradores</a>
                                    <a class="nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false">Agregar Empresas</a>
                                    <a class="nav-link" id="nav-tipo_usuarios-tab" data-toggle="tab" href="#nav-tipo_usuarios" role="tab" aria-controls="nav-tipo_usuarios" aria-selected="false">Tipos de usuarios</a>

                                </div>
                            </nav>
                            <div class="tab-content" id="nav-tabContent">
                                <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">
                                    <div class="container-fluid">


                                        <div class="toast-header">
                                            <h2>Registro De Usuarios Nuevos

                                            </h2>

                                        </div>

                                        <p>
                                            Para registrarse debera proporcionar los datos que se solicitan a continuacion, antes de precionar aceptar debera
                                        verificar que todos los datos sean correctos.
                                        </p>

                                        <div class="col-sm-12">

                                            <br />

                                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#datos_generales" aria-expanded="false" aria-controls="datos_generales">
                                                Datos generales
                                            </button>
                                            <div class="collapse" id="datos_generales">
                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Datos Generales</h5>
                                                    </div>
                                                    <div class="card card-body">

                                                        <div class="row">
                                                            <br />

                                                            <div class="col-sm-3">
                                                                <br />
                                                                <asp:TextBox runat="server" ID="txt_nombre_1" placeholder="Primer Nombre"></asp:TextBox>
                                                                <br />
                                                                <br />
                                                            </div>
                                                            <div class="col-sm-3">
                                                                <br />
                                                                <asp:TextBox runat="server" ID="txt_nombre_2" placeholder="Segundo Nombre"></asp:TextBox>
                                                                <br />
                                                                <br />
                                                            </div>

                                                            <div class="col-sm-3">
                                                                <br />
                                                                <asp:TextBox runat="server" ID="txt_apellido_1" placeholder="Primer Apellido"></asp:TextBox>
                                                                <br />
                                                                <br />
                                                            </div>

                                                            <div class="col-sm-3">
                                                                <br />
                                                                <asp:TextBox runat="server" ID="txt_apellido_2" placeholder="Segundo Apellido"></asp:TextBox>
                                                                <br />
                                                                <br />
                                                            </div>
                                                            <br />
                                                            <br />
                                                            <div class="col-sm-3">
                                                                <asp:TextBox runat="server" ID="txt_edad" placeholder="Edad"></asp:TextBox>

                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:TextBox runat="server" ID="txt_fecha_nac" TextMode="Date" ToolTip="Fecha De Nacimiento"></asp:TextBox>

                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:TextBox runat="server" ID="txt_correo" TextMode="Email" ToolTip="persona@gmail.com" placeholder="Correo Electronico"></asp:TextBox>

                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:TextBox runat="server" ID="txt_Telefono" TextMode="Number" ToolTip="Telefono" placeholder="+502 48889556"></asp:TextBox>

                                                            </div>
                                                            <br />
                                                            <br />
                                                            <div class="col-sm-3">
                                                                <asp:TextBox runat="server" ID="txt_direccion" placeholder="Direccion" ToolTip="Direccion principal"></asp:TextBox>

                                                            </div>

                                                        </div>
                                                        <br />
                                                    </div>
                                                </div>
                                            </div>
                                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#datosusuario" aria-expanded="false" aria-controls="datosusuario">
                                                Datos usuario
                                            </button>
                                            <div class="collapse" id="datosusuario">


                                                <div class="card">
                                                    <div class="card-header">
                                                        <h5>Datos de usuario</h5>
                                                    </div>
                                                    <div class="card-body">

                                                        <div class="col-sm-6">

                                                            <div class="col-sm-12">
                                                                <br />
                                                                <br />
                                                                <asp:TextBox ID="txt_usuario" runat="server" placeholder="Nombre de Usuario">
                                                                </asp:TextBox><br />

                                                                <br />
                                                            </div>
                                                            <div class="col-sm-12">
                                                                <asp:TextBox ID="txt_password" runat="server" TextMode="Password" placeholder="Contraseña" ToolTip="Contraseña"></asp:TextBox>
                                                                <br />
                                                                <br />

                                                            </div>
                                                            <div class="col-sm-12">
                                                                <asp:TextBox ID="txt_password2" runat="server" TextMode="Password" placeholder="Contraseña" ToolTip="Contraseña"></asp:TextBox>

                                                                <br />
                                                            </div>
                                                            <div class="col-sm-12">
                                                                <asp:DropDownList ID="cod_empresanuevo" runat="server" TextMode="Password" placeholder="cod_empresa" ToolTip="codigo empresa/sucursal del nuevo usuario"></asp:DropDownList>
                                                                <br />
                                                            </div>


                                                        </div>

                                                    </div>

                                                </div>
                                                <br />

                                            </div>

                                        </div>


                                        <br />

                                        <asp:Button ID="btn_Guardar_Usuario" runat="server" class="btn-success" Text="Guardar Cambios" />
                                    </div>
                                </div>
                                <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">
                                    <div class="container">
                                        <div class="toast-header">
                                            <h2>Administracion de personal
                                            </h2>

                                        </div>

                                        <p>
                                            Para registrarse debera proporcionar los datos que se solicitan a continuacion, antes de precionar aceptar debera
                                        verificar que todos los datos sean correctos. tomar en cuenta que debe de contar con el codigo de usuario para poder agregar los datos de empleado.
                                        </p>

                                        <div class="col-sm-12">
                                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#Empleados_nuevos" aria-expanded="false" aria-controls="Empleados_nuevos">
                                                Colaboradores Nuevos
                                            </button>
                                            <div class="collapse" id="Empleados_nuevos">
                                                <div class="card card-body">
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="txt_DPI_colaborador" placeholder="DPI"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="txt_nit_colaborador" placeholder="NIT"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="txt_dir_principal" placeholder="Direccion Principal"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="txt_puesto_asigna" ToolTip="Puesto" placeholder="Puesto a desempeñar"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="cod_usu_asigna" placeholder="Codigo de usuario"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="txt_cod_empresa_asigna" placeholder="Codigo de empresa"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="txt_cod_empleado_asigna" placeholder="cod_empleado"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="txt_activo_empleado" placeholder="Activo 1 (si) 0 (no)"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="Txt_salario" placeholder="Q.00.00"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="txt_fecha_inicio_empleado" TextMode="Date"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>

                                                        <div class="col-sm-6">
                                                            <asp:Button runat="server" ID="btn_agregar_empleados" Text="Agregar Empleados" CssClass="btn btn-success" />
                                                        </div>

                                                    </div>
                                                </div>
                                            </div>
                                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#Modificar_empleados" aria-expanded="false" aria-controls="Modificar_empleados">
                                                Modificar Colaborador  
                                            </button>
                                            <div class="collapse" id="Modificar_empleados">
                                                <div class="card card-body">
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txt_cod_empleado_modifica" runat="server" ToolTip="Codigo Colaborador" placeholder="Codigo Colaborador"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="fecha_fin_empleado" runat="server" TextMode="Date" ToolTip="Fecha fin de labores."></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="salario_nuevo" runat="server" placeholder="Q.00.00" ToolTip="Sueldo Nuevo"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="Puesto_nuevo" runat="server" placeholder="Puesto Nuevo"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <asp:Button ID="btn_modificar_colaborador" runat="server" Text="Actualizar" CssClass="btn btn-primary" />
                                                    </div>

                                                </div>
                                            </div>
                                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#Ingresa_medicos" aria-expanded="false" aria-controls="Ingresa_medico">
                                                Ingresar Medicos
                                            </button>
                                            <div class="collapse" id="Ingresa_medicos">
                                                <div class="card card-body">
                                                    <div class="toast-header">
                                                        <h3>Datos Generales</h3>
                                                    </div>
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txt_cod_medico" runat="server" placeholder="Codigo de usuario del medico"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txt_colegiado" runat="server" placeholder="Numero de colegiado"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txt_cod_empleado" runat="server" placeholder="codigo de empleado"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txt_fecha_de_ingreso" runat="server" TextMode="Date" ToolTip="Fecha de ingreso"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txt_fecha_de_salida" runat="server" TextMode="Date" ToolTip="Fecha de salida"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txt_tel_principal" runat="server" placeholder="+502 4477-8859"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:TextBox ID="txt_correo_principal" runat="server" placeholder="----- @ ----- .com"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>

                                                        <div class="col-sm-4">
                                                            <asp:Button ID="btn_Agregar_medicos" runat="server" CssClass="btn btn-primary" Text="Agregar Medico" />
                                                            <asp:Button ID="btn_modificar_medicos" runat="server" CssClass="btn btn-warning" Text="Modificar Medico" />


                                                        </div>


                                                    </div>

                                                </div>
                                            </div>

                                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#Listado" aria-expanded="false" aria-controls="Listado">
                                                Lista de colaboradores 
                                            </button>
                                            <div class="collapse" id="Listado">
                                                <div class="card card-body">


                                                    <div class="divGrid">
                                                        <div class="grid">

                                                            <asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Always">
                                                                <ContentTemplate>

                                                                    <asp:GridView
                                                                        ID="grid_lista_colaborador"
                                                                        runat="server"
                                                                        CssClass="datatable"
                                                                        CellPadding="0"
                                                                        CellSpacing="0"
                                                                        AutoGenerateColumns="True">

                                                                        <RowStyle CssClass="even" />
                                                                        <HeaderStyle CssClass="header" />
                                                                        <AlternatingRowStyle CssClass="odd" />
                                                                        <Columns>
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

                                            <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#Listado_medicos" aria-expanded="false" aria-controls="Listado_medicos">
                                                Lista de Medicos
                                            </button>
                                            <div class="collapse" id="Listado_medicos">

                                                <div class="container-fluid">
                                                    <div class="card card-body">
                                                        <div class="row">
                                                            <div class="col-sm-12">

                                                                <div class="divGrid table table-hover">
                                                                    <div class="grid ">

                                                                        <asp:UpdatePanel ID="UpdatePanel2" runat="server" UpdateMode="Always">
                                                                            <ContentTemplate>

                                                                                <asp:GridView
                                                                                    ID="gv_medicos"
                                                                                    runat="server"
                                                                                    CssClass="datatable"
                                                                                    CellPadding="0"
                                                                                    CellSpacing="0"
                                                                                    AutoGenerateColumns="false">

                                                                                    <RowStyle CssClass="even" />
                                                                                    <HeaderStyle CssClass="header" />
                                                                                    <AlternatingRowStyle CssClass="odd" />
                                                                                    <Columns>
                                                                                        <asp:BoundField HeaderText="Codigo Medico" DataField="cod_medico" />
                                                                                        <asp:BoundField HeaderText="Numero de colegiado" DataField="num_colegiado" />
                                                                                        <asp:BoundField Headertext="Primer Nombre" DataField="primer_apellido" />
                                                                                        <asp:BoundField headertext="Primer Apellido" DataField="primer_apellido" />
                                                                                        <asp:BoundField HeaderText="Telefono" DataField="Telefono_principal" />
                                                                                        <asp:BoundField HeaderText="Correo" DataField="Correo_principal" />
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
                                <div class="tab-pane fade show fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">

                                    <h2 class="toast-header">Gestion de empresas/sucursales       </h2>
                                    <p>
                                        Para registrarse debera proporcionar los datos que se solicitan a continuacion, antes de precionar aceptar debera
                                        verificar que todos los datos sean correctos.
                                    </p>

                                    <div class="col-sm-12">

                                        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#Empresa_crear" aria-expanded="false" aria-controls="Empresa_crear">
                                            Crear Empresas
                                        </button>
                                        <div class="collapse" id="Empresa_crear">
                                            <div class="card card-body">
                                                <div class="form-group">
                                                    <br />
                                                    <br />
                                                    <div class="row">
                                                        <div class="col-sm-4">
                                                            <asp:TextBox runat="server" ID="txt_nombre_empresa" placeholder="Nombre de empresa" ToolTip="Empresa"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>


                                                        <div class="col-sm-4">


                                                            <asp:TextBox runat="server" ID="txt_razon_social" placeholder="Razon Social" ToolTip="Razon Social"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">


                                                            <asp:TextBox runat="server" ID="txt_nit_empresa" placeholder="NIT" ToolTip="NIT"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">


                                                            <asp:TextBox runat="server" ID="txt_direccion_empresa" placeholder="Direccion" ToolTip="Direccion fisica de la empresa"></asp:TextBox>

                                                        </div>
                                                        <div class="col-sm-8">


                                                            <asp:TextBox runat="server" ID="txt_cod_empresa_nuevo" placeholder="" Enabled="false" ToolTip="Codigo de empresa por asignar"></asp:TextBox>
                                                            <br />
                                                            <br />
                                                        </div>
                                                        <div class="col-sm-4">
                                                            <asp:Button runat="server" ID="btn_agregar_empresa" class="btn btn-success" Text="Agregar Empresa" />

                                                        </div>




                                                    </div>
                                                </div>



                                            </div>
                                        </div>
                                        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#Empresa_editar" aria-expanded="false" aria-controls="Empresa_editar">
                                            Editar Empresas
                                        </button>
                                        <div class="collapse" id="Empresa_editar">
                                            <div class="card card-body">
                                                <div class="form-group">
                                                    <br />
                                                    <br />

                                                    <div class="col-sm-12">
                                                        <h3>Modificar empresas</h3>
                                                        <asp:UpdatePanel runat="server" UpdateMode="Always">
                                                            <ContentTemplate>

                                                                <div class="col-sm-12">
                                                                    <div class="col-sm-4">
                                                                        <asp:DropDownList ID="drp_empresa_modificar" runat="server"></asp:DropDownList>

                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-4">
                                                                        <asp:TextBox ID="txt_nombre_modificar" runat="server" placeholder="Nombre de Empresa/ Sucursal"></asp:TextBox>

                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-4">
                                                                        <asp:TextBox ID="txt_razon_social_modificar" runat="server" placeholder="Razon Social"></asp:TextBox>

                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                    <div class="col-sm-4">
                                                                        <asp:TextBox ID="txt_nit_modificar" runat="server" placeholder="NIT"></asp:TextBox>

                                                                        <br />
                                                                        <br />
                                                                    </div>

                                                                    <div class="col-sm-4">
                                                                        <asp:TextBox ID="txt_direccion_modificar" runat="server" placeholder="Direccion"></asp:TextBox>
                                                                        <br />
                                                                        <br />
                                                                    </div>
                                                                </div>







                                                                <asp:Button runat="server" ID="btn_modificar_empresa" class="btn btn-success" Text="Actualizar Empresa" />
                                                                <%--  <asp:Button runat="server" ID="btn_eliminar_empresa" class="btn btn-danger" Text="Eliminar Emresa" ToolTip="Nota: Solo puede eliminar empresas sin registros." />--%>
                                                            </ContentTemplate>

                                                        </asp:UpdatePanel>

                                                    </div>
                                                </div>
                                            </div>
                                        </div>

                                    </div>

                                </div>
                                <div class="tab-pane fade show fade" id="nav-tipo_usuarios" role="tabpanel" aria-labelledby="nav-tipo_usuarios-tab">
                                    <div class="container-fluid">
                                        <div class="row">
                                            <div class="col-sm-12">
                                                <br />
                                                <div class="card">
                                                    <div class="card-header">
                                                        Administracion - tipos y permisos de usuarios
                                                    </div>

                                                    <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#Tipos_usuarios_agg" aria-expanded="false" aria-controls="Tipos_usuarios_agg">
                                                        Tipos de usuarios
                                                    </button>
                                                    <div class="collapse" id="Tipos_usuarios_agg">


                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h5>Agregar y Eliminar Tipos De Usuarios</h5>
                                                            </div>
                                                            <div class="card-body">

                                                                <div class="row">

                                                                    <div class="col-sm-6">

                                                                        <div class="col-sm-3">
                                                                            <asp:TextBox ID="txt_tipo_usuario" runat="server" placeholder="Tipo de usuario"></asp:TextBox>
                                                                        </div>
                                                                        <br />
                                                                        <div class="col-sm-3">
                                                                            <asp:TextBox ID="txt_descripcion_tipo_usuario" runat="server" placeholder="Descripcion del tipo de usuario"></asp:TextBox>
                                                                        </div>
                                                                        <br />
                                                                        <div class="col-sm-3">
                                                                            <asp:TextBox ID="txt_cod_tipo_usuario_asignaF" Enabled="false" runat="server" placeholder=""></asp:TextBox>
                                                                        </div>
                                                                        <div class="col-sm-3">
                                                                            <asp:DropDownList ID="drp_tipo_empresa" runat="server"></asp:DropDownList>
                                                                        </div>
                                                                        <br />
                                                                        <div class="col-sm-3">
                                                                            <asp:Button runat="server" ID="btn_guarda_tipo" Text="Guardar tipo" class="btn btn-primary" />
                                                                        </div>

                                                                        <br />
                                                                        <br />

                                                                        <div class="col-sm-12">


                                                                            <div class="divGrid">
                                                                                <div class="grid">

                                                                                    <asp:UpdatePanel ID="UpdatePanel" runat="server" UpdateMode="Always">
                                                                                        <ContentTemplate>

                                                                                            <asp:GridView
                                                                                                ID="dtg_tipo_usuario"
                                                                                                runat="server"
                                                                                                CssClass="datatable"
                                                                                                CellPadding="0"
                                                                                                CellSpacing="0"
                                                                                                AutoGenerateColumns="false">

                                                                                                <RowStyle CssClass="even" />
                                                                                                <HeaderStyle CssClass="header" />
                                                                                                <AlternatingRowStyle CssClass="odd" />
                                                                                                <Columns>
                                                                                                    <asp:BoundField HeaderText="Codigo Tipo Usuario" DataField="cod_tipo" />
                                                                                                    <asp:BoundField HeaderText="Nombre de tipo" DataField="Tipo" />
                                                                                                    <asp:BoundField HeaderText="Descripcion" DataField="Descripcion" />
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

                                                                    <div class="col-sm-6">

                                                                        <%--<div class="col-sm-3">
                                                                            <asp:TextBox ID="TextBox1" runat="server" placeholder="Codigo del usuario"></asp:TextBox>
                                                                        </div>
                                                                        <br />--%>
                                                                        <div class="col-sm-9">
                                                                            <asp:TextBox ID="txt_cod_eliminar_usu" runat="server" placeholder="Codigo del tipo de usuario a eliminar"></asp:TextBox>
                                                                        </div>
                                                                        <br />

                                                                        <br />
                                                                        <div class="col-sm-3">
                                                                            <asp:Button runat="server" ID="btn_eliminar_tipo" Text="Eliminar tipo" class="btn btn-danger" />
                                                                        </div>



                                                                    </div>

                                                                </div>


                                                            </div>
                                                        </div>
                                                    </div>
                                                    <br />
                                                    <br />
                                                    <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseExample" aria-expanded="false" aria-controls="collapseExample">
                                                        Permisos usuario
                                                    </button>
                                                    <div class="collapse" id="collapseExample">


                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h5>Accesos y permisos para el usuario</h5>
                                                            </div>
                                                            <div class="card-body">

                                                                <div class="col-sm-6">
                                                                    <p>
                                                                        Seleccione el tipo de usuario se sugiere configurar los permisos como en la tabla inferior.
                                                                    </p>
                                                                    <asp:DropDownList ID="drop_tipo_usuario" runat="server" CssClass="dropdown-item" ToolTip="Tipo de usuario"></asp:DropDownList>
                                                                    <br />

                                                                </div>
                                                                <div class="col-sm-6">
                                                                    <table class="table-responsive-sm table table-dark">
                                                                        <tr>
                                                                            <th>Tipo de usuario :</th>
                                                                            <td>Administrativo
                                                                            </td>
                                                                            <td>Operativo
                                                                            </td>
                                                                            <td>General
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Codigo : 
                                                                            </th>
                                                                            <td>1
                                                                            </td>
                                                                            <td>2
                                                                            </td>
                                                                            <td>3
                                                                            </td>
                                                                        </tr>
                                                                        <tr>
                                                                            <th>Modulos Acceso:
                                                                            </th>
                                                                            <td>Crear usuarios, Inventario, Crear Expedientes
                                                                            </td>
                                                                            <td>Asignacion de camas,Agenda Citas,Recetas
                                                                            </td>
                                                                            <td>Crear usuarios, Inventario, Crear Expedientes,Asignacion de camas,Agenda Citas,Recetas
                                                                            </td>
                                                                        </tr>
                                                                    </table>
                                                                </div>
                                                                <div class="col-sm-8">
                                                                    <asp:TextBox ID="txt_cod_tipo" runat="server" placeholder="Codigo Usuario"></asp:TextBox>
                                                                    <br />
                                                                    <br />
                                                                </div>
                                                                <div class="col-sm-8">
                                                                    <asp:DropDownList runat="server" ID="drp_modulo_permiso" ToolTip="Modulo Permiso"></asp:DropDownList>

                                                                    <br />
                                                                    <br />
                                                                </div>
                                                                <div class="col-sm-8">
                                                                </div>
                                                                <div class="col-sm-8">
                                                                    <asp:Button runat="server" ID="btn_guardar_permisos" Text="Guardar" class="btn btn-primary" />

                                                                    <asp:Button runat="server" ID="btn_quitar_permisos" Text="Quitar" CssClass="btn btn-danger" />


                                                                    <br />
                                                                </div>


                                                            </div>

                                                        </div>

                                                        <br />


                                                    </div>
                                                    <br />
                                                    <br />
                                                    <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#Lst_usuarios" aria-expanded="false" aria-controls="Lst_usuarios">
                                                        Listado de usuario y permisos
                                                    </button>
                                                    <div class="collapse" id="Lst_usuarios">


                                                        <div class="card">
                                                            <div class="card-header">
                                                                <h5>Listado General de usuarios</h5>
                                                            </div>
                                                            <div class="card-body">

                                                                <div class="divGrid table table-hover">
                                                                    <div class="grid">

                                                                        <asp:UpdatePanel ID="UpdatePanel12" runat="server" UpdateMode="Always">
                                                                            <ContentTemplate>

                                                                                <asp:GridView
                                                                                    ID="GRID_LISTA_USUARIOS"
                                                                                    runat="server"
                                                                                    CssClass="datatable"
                                                                                    CellPadding="0"
                                                                                    CellSpacing="0"
                                                                                    AutoGenerateColumns="false">

                                                                                    <RowStyle CssClass="even" />
                                                                                    <HeaderStyle CssClass="header" />
                                                                                    <AlternatingRowStyle CssClass="odd" />
                                                                                    <Columns>
                                                                                        <asp:BoundField HeaderText="Codigo de usuario" DataField="cod_usuario" />
                                                                                        <asp:BoundField HeaderText="Usuario" DataField="usuario" />
                                                                                        <asp:BoundField HeaderText="Habilitado" DataField="habilitado" />
                                                                                        <asp:BoundField HeaderText="Tipo de Usuario" DataField="tipo_usuario" />
                                                                                        <asp:BoundField HeaderText="Fecha De Creacion" DataField="fecha_creacion" />
                                                                                        <asp:BoundField HeaderText="Fecha De Modificacion" DataField="fecha_modificacion" />
                                                                                        <asp:BoundField HeaderText="Codigo de modulo habilitado" DataField="id_pagina" />
                                                                                        <asp:BoundField HeaderText="Empresa" DataField="cod_empresa" />
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
                </div>






                <asp:Panel runat="server" ID="pnl_notificacion">
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
                                ¡Usuario creado correctamente!
                            </div>
                        </ContentTemplate>
                    </asp:UpdatePanel>
                </asp:Panel>
            </div>

            <asp:Button ID="regresar" class="btn-outline-secondary" runat="server" Text="Regresar a pagina de inicio" Visible="false" />
            <%--<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>--%>


            <asp:HiddenField ID="hdnSelectedTab" runat="server" Value="0" />
        </asp:Panel>


        <script type="text/javascript">
            $(function () {
                $("#tabs").tabs({
                    activate: function () {
                        var selectedTab = $('#tabs').tabs('option', 'active');
                        $("#<%= hdnSelectedTab.ClientID %>").val(selectedTab);
                    },
                    active: document.getElementById('<%= hdnSelectedTab.ClientID %>').value
                });
            });
        </script>
    </form>



</body>
</html>
