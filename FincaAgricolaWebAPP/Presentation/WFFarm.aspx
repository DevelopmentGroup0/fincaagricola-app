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
    <asp:GridView ID="GVFarm" runat="server" AutoGenerateColumns="False" DataKeyNames="fin_id" OnSelectedIndexChanged="GVFarm_SelectedIndexChanged" OnRowDeleting="GVFarm_RowDeleting" Width="720px" CellPadding="4" ForeColor="#333333" GridLines="None">
        <Columns>
            <asp:BoundField DataField="fin_id" HeaderText="Id" />
            <asp:BoundField DataField="fin_nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="fin_ubicacion" HeaderText="Ubicación" />
            <asp:CommandField ShowSelectButton="true"/>
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
