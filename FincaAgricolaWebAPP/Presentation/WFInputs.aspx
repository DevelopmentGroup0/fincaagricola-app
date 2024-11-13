<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WFInputs.aspx.cs" Inherits="Presentation.WFInputs" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:TextBox ID="TBId" runat="server"></asp:TextBox>
    <br />
    <h2>Crea un Insumo</h2>
    <%--Id--%>
    <asp:HiddenField ID="HFInputsId" runat="server" />
    <%--Nombre--%>
    <asp:Label ID="Label2" runat="server" Text="Ingrese el nombre"></asp:Label>
    <asp:TextBox ID="TBName" runat="server"></asp:TextBox>
    <br />
    <%--Tipo--%>
    <asp:Label ID="Label3" runat="server" Text="Ingrese el tipo"></asp:Label>
    <asp:TextBox ID="TBTipo" runat="server"></asp:TextBox>
    <br />
    <%--Cantidad--%>
    <asp:Label ID="Label4" runat="server" Text="Ingrese la cantidad"></asp:Label>
    <asp:TextBox ID="TBQuantity" runat="server"></asp:TextBox>
    <br />
    <%--FkCultivo--%>
    <asp:Label ID="Label1" runat="server" Text="Seleccione el cultivo"></asp:Label>
    <asp:DropDownList ID="DDLCrops" runat="server"></asp:DropDownList>
    <br />
    <%--FkParcela--%>
    <asp:Label ID="Label6" runat="server" Text="Seleccione la parcela"></asp:Label>
    <asp:DropDownList ID="DDLParcela" runat="server"></asp:DropDownList>
    <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
    <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" OnClick="BtnUpdate_Click" />
    <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label>
    <br />
    <div>
        <asp:GridView ID="GVInputs" runat="server" AutoGenerateColumns="False" DataKeyNames="ins_id" OnSelectedIndexChanged="GVInputs_SelectedIndexChanged" OnRowDeleting="GVInputs_RowDeleting">
            <Columns>
                <asp:BoundField DataField="ins_id" HeaderText="Id" />
                <asp:BoundField DataField="ins_nombre" HeaderText="Nombre" />
                <asp:BoundField DataField="ins_tipo" HeaderText="Tipo" />
                <asp:BoundField DataField="ins_cantidad" HeaderText="Cantidad" />
                <asp:BoundField DataField="tbl_cultivo_cul_id" HeaderText="Cultivo Id" />
                <asp:BoundField DataField="tbl_cultivo_tbl_parcela_par_id" HeaderText="Parcela Id" />
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>
