using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using ENTIDADES;
using LOGICA;

namespace appExpediente
{
    public partial class Registro_de_Usuarios : System.Web.UI.Page
    {
        public virtual string GroupName { get; set; }

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarUsuarios();
                llenarCombo1();
                estadoCombo();
            }
        }

        public void cargarUsuarios()
        {
            grvListaUsuarios.DataSource = UsuarioLN.ObtenerTodos();
            grvListaUsuarios.DataBind();
        }

        public void llenarCombo1() {

          
            ddlTipoUsuario.DataSource = TipoUsuarioLN.ObtenerTodos();
            ddlTipoUsuario.DataValueField = "tipoID";
            ddlTipoUsuario.DataTextField = "descripciony";          
            ddlTipoUsuario.DataBind();
            ddlTipoUsuario.Items.Insert(0, "Seleccionar tipo");
        }

        public void estadoCombo()
        {
            ListItem i;
            i = new ListItem("Activo", "1");
            ddlEstado.Items.Add(i);
            i = new ListItem("Inactivo", "2");
            ddlEstado.Items.Add(i);
            ddlEstado.Items.Insert(0, "Seleccionar estado");
        }

        public void limpiar()
        {
            txtCedula.Text = "";
            txtNombre.Text = "";
            txtApellido1.Text = "";
            txtApellido2.Text = "";
            txtEmail.Text = "";
            ddlTipoUsuario.SelectedIndex = 0;
        }

        protected void ddlListaUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {
            string id = Convert.ToString(grvListaUsuarios.DataKeys(Convert.ToUInt32(e.Comm));

            Usuario userInfo = UsuarioLN.Obtener(id);
            txtNombre.Text = userInfo.nombre;
            txtApellido1.Text = userInfo.primer_apellido;
            txtApellido2.Text = userInfo.segundo_apellido;
            txtCedula.Text = userInfo.identificacion;
            txtEmail.Text = userInfo.email_ID;
            if (userInfo.sexo== "Masculino")
            {
                rdMasculino.Checked=true;
            }
            else
            {
                if (userInfo.sexo== "Femenino")
                {
                    rdFemenino.Checked = true;
                }
            }

            ddlTipoUsuario.SelectedValue = userInfo.tipoUsuario.descripciony;
            ddlEstado.SelectedValue = userInfo.estado;
            ocultarCampos();

        }

        public void ocultarCampos()
        {
            txtContrasenna.Visible = false;
            txtConfirmarContrasenna.Visible = false;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            Usuario usuario1 = new Usuario();
            usuario1.email_ID = txtEmail.Text;
            usuario1.identificacion = txtCedula.Text;
            usuario1.nombre = txtNombre.Text;
            usuario1.primer_apellido = txtApellido1.Text;
            usuario1.segundo_apellido = txtApellido2.Text;

            if (rdMasculino.GroupName == "rdSexo")
            {
                if (rdMasculino.Checked)
                {
                    usuario1.sexo = "Masculino";
                }
                else
                {
                    if (rdFemenino.Checked)
                    {
                        usuario1.sexo = "Femenino";
                    }
                    else
                    {
                        lblSms.Visible = true;
                        lblSms.Text = "Tipo de sexo requerido";
                        return;
                    }

                }
            }

            if (txtContrasenna.Text == txtConfirmarContrasenna.Text)
            {
                usuario1.contraqsenna = txtContrasenna.Text;
            }
            else
            {
                lblSms2.Visible = true;
                lblSms2.Text = "Error: La contraseña no coinsiden correctamente";
                return;
            }

            int restar = 0;
            if (ddlEstado.SelectedValue == "2")
            {
                restar = 2 - 2;
                usuario1.estado = restar + "";
            }
            else
            {
                if (ddlEstado.SelectedValue == "1")
                {
                    usuario1.estado = ddlEstado.SelectedValue;
                }
            }


            usuario1.tipoUsuario.tipoID = Convert.ToInt32(ddlTipoUsuario.SelectedValue);

            if (UsuarioLN.Obtener(usuario1.email_ID) == null)
            {
                UsuarioLN.Nuevo(usuario1);

                ClientScript.RegisterStartupScript(
                   this.GetType(),
                   "Registro",
    "mensajeRedirect('Registro de Usuario','Usuario registrado correctamente','success','Registro_de_Usuarios.aspx')",
                   true
                   );

                limpiar();
            }
            else
            {
                ClientScript.RegisterStartupScript(
                   this.GetType(),
                   "Carrera",
    "mensaje('Error de Registro de Usuario','El usuario ya se encuentra registrado en el sistema','warning')",
                   true
                   );
            }
        }
    }
}