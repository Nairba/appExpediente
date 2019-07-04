<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrarUsuario.aspx.cs" Inherits="appExpediente.RegistrarUsuario" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
 
     <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <meta name="description" content="Colorlib Templates" />
    <meta name="author" content="Colorlib" />
    <meta name="keywords" content="Colorlib Templates" />

    <!--===============================================================================================-->
    <link href="iconos/css/open-iconic-foundation.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="Temas/RegistrarUser/vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="Temas/RegistrarUser/vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="Temas/RegistrarUser/vendor/select2/select2.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="Temas/RegistrarUser/css/main.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <link href="css/estiloComboBox.css" rel="stylesheet" />
    <!--===============================================================================================-->
    <script src="Scripts/jquery-3.4.1.js"></script>
    <script src="js/mensaje.js"></script>
    <script src="js/sweetalert2.min.js"></script>
    <link href="css/sweetalert2.min.css" rel="stylesheet" />


    <title>Registrar Usuario</title>


</head>
<body>
    <div class="page-wrapper bg-gra-02 p-t-130 p-b-100 font-poppins">
        <div class="wrapper wrapper--w680">
            <div class="card card-4">
                <div class="card-body">
                    <h2 class="title">Registrar usuario</h2>
                    <form id="form1" runat="server" method="POST">
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Nombre</label>
                                    <div class="input-group-icon">
                                        <asp:TextBox ID="txtNombre" runat="server"
                                            CssClass="input--style-4" name="nombre"></asp:TextBox>
                                        <i class="fi-person input-icon"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Primer apellido</label>
                                    <asp:TextBox ID="txtPrimerApellido" runat="server"
                                        CssClass="input--style-4" name="primerApellido"></asp:TextBox>
                                </div>
                            </div>

                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Segundo apellido</label>
                                    <asp:TextBox ID="txtSegundoApellido" runat="server"
                                        CssClass="input--style-4" name="segundoApellido"></asp:TextBox>
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Cédula</label>
                                    <div class="input-group-icon">
                                        <asp:TextBox ID="txtCedula" runat="server"
                                            CssClass="input--style-4" name="cedula"></asp:TextBox>
                                        <i class="fi-person input-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Correo electrónico</label>
                                    <div class="input-group-icon">
                                        <asp:TextBox ID="txtEmail" runat="server"
                                            CssClass="input--style-4" name="email"></asp:TextBox>
                                        <i class="fi-envelope-closed input-icon"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Sexo</label>
                                    <div class="p-t-10">
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
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Tipo de usuario</label>

                                    <asp:DropDownList ID="ddlTipoUsuario"
                                        name="tipoUsuario" runat="server"
                                        CssClass="mydropdownlist1">
                                    </asp:DropDownList>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Estado</label>

                                    <asp:DropDownList ID="ddlEstado"
                                        name="estado" runat="server"
                                        CssClass="mydropdownlist1">
                                    </asp:DropDownList>
                                </div>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Contraseña</label>
                                    <div class="input-group-icon">
                                        <asp:TextBox ID="txtContrasenna" runat="server"
                                            CssClass="input--style-4" name="contrsena"
                                            TextMode="Password"></asp:TextBox>
                                        <i class="fi-key input-icon"></i>
                                    </div>
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Confirmar contraseña</label>
                                    <div class="input-group-icon">
                                        <asp:TextBox ID="txtConfirmarContrasenna" runat="server"
                                            CssClass="input--style-4" name="confirmarContrsena"
                                            TextMode="Password"></asp:TextBox>
                                        <i class="fi-key input-icon"></i>
                                    </div>
                                </div>
                            </div>
                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="p-t-15">
                                    <asp:Button ID="btnGuardar" runat="server"
                                        Text="Guardar" CssClass="btn btn--radius-2 btn--blue"
                                        OnClick="btnGuardar_Click" />
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="p-t-15">
                                    <asp:Button ID="btnCancelar" runat="server"
                                        Text="Cancelar" CssClass="btn btn--radius-2 btn--blue" />
                                </div>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!--===============================================================================================-->
    <script src="Temas/RegistrarUser/vendor/jquery/jquery.min.js"></script>
    <!--===============================================================================================-->
    <script src="Temas/RegistrarUser/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="Temas/RegistrarUser/vendor/jquery/jquery.js"></script>

</body>
</html>
