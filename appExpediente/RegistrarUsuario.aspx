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
                        <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Nombre</label>
                                    <div class="input-group-icon">
                                        <asp:TextBox ID="txtNombre" runat="server"
                                            CssClass="input--style-4" name="nombre"></asp:TextBox>
                                        <i class="fi-person input-icon"></i>

                                        <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator1" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtNombre"
                                            ErrorMessage="Nombre de Usuario requirido."
                                            Display="Dynamic" ForeColor="Red">  
                                        </asp:RequiredFieldValidator>
                                    </div>
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Primer apellido</label>
                                    <asp:TextBox ID="txtPrimerApellido" runat="server"
                                        CssClass="input--style-4" name="primerApellido"></asp:TextBox>

                                      <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator2" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtPrimerApellido"
                                            ErrorMessage="Primer apellido de Usuario requirido."
                                            Display="Dynamic" ForeColor="Red"  SetFocusOnError="true">  
                                        </asp:RequiredFieldValidator>
                                </div>
                            </div>

                        </div>

                        <div class="row row-space">
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Segundo apellido</label>
                                    <asp:TextBox ID="txtSegundoApellido" runat="server"
                                        CssClass="input--style-4" name="segundoApellido"></asp:TextBox>

                                    <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator3" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtSegundoApellido"
                                            ErrorMessage="Segundo apellido de Usuario requirido."
                                            Display="Dynamic" ForeColor="Red" SetFocusOnError="true">  
                                        </asp:RequiredFieldValidator>
                                </div>
                            </div>

                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Cédula</label>
                                    <div class="input-group-icon">
                                        <asp:TextBox ID="txtCedula" runat="server"
                                            CssClass="input--style-4" name="cedula"></asp:TextBox>
                                        <i class="fi-person input-icon"></i>

                                         <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator4" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtCedula"
                                            ErrorMessage="Numero de cédula requirido."
                                            Display="Dynamic" ForeColor="Red" SetFocusOnError="true">  
                                        </asp:RequiredFieldValidator>

                                        <asp:RegularExpressionValidator 
                                            ID="RegularExpressionValidator1" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtCedula"
                                            ErrorMessage="Numero de cédula tiene que ser numerico."
                                            ForeColor="Red"
                                            ValidationExpression="^[0-9]*"
                                            Display="Dynamic" SetFocusOnError="true">
                                        </asp:RegularExpressionValidator>
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

                                         <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator5" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtEmail"
                                            ErrorMessage="Correo electrónico requirido."
                                            Display="Dynamic" ForeColor="Red" SetFocusOnError="true">  
                                        </asp:RequiredFieldValidator>
                                        
                                        <asp:RegularExpressionValidator 
                                            ID="RegularExpressionValidator2" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtEmail"
                                            ErrorMessage="Formato de correo eletrónico no valido."
                                            ForeColor="Red"
                                            ValidationExpression="\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                                            Display="Dynamic" SetFocusOnError="true">
                                        </asp:RegularExpressionValidator>
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
                                        <br />
                                        <br />
                                        <asp:Label ID="lblSms" runat="server" Text="" 
                                            Visible="false" ForeColor="Red" SetFocusOnError="true"></asp:Label>
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

                                  <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator6" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="ddlTipoUsuario"
                                            ErrorMessage="Seleccionar el tipo de usuario es requerido."
                                            Display="Dynamic" ForeColor="Red" SetFocusOnError="true">  
                                        </asp:RequiredFieldValidator>
                                </div>
                            </div>
                            <div class="col-2">
                                <div class="input-group">
                                    <label class="label">Estado</label>

                                    <asp:DropDownList ID="ddlEstado"
                                        name="estado" runat="server"
                                        CssClass="mydropdownlist1">
                                    </asp:DropDownList>

                                    <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator7" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="ddlEstado"
                                            ErrorMessage="Seleccionar el estado de usuario es requerido."
                                            Display="Dynamic" ForeColor="Red" SetFocusOnError="true">  
                                        </asp:RequiredFieldValidator>
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

                                        <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator8" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtContrasenna"
                                            ErrorMessage="Crear contraseña es requerido"
                                            Display="Dynamic" ForeColor="Red" SetFocusOnError="true">  
                                        </asp:RequiredFieldValidator>

                                         <asp:RegularExpressionValidator 
                                            ID="RegularExpressionValidator3" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtContrasenna"
                                            ErrorMessage="Formato de contraseña no valido. 
                                             \n Dede tener almenos una letra mayuscula, minuscula, caracteres especiales y numeros.
                                             \nTiene que ser mayor a 8 caracteres."
                                            ForeColor="Red"
                                            ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$"
                                            Display="Dynamic" SetFocusOnError="true">
                                        </asp:RegularExpressionValidator>
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

                                           <asp:RequiredFieldValidator 
                                            ID="RequiredFieldValidator9" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtConfirmarContrasenna"
                                            ErrorMessage="Confirmar contraseña es requerido"
                                            Display="Dynamic" ForeColor="Red" SetFocusOnError="true">  
                                        </asp:RequiredFieldValidator>

                                         <asp:RegularExpressionValidator 
                                            ID="RegularExpressionValidator4" 
                                            runat="server" ValidationGroup="Usuario"
                                            ControlToValidate="txtContrasenna"
                                            ErrorMessage="Formato de confirmar contraseña no valido. 
                                             \n Dede tener almenos una letra mayuscula, minuscula, caracteres especiales y numeros.
                                             \nTiene que ser mayor a 8 caracteres."
                                            ForeColor="Red"
                                            ValidationExpression="^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[^\da-zA-Z]).{8,15}$"
                                            Display="Dynamic" SetFocusOnError="true">
                                        </asp:RegularExpressionValidator>
                                    </div>
                                </div>
                            </div>
                           
                           
                            <asp:Label ID="lblSms2" runat="server" Text="" 
                                            Visible="false" ForeColor="Red"></asp:Label>
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
