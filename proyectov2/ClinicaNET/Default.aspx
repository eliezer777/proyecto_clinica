<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="Default.aspx.vb" Inherits="ClinicaNET._Default" %>

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

<body style="background-image: url('https://img.wallpapersafari.com/desktop/1600/900/14/31/k4oImz.jpg'); background-repeat: no-repeat; background-size: 1920px; background-position: center top; background-attachment: fixed">
    <asp:Panel runat="server" ID="pnl_general">

        <form id="form1" runat="server">
            <asp:ScriptManager ID="script_manager" runat="server"></asp:ScriptManager>

            <br />
            <br />
            <br />
            <br />
            <br />
            <br />
            <br />

            <div class="row">
                <div class="col-sm-3">
                </div>
                <div class="col-sm-8">
                    <div class="card" style="width: 40rem;">
                        <div class="card-body">
                            <h3>
                                <center>Iniciar Sesion</center>
                                <h3></h3>
                                <form>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <label for="exampleInputEmail1">
                                                    Usuario:</label>
                                            </div>
                                            <div class="col-sm-6">
                                                <asp:TextBox ID="txt_usuario" runat="server" aria-describedby="emailHelp" class="form-control" placeholder="Ingrese su Usuario">
                                                </asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <div class="row">
                                            <div class="col-sm-3">
                                                <label for="exampleInputPassword1">
                                                    Password</label>
                                            </div>
                                            <div class="col-sm-9">
                                                <asp:TextBox ID="txt_contraseña" runat="server" TextMode="Password" ToolTip="Ingrese su password"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                    <asp:Button ID="enviar" runat="server" class="btn btn-primary" Text="Ingresar" />
                                </form>

                                <h3></h3>
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
                                                ¡Bienvenido!
                                            </div>
                                        </ContentTemplate>
                                    </asp:UpdatePanel>
                                </asp:Panel>

                            </h3>

                        </div>
                        <asp:Button ID="btn_registrar" runat="server" class="btn-secondary" Text="REGISTRATE" />



                    </div>

                </div>
            </div>
        </form>
    </asp:Panel>

</body>
</html>
