<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registro_de_Usuarios.aspx.cs" Inherits="appExpediente.Registro_de_Usuarios" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <h4>Lista de Usuarios</h4>
        <asp:GridView ID="grvListaUsuarios" runat="server"
            AutoGenerateColumns="false"
            OnSelectedIndexChanged="ddlListaUsuarios_SelectedIndexChanged">
            <Columns>
                <asp:CommandField SelectText="Editar" ShowEditButton="true" />
                <asp:BoundField DataField="email_ID" HeaderText="Email"></asp:BoundField>
                <asp:BoundField DataField="identificacion" HeaderText="C&#233;dula"></asp:BoundField>
                <asp:BoundField DataField="nombre" HeaderText="Nombre"></asp:BoundField>
                <asp:BoundField DataField="primer_apellido" HeaderText="Primer Apellido"></asp:BoundField>
                <asp:BoundField DataField="segundo_apellido" HeaderText="Segundo Aepllido"></asp:BoundField>
                <asp:BoundField DataField="sexo" HeaderText="Sexo"></asp:BoundField>
                <asp:BoundField DataField="tipoUsuario.descripciony" HeaderText="Tipo de Usuario"></asp:BoundField>
                <asp:BoundField DataField="estado" HeaderText="Estado"></asp:BoundField>
            </Columns>

        </asp:GridView>
    </div>


</asp:Content>
