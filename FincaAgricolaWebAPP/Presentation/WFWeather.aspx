<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="WFWeather.aspx.cs" Inherits="Presentation.WFWeather" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Gestión de clima</h1>
    <div>
        <%--Id--%>
        <asp:HiddenField ID="HFWhatherId" runat="server" />

        <%--Temperatura--%>
        <asp:Label ID="Label1" runat="server" Text="Ingrese la temperatura"></asp:Label>
        <asp:TextBox ID="TBTemperatra" runat="server"></asp:TextBox>
        <br />

        <%--humedad--%>
        <asp:Label ID="Label2" runat="server" Text="Ingrese la humedad"></asp:Label>
        <asp:TextBox ID="TBHumedad" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="BtnSave" runat="server" Text="Guardar" OnClick="BtnSave_Click" />
        <asp:Button ID="BtnUpdate" runat="server" Text="Actualizar" OnClick="BtnUpdate_Click" />
        <asp:Label ID="LblMsj" runat="server" Text=""></asp:Label>
        <br />
        
        <%--Lista de Climas--%>
    <asp:GridView ID="GVWeather" runat="server" DataKeyNames="clim_id" AutoGenerateColumns="false" OnSelectedIndexChanged="GVWeather_SelectedIndexChanged" OnRowDeleting="GVWeather_RowDeleting">
            <Columns>
                <asp:BoundField DataField="clim_id" HeaderText="Id" />
                <asp:BoundField DataField="clim_temperatura" HeaderText="Temperatura" />
                <asp:BoundField DataField="clim_humedad" HeaderText="Humedad" />
                <asp:CommandField ShowSelectButton="True"></asp:CommandField>
                <asp:CommandField ShowDeleteButton="True"></asp:CommandField>
                <asp:BoundField></asp:BoundField>

            </Columns>
        </asp:GridView>

    </div>
</asp:Content>
