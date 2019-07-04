using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ENTIDADES;
using DATOS;
using System.Data;

namespace LOGICA
{
    public class UsuarioLN
    {

        public static List<Usuario> ObtenerTodos()
        {
            List<Usuario> lista = new List<Usuario>();
            DataSet ds = UsuarioDatos.SeleccionarTodos();

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Usuario user = new Usuario();
                user.email_ID = row["correo"].ToString();
                user.identificacion = row["cedula"].ToString();
                user.nombre = row["nombre"].ToString();
                user.primer_apellido = row["p_Apellido"].ToString();
                user.segundo_apellido = row["s_Apellido"].ToString();
                user.contraqsenna = row["contrasenna"].ToString();
                user.sexo = row["sexo"].ToString();
                user.estado = Convert.ToInt32(row["estado"]).ToString();
                user.tipoUsuario.tipoID = Convert.ToInt32(row["ID_TIPO_USUARIO"]);
                lista.Add(user);
            }

            return lista;
        }

        public static Usuario VerificarCredenciales(Usuario user)
        {
            List<Usuario> lista = UsuarioLN.ObtenerTodos();
            Usuario usuario1 = lista.
                Where(x => x.email_ID == user.email_ID && x.contraqsenna == user.contraqsenna).
                FirstOrDefault();
            return usuario1;
        }

        public static Usuario Obtener(string id)
        {
            List<Usuario> lista = UsuarioLN.ObtenerTodos();
            Usuario elemento = lista.
                Find(x => x.email_ID == id);
            return elemento;
        }

        public static void Nuevo( Usuario user)
        {
            UsuarioDatos.Insertar(user);
        }

        public static void Modificar(Usuario user)
        {
            UsuarioDatos.Modificar(user);
        }
    }
}
