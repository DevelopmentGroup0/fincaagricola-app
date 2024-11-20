<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WFCrop.aspx.cs" Inherits="Presentation.WFCrop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Gestión de Cultivos</h1>
    <div>
        <%--Id--%>
        <asp:HiddenField ID="HFCultivolId" runat="server" />

        <%--Riego de Cultivo--%>
        <a href="WFIrrigation.aspx">
            <span class="material-icons-sharp">Riego de Cultivos
            </span>
        </a>
        <%--Nombre Cultivo--%>
        <asp:Label ID="Label1" runat="server" Text="Ingrese nombre del cultivo"></asp:Label>
        <asp:TextBox ID="TBNombre" runat="server"></asp:TextBox>
        <br />

        <%--Descripción--%>
        <asp:Label ID="Label2" runat="server" Text="Ingrese la descripción"></asp:Label>
        <asp:TextBox ID="TBDescripcion" runat="server"></asp:TextBox>
        <br />
        <%--fKParcela--%>
        <asp:Label ID="Label6" runat="server" Text="Parcela ubicación"></asp:Label>
        <asp:DropDownList ID="DDLParcel" runat="server"></asp:DropDownList>
        <br />
        <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
        <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" OnClick="BtnUpdate_Click" />
        <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label>
        <br />
        <%--Lista de Cultivos--%>
        <asp:GridView ID="GVCrop" runat="server" DataKeyNames="cultivo_id" AutoGenerateColumns="false" OnSelectedIndexChanged="GVCrop_SelectedIndexChanged" OnRowDeleting="GVCrop_RowDeleting">
            <Columns>
                <asp:BoundField DataField="cultivo_id" HeaderText="Id" />
                <asp:BoundField DataField="cul_nombre" HeaderText="Nombre del Cultivo" />
                <asp:BoundField DataField="cul_descripcion" HeaderText="Descripcion" />
                <asp:BoundField DataField="tbl_parcela_par_id" HeaderText="Parcela Id" />
                <asp:BoundField DataField="Parcela_ubicacion" HeaderText="Ubicacion Parcela" />
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField></asp:BoundField>

            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
