<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="appExpediente.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    

       <!--===============================================================================================-->  
        <link rel="icon" type="image/png"  href="Temas/Login_v10/images/icons/favicon.ico" />
    <!--===============================================================================================-->
        <link href="Content/bootstrap.min.css" rel="stylesheet" />  
    <!--===============================================================================================-->
        <link href="Temas/Login_v10/fonts/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
        <link href="Temas/Login_v10/fonts/Linearicons-Free-v1.0.0/icon-font.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
        <link href="Temas/Login_v10/vendor/animsition/css/animsition.css" rel="stylesheet" />
    <!--===============================================================================================-->
        <link href="Temas/Login_v10/vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
        <link href="Temas/Login_v10/vendor/animsition/css/animsition.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
        <link href="Temas/Login_v10/vendor/select2/select2.min.css" rel="stylesheet" />
    <!--===============================================================================================-->
        <link href="Temas/Login_v10/vendor/daterangepicker/daterangepicker.css" rel="stylesheet" />
    <!--===============================================================================================-->
        <link href="Temas/Login_v10/css/util.css" rel="stylesheet" />
        <link href="Temas/Login_v10/css/main.css" rel="stylesheet" />
    <!--===============================================================================================-->
   

    <title>Iniciar Seción</title>
</head>
<body>
    <div class="limiter">
        <div class="container-login100">
            <div class="wrap-login100 p-t-50 p-b-90">

                <form class="login100-form validate-form flex-sb flex-w" id ="form1" runat="server">
                    <span class="login100-form-title p-b-51">
						Inicias Seción
					</span>

                    <div class="wrap-input100 validate-input m-b-16" data-validate = "Nombre de usuario requerido">
                        <asp:TextBox ID="txtNombreUsuario" runat="server"
                            CssClass="input100" name="nombreUsuario" 
                            placeholder="Usuario"></asp:TextBox>
                        <span class="focus-input100"></span>
                    </div>

                     <div class="wrap-input100 validate-input m-b-16" data-validate = "Contraseña requerida">
                         <asp:TextBox ID="txtContraseña1" 
                             runat="server" TextMode="Password"      
                             CssClass="input100"
                             name="contrasenna" 
                             placeholder="Contraseña">
                         </asp:TextBox>                       
                            <span class="focus-input100"></span>
                        </div>

                    <div  class="flex-sb-m w-full p-t-3 p-b-24">
                        <div class="contact100-form-checkbox">
							<input class="input-checkbox100" id="ckb1" type="checkbox" name="remember-me"/>
							<label class="label-checkbox100" for="ckb1">
								Recordarme
							</label>
						</div>

						<div>
							<a href="CambiarContraseña.aspx" class="txt1">
								¿Recuperar Contrseña?
							</a>
						</div>

                    </div>

                    <div class="container-login100-form-btn m-t-17">
                        <asp:Button ID="btnLogin" runat="server" 
                            Text="Iniciar Seción"  CssClass="login100-form-btn"
                            ValidationGroup="login"/>
                    </div>
                </form>
            </div>
        </div>
    </div>

    <!--===============================================================================================-->
    <script src="Temas/Login_v10/vendor/jquery/jquery-3.2.1.min.js"></script>
    <!--===============================================================================================-->
    <script src="Temas/Login_v10/vendor/animsition/js/animsition.min.js"></script>
    <!--===============================================================================================-->
    <script src="Temas/Login_v10/vendor/bootstrap/js/popper.js"></script>
    <!--===============================================================================================-->
    <script src="Temas/Login_v10/vendor/bootstrap/js/popper.min.js"></script>
    <!--===============================================================================================-->
    <script src="Temas/Login_v10/vendor/select2/select2.min.js"></script>
    <!--===============================================================================================-->
    <script src="Temas/Login_v10/vendor/daterangepicker/moment.min.js"></script>
    <!--===============================================================================================-->
    <script src="Temas/Login_v10/vendor/daterangepicker/daterangepicker.js"></script>
    <!--===============================================================================================-->
    <script src="Temas/Login_v10/vendor/countdowntime/countdowntime.js"></script>
    <!--===============================================================================================-->
    <script src="Temas/Login_v10/js/main.js"></script>

</body>
</html>
