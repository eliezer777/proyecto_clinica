﻿<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="web_umg_bd._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
	<asp:Label ID="lbl_nombres" runat="server" CssClass="badge" Text="Nombres"></asp:Label>
    <asp:TextBox ID="txt_nombres" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="lbl_apellidos" runat="server" CssClass="badge" Text="Apellidos"></asp:Label>
    <asp:TextBox ID="txt_apellidos" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="lbl_edad" runat="server" CssClass="badge" Text="Edad"></asp:Label>
    <asp:TextBox ID="txt_edad" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="lbl_telefono" runat="server" CssClass="badge" Text="Telefono"></asp:Label>
    <asp:TextBox ID="txt_telefono" runat="server" CssClass="form-control" TextMode="Number"></asp:TextBox>
    <asp:Label ID="lbl_fn" runat="server" CssClass="badge" Text="Fecha Nacimiento"></asp:Label>
    <asp:TextBox ID="txt_fn" runat="server" CssClass="form-control" TextMode="Date"></asp:TextBox>
    <asp:Label ID="lbl_areal" runat="server" CssClass="badge" Text="area laboral"></asp:Label>
    <asp:TextBox ID="txt_areal" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="lbl_genero" runat="server" CssClass="badge" Text="Genero"></asp:Label>
    <asp:TextBox ID="txt_genero" runat="server" CssClass="form-control"></asp:TextBox>
    <asp:Label ID="lbl_puesto" runat="server" CssClass="badge" Text="Puesto"></asp:Label>
    <asp:DropDownList ID="drop_puesto" runat="server" CssClass="form-control"></asp:DropDownList>
    <asp:Button ID="btn_agregar" runat="server" Text="Agregar" CssClass="btn btn-info btn-lg" OnClick="btn_agregar_Click" />
    <asp:Button ID="btn_modificar" runat="server" OnClick="btn_modificar_Click" Text="Modificar" CssClass="btn btn-success btn-lg" Visible="False" />
    <asp:Label ID="lbl_mensaje" runat="server" CssClass="alert-info"></asp:Label>
    <asp:GridView ID="grid_empleados" runat="server" AutoGenerateColumns="False" CssClass="table-condensed" DataKeyNames="id,id_puesto" OnRowDeleting="grid_empleados_RowDeleting" OnSelectedIndexChanged="grid_empleados_SelectedIndexChanged">
        <Columns>
            <asp:CommandField ButtonType="Button" SelectText="Ver" ShowSelectButton="True" ControlStyle-CssClass="btn btn-info" >
<ControlStyle CssClass="btn btn-info"></ControlStyle>
            </asp:CommandField>
            <asp:TemplateField ShowHeader="False">
                <ItemTemplate>
                    <asp:Button ID="Button1" runat="server" CausesValidation="False" CommandName="Delete" Text="Eliminar" OnClientClick="javascript:if(!confirm('¿Desea Eliminar?'))return false"  />
                </ItemTemplate>
                <ControlStyle CssClass="btn btn-danger" />
            </asp:TemplateField>
            <asp:BoundField DataField="nombres" HeaderText="Nombres" />
            <asp:BoundField DataField="apellidos" HeaderText="Apellidos" />
            <asp:BoundField DataField="edad" HeaderText="Direccion" />
            <asp:BoundField DataField="telefono" HeaderText="Telefono" />
            <asp:BoundField DataField="fecha_nacimiento" DataFormatString="{0:d}" HeaderText="Nacimiento" />
            <asp:BoundField DataField="areal" HeaderText="Area Laboral" />
            <asp:BoundField DataField="genero" HeaderText="Genero" />
            <asp:BoundField DataField="puesto" HeaderText="Puesto" />
        </Columns>
    </asp:GridView>
</asp:Content>
