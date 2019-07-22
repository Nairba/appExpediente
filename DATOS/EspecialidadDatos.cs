using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DATOS
{
 public class EspecialidadDatos
    {
        public static DataSet SeleccionarTodos()
        {
            Database db = DatabaseFactory.CreateDatabase("default");
            SqlCommand cmd = new SqlCommand("SELECT * FROM Especialidad");
            cmd.CommandType = CommandType.Text;
            DataSet ds = db.ExecuteReader(cmd, "especialidad");
            return ds;
        }
    }
}
