<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WFProducts.aspx.cs" Inherits="Presentation.WFProducts" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Crea un Producto</h2>
    <%--Id--%>
    <asp:HiddenField ID="HFProductId" runat="server" />
    <%--Nombre--%>
    <asp:Label ID="Label1" runat="server" Text="Nombre del Producto"></asp:Label>
    <asp:TextBox ID="TBName" runat="server"></asp:TextBox>
    <br />
    <%--Descripción--%>
    <asp:Label ID="Label2" runat="server" Text="Descripción"></asp:Label>
    <asp:TextBox ID="TBDescription" runat="server"></asp:TextBox>
    <br />
    <%--Cantidad--%>
    <asp:Label ID="Label3" runat="server" Text="Cantidad (Unds)"></asp:Label>
    <asp:TextBox ID="TBCantidad" runat="server"></asp:TextBox>
    <br />
    <%--Precio--%>
    <asp:Label ID="Label4" runat="server" Text="Precio"></asp:Label>
    <asp:TextBox ID="TBPrecio" runat="server"></asp:TextBox>
    <br />
    <%--Imagen--%>
    <asp:Label ID="Label5" runat="server" Text="Añade una Imagen"></asp:Label>
    <asp:TextBox ID="TBImg" runat="server"></asp:TextBox>
    <br />
    <%--fKProveedor--%>
    <asp:Label ID="Label6" runat="server" Text="Proveedor"></asp:Label>
    <asp:DropDownList ID="DDLSupplier" runat="server"></asp:DropDownList>
    <br />
    <%--fKCategoria--%>
    <asp:Label ID="Label7" runat="server" Text="Categoría"></asp:Label>
    <asp:DropDownList ID="DDLCategory" runat="server"></asp:DropDownList>
    <br />
    <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
    <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" Style="height: 26px" OnClick="BtnUpdate_Click" />
    <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label>
    <asp:GridView ID="GVPriducts" runat="server" DataKeyNames="producto_id" AutoGenerateColumns="False" OnSelectedIndexChanged="GVPriducts_SelectedIndexChanged" OnRowDeleting="GVProduct_RowDeleting">
        <Columns>
            <asp:BoundField DataField="producto_id" HeaderText="Id" />
            <asp:BoundField DataField="pro_nombre" HeaderText="Nombre" />
            <asp:BoundField DataField="pro_descripcion" HeaderText="Descripción" />
            <asp:BoundField DataField="pro_cantidad" HeaderText="Cantidad (Unds)" />
            <asp:BoundField DataField="pro_precio" HeaderText="Precio" />
            <asp:BoundField DataField="pro_img" HeaderText="LinkFoto" />
            <asp:BoundField DataField="tbl_proveedor_pro_id" HeaderText="Proveedor ID" />
            <asp:BoundField DataField="proveedor_nombre" HeaderText="Nombre Proveedor" />
            <asp:BoundField DataField="tbl_categoria_cat_id" HeaderText="Categoría Id" />
            <asp:BoundField DataField="cat_nombre" HeaderText="Nombre Categoría" />
            <asp:CommandField ShowSelectButton="true" />
            <asp:CommandField ShowDeleteButton="True" />
        </Columns>
    </asp:GridView>
</asp:Content>
