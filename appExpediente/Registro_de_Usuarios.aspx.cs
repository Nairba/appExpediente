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
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                cargarUsuarios();
            }
        }

        public void cargarUsuarios()
        {
            grvListaUsuarios.DataSource = UsuarioLN.ObtenerTodos();
            grvListaUsuarios.DataBind();
        }

        protected void ddlListaUsuarios_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}