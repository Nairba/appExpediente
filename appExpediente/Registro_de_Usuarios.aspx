<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registro_de_Usuarios.aspx.cs" Inherits="appExpediente.Registro_de_Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <%--ingresa los datos--%>



        <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-dark rounded shadow-sm">
            <div class="lh-100">
                <h4 class="mb-0 text-white lh-100 text-center">Mantenimiento Usuario</h4>
            </div>
        </div>

        <div>

            <div>
                <div>
                    <asp:Label ID="Label1" runat="server" Text="Nombre"></asp:Label>
                    <asp:TextBox ID="txtNombre" runat="server"></asp:TextBox>
                </div>

                
                <div>
                    <asp:Label ID="Label10" runat="server" Text="Priemer Apellido"></asp:Label>
                    <asp:TextBox ID="txtApellido1" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label2" runat="server" Text="Segundo Apellido"></asp:Label>
                    <asp:TextBox ID="txtApellido2" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label3" runat="server" Text="Cédula"></asp:Label>
                    <asp:TextBox ID="txtCedula" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label4" runat="server" Text="Email"></asp:Label>
                    <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
                </div>

                <div>
                    <asp:Label ID="Label5" runat="server" Text="Sexo"></asp:Label>
                    <div>
                        <label class="radio-container m-r-45">
                            Masculino
                                        <asp:RadioButton ID="rdMasculino" runat="server"
                                            GroupName="rdSexo" />
                            <span class="checkmark"></span>
                        </label>
                        <label class="radio-container">
                            Femenino
                                            <asp:RadioButton ID="rdFemenino" runat="server"
                                                GroupName="rdSexo" />
                            <span class="checkmark"></span>
                        </label>
                        <br />
                        <br />
                        <asp:Label ID="lblSms" runat="server" Text=""
                            Visible="false" ForeColor="Red" SetFocusOnError="true"></asp:Label>
                    </div>
                </div>

                <div>
                    <div>
                        <asp:Label ID="Label6" runat="server" Text="Tipo de Usuario"></asp:Label>
                        <asp:DropDownList ID="ddlTipoUsuario"
                            name="tipoUsuario" runat="server"
                            CssClass="mydropdownlist1">
                        </asp:DropDownList>
                    </div>

                    <div>
                        <asp:Label ID="Label7" runat="server" Text="Estado"></asp:Label>
                        <asp:DropDownList ID="ddlEstado"
                            name="estado" runat="server"
                            CssClass="mydropdownlist1">
                        </asp:DropDownList>
                    </div>
                </div>

                <div>
                    <div>
                        <asp:Label ID="Label8" runat="server" Text="Contraseña"></asp:Label>
                        <asp:TextBox ID="txtContrasenna" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <div>
                        <asp:Label ID="Label9" runat="server" Text="Confirmar Contraseña"></asp:Label>
                        <asp:TextBox ID="txtConfirmarContrasenna" runat="server" TextMode="Password"></asp:TextBox>
                    </div>

                    <asp:Label ID="lblSms2" runat="server" Text=""
                        Visible="false" ForeColor="Red"></asp:Label>
                </div>
            </div>

            <div>
                <div>
                    <asp:Button ID="btnGuardar" runat="server" Text="Guardar"
                        OnClick="btnGuardar_Click" />
                </div>
                <div>
                    <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" />
                </div>
            </div>

            <div>
                <h4>Lista de Usuarios</h4>
                <asp:GridView ID="grvListaUsuarios" runat="server"
                    AutoGenerateColumns="false"
                    OnSelectedIndexChanged="ddlListaUsuarios_SelectedIndexChanged">
                    <Columns>
                       
                        <asp:BoundField DataField="email_ID" HeaderText="Email"></asp:BoundField>
                        <asp:BoundField DataField="identificacion" HeaderText="C&#233;dula"></asp:BoundField>
                        <asp:BoundField DataField="nombre" HeaderText="Nombre"></asp:BoundField>
                        <asp:BoundField DataField="primer_apellido" HeaderText="Primer Apellido"></asp:BoundField>
                        <asp:BoundField DataField="segundo_apellido" HeaderText="Segundo Aepllido"></asp:BoundField>
                        <asp:BoundField DataField="sexo" HeaderText="Sexo"></asp:BoundField>
                        <asp:BoundField DataField="tipoUsuario.descripciony" HeaderText="Tipo de Usuario"></asp:BoundField>
                        <asp:BoundField DataField="estado" HeaderText="Estado"></asp:BoundField>
                         <asp:CommandField SelectText="Editar" ShowEditButton="true"/>
                         <asp:CommandField SelectText="Consultar" ShowSelectButton="true" />
                    </Columns>

                </asp:GridView>
            </div>
        </div>
    </div>

</asp:Content>
