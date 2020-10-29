<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="RegistrarUsuario.aspx.vb" Inherits="ClinicaNET.RegistrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ho+j7jyWK8fNQe+A12Hb8AhRq26LrZ/JpcUGGOn+Y7RsweNrtN/tE3MoK7ZeZDyx" crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/js/bootstrap.min.js" integrity="sha384-w1Q4orYjBQndcko6MimVbzY0tgp4pWB4lZ7lr30WKz0vr/aWKhXdBNmNb5D92v7s" crossorigin="anonymous"></script>


    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
</head>
<body style="background-image: url('https://wallpaperaccess.com/full/1189413.jpg'); background-repeat: no-repeat; background-size: 1920px; background-position: center top; background-attachment: fixed;">


    <form id="form1" runat="server">
        <div>
        

                    <asp:Panel runat="server" ID="pnl_general">
                        <asp:ScriptManager ID="script_manager" runat="server"></asp:ScriptManager>


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
                                            <center>Registro De Usuarios Nuevos</center>
                                        </h2>
                                        <p>
                                            Para registrarse debera proporcionar los datos que se solicitan a continuacion, antes de precionar aceptar debera
                                        verificar que todos los datos sean correctos.
                                        </p>
                                        <br />

                                        <nav>
                                            <div class="nav nav-tabs" id="nav-tab" role="tablist">
                                                <a class="nav-link active" id="nav-home-tab" data-toggle="tab" href="#nav-home" role="tab" aria-controls="nav-home" aria-selected="true">Datos Personales</a>
                                                <a class="nav-link" id="nav-profile-tab" data-toggle="tab" href="#nav-profile" role="tab" aria-controls="nav-profile" aria-selected="false">Usuario y Contraseña</a>
                                                <%--<a class="nav-link" id="nav-contact-tab" data-toggle="tab" href="#nav-contact" role="tab" aria-controls="nav-contact" aria-selected="false"></a>--%>
                                            </div>
                                        </nav>
                                        <div class="tab-content" id="nav-tabContent">
                                            <div class="tab-pane fade show active" id="nav-home" role="tabpanel" aria-labelledby="nav-home-tab">


                                                <div class="col-sm-12">
                                                    <div class="form-group">
                                                        <br />
                                                        <br />
                                                        <div class="row">


                                                            <div class="col-sm-3">
                                                                <asp:TextBox runat="server" ID="txt_nombre_1" placeholder="Primer Nombre"></asp:TextBox>

                                                            </div>
                                                            <div class="col-sm-3">
                                                                <asp:TextBox runat="server" ID="txt_nombre_2" placeholder="Segundo Nombre"></asp:TextBox>

                                                            </div>

                                                            <div class="col-sm-3">
                                                                <asp:TextBox runat="server" ID="txt_apellido_1" placeholder="Primer Apellido"></asp:TextBox>

                                                            </div>

                                                            <div class="col-sm-3">
                                                                <asp:TextBox runat="server" ID="txt_apellido_2" placeholder="Segundo Apellido"></asp:TextBox>

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
                                                    </div>
                                                </div>




                                            </div>
                                            <div class="tab-pane fade" id="nav-profile" role="tabpanel" aria-labelledby="nav-profile-tab">

                                                
                                                    <div class="row">

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

                                                    </div>
                                                    <br />

                                                    <asp:Button ID="btn_Guardar_Usuario" runat="server" class="btn-success" Text="Guardar Cambios" />

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
                                        
                        <asp:Button ID="regresar" class="btn-outline-secondary" runat="server" Text="Regresar a pagina de inicio" Visible="false" />
                                            <%--<div class="tab-pane fade" id="nav-contact" role="tabpanel" aria-labelledby="nav-contact-tab">...</div>--%>
                                        </div>

                                    </div>
                                </div>
                                    <div class="col-sm-2 ">
                                    </div>

                                </div>

                    </asp:Panel>


        </div>
        </div>
        </div>
    </form>
</body>
</html>
