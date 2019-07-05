using ENTIDADES;
using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATOS
{
    public class UsuarioDatos
    {
        public static DataSet SeleccionarTodos()
        {
            Database db = DatabaseFactory.CreateDatabase("default");
            SqlCommand cmd = new SqlCommand("SELECT u.*, t.descripcion AS NombreTipoUsuario " +
                                              " FROM Usuario u"+
                                              " INNER JOIN Tipo_Usuario t ON t.id = u.ID_TIPO_USUARIO "+
                                              " WHERE u.ID_TIPO_USUARIO= t.id");
            cmd.CommandType = CommandType.Text;
            DataSet ds = db.ExecuteReader(cmd, "usuario");
            return ds;
        }

        public static void Insertar(Usuario usuario)
        {
            Database db = DatabaseFactory.CreateDatabase("default");
            using(SqlCommand cmd= new SqlCommand(
               "INSERT INTO Usuario(correo,cedula,nombre,p_Apellido,s_Apellido,"+
               "contrasenna,sexo,estado,ID_TIPO_USUARIO) "+
               "VALUES(@correo,@cedula,@nombre,@p_Apellido,@s_Apellido,"+
               "@contrasenna,@sexo,@estado,@ID_TIPO_USUARIO)"))
            {
                cmd.Parameters.AddWithValue("@correo", usuario.email_ID);
                cmd.Parameters.AddWithValue("@cedula", usuario.identificacion);
                cmd.Parameters.AddWithValue("@nombre", usuario.nombre);
                cmd.Parameters.AddWithValue("@p_Apellido", usuario.primer_apellido);
                cmd.Parameters.AddWithValue("@s_Apellido", usuario.segundo_apellido);
                cmd.Parameters.AddWithValue("@contrasenna", usuario.contraqsenna);
                cmd.Parameters.AddWithValue("@sexo", usuario.sexo);
                cmd.Parameters.AddWithValue("@estado", usuario.estado);
                cmd.Parameters.AddWithValue("@ID_TIPO_USUARIO", usuario.tipoUsuario.tipoID);

                db.ExecuteNonQuery(cmd);
            }
        }

        public static void Modificar(Usuario usuario)
        {
            Database db = DatabaseFactory.CreateDatabase("default");
            using (SqlCommand cmd = new SqlCommand(
                "UPDATE Usuario SET correo=@correo, nombre=@nombre," +
                "p_Apellido=@p_Apellido, s_Apellido=@s_Apellido," +
                "contrasenna=@contrasenna,sexo=@sexo,estado=@estado,ID_TIPO_USUARIO=@ID_TIPO_USUARIO" +
                " WHERE correo=@correo"))
            {
                cmd.Parameters.AddWithValue("@correo", usuario.email_ID);
                cmd.Parameters.AddWithValue("@cedula", usuario.identificacion);
                cmd.Parameters.AddWithValue("@nombre", usuario.nombre);
                cmd.Parameters.AddWithValue("@p_Apellido", usuario.primer_apellido);
                cmd.Parameters.AddWithValue("@s_Apellido", usuario.segundo_apellido);
                cmd.Parameters.AddWithValue("@contrasenna", usuario.contraqsenna);
                cmd.Parameters.AddWithValue("@sexo", usuario.sexo);
                cmd.Parameters.AddWithValue("@estado", usuario.estado);
                cmd.Parameters.AddWithValue("@ID_TIPO_USUARIO", usuario.tipoUsuario.tipoID);

                db.ExecuteNonQuery(cmd);
            }
        }

        
    }
}
