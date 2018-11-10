<%@ Page Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Consecutivo.aspx.cs" Inherits="VVuelos.Consecutivo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <asp:Label ID="Label1" runat="server" ForeColor="Red"></asp:Label>
    <asp:GridView ID="GV_Consecutivo" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataKeyNames="id_consecutivo" PageSize="5" OnPageIndexChanging="GV_Consecutivo_PageIndexChanging">
        <Columns>
            <asp:BoundField DataField="id_consecutivo" HeaderText="Codigo" />
            <asp:BoundField DataField="descripcion" HeaderText="Descripcion" />
            <asp:BoundField DataField="consecutivo" HeaderText="Consecutivo" />
            <asp:HyperLinkField DataNavigateUrlFields="id_consecutivo" DataNavigateUrlFormatString="DatosConsecutivo?cod={0}" Text="Editar" />
        </Columns>
    </asp:GridView>
    <asp:Label ID="Label3" runat="server" ForeColor="Red"></asp:Label>
    <asp:Button ID="btn_nuevo" runat="server" Text="Nuevo" OnClick="btn_nuevo_Click" />
</asp:Content>
