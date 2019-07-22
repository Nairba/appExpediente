using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using ENTIDADES;
using DATOS;
using System.Data;

namespace LOCAL
{
   public class HorarioLN
    {
        public static List<Horario> ObtenerTodos()
        {
            List<Horario> lista = new List<Horario>();
            DataSet ds = HorarioDato.SeleccionarTodos();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Horario dato = new Horario();
                dato.id = Convert.ToInt32(row["id"]);
                dato.hora = row["hora"].ToString();
                lista.Add(dato);
            }
            return lista;
        }

        public static Horario Obtener(int id)
        {
            List<Horario> lista = HorarioLN.ObtenerTodos();
            Horario elemento = lista.
                Find(x => x.id == id);
            return elemento;
        }
    }
}
