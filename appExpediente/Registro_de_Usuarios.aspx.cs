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

       
        protected void btnGuardar_Click(object sender, EventArgs e)
        {
            if (IsValid)
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
        "mensaje('Error de Registro de Usuario','El usuario ya se encuentra registrado en el sistema.','warning')",
                       true
                       );
                }
            }
            cargarUsuarios();
        }

        protected void grvListaUsuarios_RowEditing(object sender, GridViewEditEventArgs e)
        {
            grvListaUsuarios.EditIndex = e.NewEditIndex;
            cargarUsuarios();
        }

        protected void grvListaUsuarios_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            grvListaUsuarios.EditIndex = -1;
            cargarUsuarios();
        }

        protected void grvListaUsuarios_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType== DataControlRowType.DataRow)
            {
                DropDownList ddlUserT = (e.Row.FindControl("ddlTipoUsuarioEdit") as DropDownList);
                DropDownList ddlEstadoEdit = (e.Row.FindControl("ddlEstadoEdit") as DropDownList);
                DropDownList ddlSexoEdit = (e.Row.FindControl("ddlSexoEdit") as DropDownList);

                if ((e.Row.RowState & DataControlRowState.Edit)>0)
                {
                    ddlUserT.DataSource = TipoUsuarioLN.ObtenerTodos();
                    ddlUserT.DataTextField = "descripciony";
                    ddlUserT.DataValueField= "tipoID";
                    ddlUserT.DataBind();
                    string idTipoUser = (DataBinder.Eval(e.Row.DataItem, "tipoUsuario.tipoID")).ToString();
                    ddlUserT.SelectedValue = idTipoUser;

                    ddlEstadoEdit.Items.Add(new ListItem("Activo", "1"));
                    ddlEstadoEdit.Items.Add(new ListItem("Inactivo", "0"));
                    string idEstado = DataBinder.Eval(e.Row.DataItem, "Estado").ToString();
                    ddlEstadoEdit.SelectedValue = idEstado == "Activo"? "1" : "0";

                    ddlSexoEdit.Items.Add(new ListItem("Masculino", "Masculino"));
                    ddlSexoEdit.Items.Add(new ListItem("Femenino", "Femenino"));
                    string idSexo = DataBinder.Eval(e.Row.DataItem, "Sexo").ToString();

                    ddlSexoEdit.SelectedValue = idSexo.Equals("Masculino") ? "Masculino" : "Femenino";
                }
            }
        }

        protected void grvListaUsuarios_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Usuario user1 = new Usuario();
            GridViewRow fila = grvListaUsuarios.Rows[e.RowIndex];

            user1.email_ID = fila.Cells[1].Text;  
            user1.nombre = ((TextBox)grvListaUsuarios.Rows[e.RowIndex].FindControl("txtNombreEdit")).Text;
            user1.primer_apellido = ((TextBox)grvListaUsuarios.Rows[e.RowIndex].FindControl("txtApellido1Edit")).Text;
            user1.segundo_apellido = ((TextBox)grvListaUsuarios.Rows[e.RowIndex].FindControl("txtApellido2Edit")).Text;

            user1.sexo =((DropDownList)grvListaUsuarios.Rows[e.RowIndex].FindControl("ddlSexoEdit")).SelectedValue;

            user1.tipoUsuario.tipoID = Convert.ToInt16(((DropDownList)grvListaUsuarios.Rows[e.RowIndex].FindControl("ddlTipoUsuarioEdit")).SelectedValue);

            int estado = Convert.ToInt16(((DropDownList)grvListaUsuarios.Rows[e.RowIndex].FindControl("ddlEstadoEdit")).SelectedValue);
            user1.estado = estado == 1 ? "1" : "0";

            UsuarioLN.Modificar(user1);
            grvListaUsuarios.EditIndex = -1;
            cargarUsuarios();

        }
    }
}