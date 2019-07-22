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
   public class EspecilaidadLN
    {
        public static List<Especialidad> ObtenerTodos()
        {
            List<Especialidad> lista = new List<Especialidad>();
            DataSet ds = TipoUsuarioDatos.SeleccionarTodos();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Especialidad es = new Especialidad();
               es.espId = Convert.ToInt32(row["id"]);
                es.descripcion = row["descripcion"].ToString();
                lista.Add(es);
            }
            return lista;
        }

        public static Especialidad Obtener(int id)
        {
            List<Especialidad> lista = EspecilaidadLN.ObtenerTodos();
            Especialidad elemento = lista.
                Find(x => x.espId == id);
            return elemento;
        }
    }

}
