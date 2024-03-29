﻿using ENTIDADES;
using LOGICA;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace appExpediente
{
    public partial class Registrar_Usuario : System.Web.UI.Page
    {
        public virtual string GroupName { get; set; }
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                //Lista de TipoUsuario

                ddlTipoUsuario.DataSource = TipoUsuarioLN.ObtenerTodos();

                ddlTipoUsuario.DataValueField = "tipoID";
                ddlTipoUsuario.DataTextField = "descripciony";
                ddlTipoUsuario.DataBind();
               ddlTipoUsuario.Items.Insert(0, "Seleccionar tipo");
                //Estado  
                estadoCombo();
            }
        }
            public void estadoCombo()
        {
            ListItem i;

            i = new ListItem("Activo", "1");
            ddlEstado.Items.Add(i);
            i = new ListItem("Inactivo", "2");
            ddlEstado.Items.Add(i);
            ddlEstado.Items.Insert(0, "Seleccionar tipo");
        }

        public void limpiar()
        {
            txtCedula.Text = "";
            txtNombre.Text = "";
            txtPrimerApellido.Text = "";
            txtSegundoApellido.Text = "";
            txtEmail.Text = "";
            ddlTipoUsuario.SelectedIndex = 0;
        }

        protected void btnGuardar_Click(object sender, EventArgs e)
        {

            Usuario usuario1 = new Usuario();
            usuario1.email_ID = txtEmail.Text;
            usuario1.identificacion = txtCedula.Text;
            usuario1.nombre = txtNombre.Text;
            usuario1.primer_apellido = txtPrimerApellido.Text;
            usuario1.segundo_apellido = txtSegundoApellido.Text;
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

            if (txtContrasenna.Text== txtConfirmarContrasenna.Text)
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
            if (ddlEstado.SelectedValue=="2")
            {
                restar = 2 - 2;
                usuario1.estado = restar+"";
            }
            else
            {
                if (ddlEstado.SelectedValue=="1")
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
    "mensajeRedirect('Registro de Usuario','Usuario registrado correctamente','success','Registrar_Usuario.aspx')",
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