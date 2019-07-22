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
   public class ConsultorioLN
    {

        public static List<Consultorio> ObtenerTodos()
        {
            List<Consultorio> lista = new List<Consultorio>();
            DataSet ds = ConsultorioDatos.SeleccionarTodos();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Consultorio dato = new Consultorio();
                dato.idConsultorio = Convert.ToInt32(row["id"]);
                dato.descripcion = row["descripcion"].ToString();
                lista.Add(dato);
            }
            return lista;
        }

        public static Consultorio Obtener(int id)
        {
            List<Consultorio> lista = ConsultorioLN.ObtenerTodos();
            Consultorio elemento = lista.
                Find(x => x.idConsultorio == id);
            return elemento;
        }

    }
}
