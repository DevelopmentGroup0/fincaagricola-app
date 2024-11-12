<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WFSupplier.aspx.cs" Inherits="Presentation.WFSupplier" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Gestion de Proveedores</h1>
    <%--Id--%>
    <asp:HiddenField ID="HFSupplierId" runat="server" />
    <%--Nit--%>
    <asp:Label ID="Label1" runat="server" Text="Ingrese un NIT"></asp:Label>
    <asp:TextBox ID="TBNit" runat="server"></asp:TextBox>
    <br />
    <%--Nombre--%>
    <asp:Label ID="Label2" runat="server" Text="Nombre de Proveedor"></asp:Label>
    <asp:TextBox ID="TBName" runat="server"></asp:TextBox>
    <br />
    <%--DDL FInca--%>
    <asp:Label ID="Label6" runat="server" Text="Seleccione una Finca"></asp:Label>
    <asp:DropDownList ID="DDLFarm" runat="server"></asp:DropDownList>
    <br />
    <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
    <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" Style="height: 26px" OnClick="BtnUpdate_Click" />
    <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label>
    <br />

    <asp:GridView ID="GVSupplier" runat="server" DataKeyNames="pro_id" AutoGenerateColumns="False" CellPadding="4" OnSelectedIndexChanged="GVSupplier_SelectedIndexChanged" OnRowDeleting="GVSupplier_RowDeleting" Width="695px" BackColor="White" BorderColor="#3366CC" BorderStyle="None" BorderWidth="1px">
        <Columns>
            <asp:BoundField DataField="pro_id" HeaderText="id" />
            <asp:BoundField DataField="pro_nit" HeaderText="NIT" />
            <asp:BoundField DataField="pro_nombre" HeaderText="Nombre de Proveedor" />
            <asp:BoundField DataField="tbl_finca_fin_id" HeaderText="Id Finca" />
            <asp:BoundField DataField="fin_nombre" HeaderText="Nombre de Finca" />
            <asp:CommandField ShowSelectButton="True" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
        <HeaderStyle BackColor="#003399" Font-Bold="True" ForeColor="#CCCCFF" />
        <PagerStyle BackColor="#99CCCC" ForeColor="#003399" HorizontalAlign="Left" />
        <RowStyle BackColor="White" ForeColor="#003399" />
        <SelectedRowStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
        <SortedAscendingCellStyle BackColor="#EDF6F6" />
        <SortedAscendingHeaderStyle BackColor="#0D4AC4" />
        <SortedDescendingCellStyle BackColor="#D6DFDF" />
        <SortedDescendingHeaderStyle BackColor="#002876" />
    </asp:GridView>
</asp:Content>
