<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WFParcel.aspx.cs" Inherits="Presentation.WFParcel" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Gestión de Parcela</h1>
    <div>
            <%--Id--%>
    <asp:HiddenField ID="HFParcelId" runat="server" />

    <%--Dimensiones--%>
    <asp:Label ID="Label1" runat="server" Text="Ingrese las dimensiones"></asp:Label>
    <asp:TextBox ID="TBDimensiones" runat="server"></asp:TextBox>
    <br />

    <%--Ubicación--%>
    <asp:Label ID="Label2" runat="server" Text="Ingrese la ubicación"></asp:Label>
    <asp:TextBox ID="TBUbicacion" runat="server"></asp:TextBox>
    <br />
          <%--fKFinca--%>
  <asp:Label ID="Label6" runat="server" Text="Finca"></asp:Label>
  <asp:DropDownList ID="DDLFarm" runat="server"></asp:DropDownList>
  <br />
  <%--fKClima--%>
  <asp:Label ID="Label7" runat="server" Text="Clima"></asp:Label>
  <asp:DropDownList ID="DDLWeather" runat="server"></asp:DropDownList>
  <br />
    <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
    <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" OnClick="BtnUpdate_Click" />
    <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label>
    <br />

    <%--Lista de Parcelas--%>
<asp:GridView ID="GVParcel" runat="server" DataKeyNames="parcela_id" AutoGenerateColumns="false" OnSelectedIndexChanged="GVParcel_SelectedIndexChanged" OnRowDeleting="GVParcel_RowDeleting">
        <Columns>
            <asp:BoundField DataField="parcela_id" HeaderText="Id" />
            <asp:BoundField DataField="par_dimensiones" HeaderText="Dimensiones" />
            <asp:BoundField DataField="par_ubicacion" HeaderText="Ubicación" />
             <asp:BoundField DataField="tbl_finca_fin_id" HeaderText="Finca Id" />
             <asp:BoundField DataField="Finca_nombre" HeaderText="Nombre de la finca" />
             <asp:BoundField DataField="tbl_clima_clim_id" HeaderText="Finca Id" />
             <asp:BoundField DataField="clim_temperatura" HeaderText="Temperatura" />
            <asp:CommandField ShowSelectButton="True"></asp:CommandField>
            <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
        </Columns>
    </asp:GridView>
    </div>
</asp:Content>
