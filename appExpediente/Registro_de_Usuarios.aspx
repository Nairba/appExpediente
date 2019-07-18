<%@ Page Title="" Language="C#" MasterPageFile="~/Principal.Master" AutoEventWireup="true" CodeBehind="Registro_de_Usuarios.aspx.cs" Inherits="appExpediente.Registro_de_Usuarios" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div class="container">
        <div class="d-flex align-items-center p-3 my-3 text-white-50 bg-dark rounded shadow-sm">
            <div class="lh-100">
                <h4 class="mb-0 text-white lh-100 text-center">Mantenimiento Usuario</h4>
            </div>
        </div>

        <div class="card bg-light mb-3">
            <div class="card-body">
                <div class="form-row">

                    <div class="form-row col-md-12">
                     <div class="form-group col-md-3 mb-3">
                        <asp:Label ID="Label3" runat="server" Text="Cédula" CssClass="font-robo"></asp:Label>
                        <asp:TextBox ID="txtCedula" runat="server" CssClass="form-control"></asp:TextBox>

                    </div>

                    <div class="form-group col-md-3 mb-3 ">
                        <asp:Label ID="Label1" runat="server" Text="Nombre" CssClass="font-robo"></asp:Label>
                        <asp:TextBox ID="txtNombre" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group col-md-3 mb-3">
                        <asp:Label ID="Label10" runat="server" Text="Priemer Apellido" CssClass="font-robo"></asp:Label>
                        <asp:TextBox ID="txtApellido1" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>
            </div>

                    <div class="form-row col-md-12">
                    <div class="form-group col-md-3 mb-3">
                        <asp:Label ID="Label2" runat="server" Text="Segundo Apellido" CssClass="font-robo"></asp:Label>
                        <asp:TextBox ID="txtApellido2" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group col-md-3 mb-3">
                        <asp:Label ID="Label4" runat="server" Text="Email" CssClass="font-robo"></asp:Label>
                        <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group col-md-3 mb-3">
                        <asp:Label ID="Label5" runat="server" Text="Sexo" CssClass="font-robo"></asp:Label>
                        <div class="form-check disabled">
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
                        </div>

                    <div class="form-row col-md-12">
                        <div class="form-group col-md-4 mb-3">
                            <asp:Label ID="Label6" runat="server" Text="Tipo de Usuario" CssClass="font-robo"></asp:Label>
                            <asp:DropDownList ID="ddlTipoUsuario"
                                name="tipoUsuario" runat="server"
                                CssClass="form-control">
                            </asp:DropDownList>
                        </div>

                        <div class="form-group col-md-4 mb-3">
                            <asp:Label ID="Label7" runat="server" Text="Estado" CssClass="font-robo"></asp:Label>
                            <asp:DropDownList ID="ddlEstado"
                                name="estado" runat="server"
                                CssClass="form-control">
                            </asp:DropDownList>
                        </div>
                    </div>


                    <div class="form-group col-md-3 mb-3">
                        <asp:Label ID="lblContrasenna" runat="server" Text="Contraseña" CssClass="font-robo"></asp:Label>
                        <asp:TextBox ID="txtContrasenna" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    </div>

                    <div class="form-group col-md-3 mb-3">
                        <asp:Label ID="lblConfirmarContrasenna" runat="server" Text="Confirmar Contraseña" CssClass="font-robo"></asp:Label>
                        <asp:TextBox ID="txtConfirmarContrasenna" runat="server" TextMode="Password" CssClass="form-control"></asp:TextBox>
                    </div>

                    <asp:Label ID="lblSms2" runat="server" Text=""
                        Visible="false" ForeColor="Red"></asp:Label>
                </div>

                <div class="row">
                    <div class="form-group col-md-2 mb-3">
                        <asp:Button ID="btnGuardar" runat="server" Text="Guardar"
                            OnClick="btnGuardar_Click" CssClass="btn btn-primary" />
                    </div>
                    <div class="form-group col-md-2 mb-3">
                        <asp:Button ID="btnCancelar" runat="server" Text="Cancelar" CssClass="btn btn-primary" />
                    </div>
                </div>
            </div>
        </div>

        <div class="card bg-light mb-3">
            <div class="card-body">
                <div class="form-row">
                    <div class="col-md-12">
                        <div class="card">
                            <div class="card-header bg-dark ">
                                <h4 class="mb-3 text-white">Lista de Usuarios</h4>
                                <asp:Label ID="Label8" runat="server" Text="Buscar" CssClass="text-white"></asp:Label>
                                <asp:TextBox ID="txtBuscar" runat="server"  CssClass="form-control"></asp:TextBox>
                                <hr />
                            </div>
                            <div class="card-content">
                                <div class="table-responsive">
                                    <asp:GridView ID="grvListaUsuarios" runat="server"
                                        AutoGenerateColumns="false"
                                        AutoGenerateEditButton="true"
                                        OnRowEditing="grvListaUsuarios_RowEditing"
                                        OnRowCancelingEdit="grvListaUsuarios_RowCancelingEdit"
                                        OnRowDataBound="grvListaUsuarios_RowDataBound"
                                        OnRowUpdating="grvListaUsuarios_RowUpdating">
                                        <Columns>
                                            <asp:BoundField DataField="email_ID" HeaderText="Email" ReadOnly="true" />
                                            <asp:TemplateField HeaderText="Cédula">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblCedula" runat="server" Text='<%#Eval("identificacion")%>'></asp:Label>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Nombre">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblNomre" runat="server" Text='<%#Eval("nombre")%>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtNombreEdit" runat="server" Text='<%#Eval("nombre")%>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Primer Apellido">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblApellido1" runat="server" Text='<%#Eval("primer_apellido")%>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtApellido1Edit" runat="server" Text='<%#Eval("primer_apellido")%>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Segundo Apellido">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblApellido2" runat="server" Text='<%#Eval("segundo_apellido")%>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtApellido2Edit" runat="server" Text='<%#Eval("segundo_apellido")%>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Sexo">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblSexo" runat="server" Text='<%#Eval("sexo")%>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="ddlSexoEdit" runat="server"></asp:DropDownList>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Tipo de Usuario">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblTipoUsuario" runat="server" Text='<%#Eval("tipoUsuario.descripciony")%>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="ddlTipoUsuarioEdit" runat="server"></asp:DropDownList>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Estado">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblEstado" runat="server" Text='<%#Eval("estado")%>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:DropDownList ID="ddlEstadoEdit" runat="server"></asp:DropDownList>
                                                </EditItemTemplate>
                                            </asp:TemplateField>
                                        </Columns>
                                    </asp:GridView>
                                    <div class="Pager">
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
    </div>
    </div>

</asp:Content>
