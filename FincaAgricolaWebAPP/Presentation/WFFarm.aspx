<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WFFarm.aspx.cs" Inherits="Presentation.WFFarm" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Crea una Finca</h2>
    <%--Id--%>
    <asp:HiddenField ID="HFFarmId" runat="server" />
    <%--Nombre--%>
    <asp:Label ID="Label1" runat="server" Text="Ingresa un nombre"></asp:Label>
    <asp:TextBox ID="TBName" runat="server"></asp:TextBox>
    <br />
    <%--Ubicación--%>
    <asp:Label ID="Label2" runat="server" Text="Ubicación"></asp:Label>
    <asp:TextBox ID="TBLocation" runat="server"></asp:TextBox>
    <br />
    <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
    <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" Style="height: 26px" OnClick="BtnUpdate_Click" />
    <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label>
    <%-- Agregando nombres en las columnas para identificarlos en el front--%>
    <asp:GridView ID="GVFarm" runat="server" AutoGenerateColumns="False" DataKeyNames="fin_id" OnSelectedIndexChanged="GVFarm_SelectedIndexChanged" OnRowDeleting="GVFarm_RowDeleting">
        <Columns>
            <asp:BoundField DataField="fin_id" HeaderText="Id" />
            <asp:BoundField DataField="fin_nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="fin_ubicacion" HeaderText="Ubicación" />
            <asp:CommandField ShowSelectButton="true"/>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
