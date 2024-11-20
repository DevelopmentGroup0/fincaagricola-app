<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WFUsers.aspx.cs" Inherits="Presentation.WFUsers" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Crea un usuario</h2>
<%--Id--%>
<asp:HiddenField ID="HFUsersId" runat="server" />
<%--Nombre--%>
<asp:Label ID="Label1" runat="server" Text="Ingresa un nombre"></asp:Label>
<asp:TextBox ID="TBName" runat="server"></asp:TextBox>
<br />
<%--Correo--%>
<asp:Label ID="Label2" runat="server" Text="Ingresa el correo"></asp:Label>
<asp:TextBox ID="TBEmail" runat="server"></asp:TextBox>
<br />
<%--Contraseña--%>
<asp:Label ID="Label3" runat="server" Text="Ingresa la contraseña"></asp:Label>
<asp:TextBox ID="TBPassword" runat="server"></asp:TextBox>
<br />
<%--Rol--%>
<asp:Label ID="Label4" runat="server" Text="Elige tu Rol"></asp:Label>
<asp:TextBox ID="TBRol" runat="server"></asp:TextBox>
<br />
<asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
<asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" Style="height: 26px" OnClick="BtnUpdate_Click" />
<asp:Label ID="LblMsj" runat="server" Text=""></asp:Label>
<%-- Agregando nombres en las columnas para identificarlos en el front--%>
<asp:GridView ID="GVUsers" runat="server" AutoGenerateColumns="False" DataKeyNames="usu_id" OnSelectedIndexChanged="GVUsers_SelectedIndexChanged" OnRowDeleting="GVUsers_RowDeleting">
    <Columns>
        <asp:BoundField DataField="usu_id" HeaderText="Id" />
        <asp:BoundField DataField="usu_nombre" HeaderText="Nombre" />
        <asp:BoundField DataField="usu_correo" HeaderText="Correo" />
        <asp:BoundField DataField="usu_contrasena" HeaderText="Contraseña" />
        <asp:BoundField DataField="usu_rol" HeaderText="Rol" />
        <asp:CommandField ShowSelectButton="true"/>
        <asp:CommandField ShowDeleteButton="True" />
    </Columns>
</asp:GridView>
</asp:Content>
