using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ENTIDADES;
using System.Data;
using System.Data.SqlClient;

namespace DATOS
{
  public  class ConsultaDatos
    {
        public static DataSet SeleccionarTodos()
        {
            Database db = DatabaseFactory.CreateDatabase("default");
            SqlCommand cmd = new SqlCommand("SELECT con.id, con.precio, u.nombre AS nombreMedico, "+
                                             " u.p_Apellido AS apellido_1Medico, "+
                                             " u.s_Apellido AS apellido_2Medico, "+
                                             " co.descripcion AS Consultorio, es.descripcion AS Especialidad "+
                                             " FROM Consulta con "+
                                             " INNER JOIN Usuario u ON u.correoID = con.ID_MEDICO "+
                                             " INNER JOIN Consultorio co ON co.id = con.ID_CONSULTORIO "+
                                             " INNER JOIN Especialidad es ON es.id= con.ID_ESPECIALIDAD ");
            cmd.CommandType = CommandType.Text;
            DataSet ds = db.ExecuteReader(cmd, "Consulta");
            return ds;
        }

        public static void Insertar(Consulta consulta)
        {
            Database db = DatabaseFactory.CreateDatabase("default");
            using (SqlCommand cmd= new SqlCommand(
                "INSERT INTO Consulta(ID_MEDICO,ID_CONSULTORIO,precio,ID_ESPECIALIDAD) "+
                "VALUES (@ID_MEDICO,@ID_CONSULTORIO,@precio,@ID_ESPECIALIDAD)"))
            {
                cmd.Parameters.AddWithValue("@ID_MEDICO",consulta.medico.email_ID);
                cmd.Parameters.AddWithValue("@ID_CONSULTORIO", consulta.consultorio.idConsultorio);
                cmd.Parameters.AddWithValue("@precio", consulta.precio);
                cmd.Parameters.AddWithValue("@ID_ESPECIALIDAD", consulta.especialidad.espId);

                db.ExecuteNonQuery(cmd);
            }
        }

        public static void Modificar(Consulta consulta)
        {
            Database db = DatabaseFactory.CreateDatabase("default");
            using (SqlCommand cmd= new SqlCommand(
                "UPDATE Consulta SET ID_MEDICO=@ID_MEDICO, ID_CONSULTORIO=@ID_CONSULTORIO, "+
                "precio=@precio, ID_ESPECIALIDAD=@ID_ESPECIALIDAD "+
                "WHERE id=@id"))
            {
                cmd.Parameters.AddWithValue("@ID_MEDICO", consulta.medico.email_ID);
                cmd.Parameters.AddWithValue("@ID_CONSULTORIO", consulta.consultorio.idConsultorio);
                cmd.Parameters.AddWithValue("@precio", consulta.precio);
                cmd.Parameters.AddWithValue("@ID_ESPECIALIDAD", consulta.especialidad.espId);

                db.ExecuteNonQuery(cmd);
            }
        }
    }
}
