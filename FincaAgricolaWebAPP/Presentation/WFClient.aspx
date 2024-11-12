<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WFClient.aspx.cs" Inherits="Presentation.WFClient" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Crea un Cliente</h2>
<%--Id--%>
<asp:HiddenField ID="HFClientId" runat="server" />
<%--Nombre--%>
<asp:Label ID="Label1" runat="server" Text="Ingresa un nombre"></asp:Label>
<asp:TextBox ID="TBName" runat="server"></asp:TextBox>
<br />
<%--Correo--%>
<asp:Label ID="Label2" runat="server" Text="Correo"></asp:Label>
<asp:TextBox ID="TBEmail" runat="server"></asp:TextBox>
<br />
<%--Contraseña--%>
<asp:Label ID="Label3" runat="server" Text="Contraseña"></asp:Label>
<asp:TextBox ID="TBPassword" runat="server"></asp:TextBox>
<br />
<%--Direccion--%>
<asp:Label ID="Label4" runat="server" Text="Direcccion"></asp:Label>
<asp:TextBox ID="TBLocation" runat="server"></asp:TextBox>
<br />
<%--Ciudad--%>
<asp:Label ID="Label5" runat="server" Text="Ciudad"></asp:Label>
<asp:TextBox ID="TBCity" runat="server"></asp:TextBox>
<br />
<asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
<asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" Style="height: 26px" OnClick="BtnUpdate_Click" />
<asp:Label ID="LblMsj" runat="server" Text=""></asp:Label>
<%-- Agregando nombres en las columnas para identificarlos en el front--%>
    <asp:GridView ID="GVClient" runat="server" DataKeyNames="cli_id" AutoGenerateColumns="False" OnSelectedIndexChanged="GVClient_SelectedIndexChanged" OnRowDeleting="GVClient_RowDeleting">
    <Columns>
        <asp:BoundField DataField="cli_id" HeaderText="Id" />
        <asp:BoundField DataField="cli_nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="cli_correo" HeaderText="Correo" />
        <asp:BoundField DataField="cli_contrasena" HeaderText="Contraseña" />
        <asp:BoundField DataField="cli_direccion" HeaderText="Direccion" />
        <asp:BoundField DataField="cli_ciudad" HeaderText="Ciudad" />
        <asp:CommandField ShowSelectButton="true"/>
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
</asp:Content>
