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
   public class CategoriaAlergias2lN
    {
        public static List<CategoriaAlergia2> ObtenerTodos()
        {
            List<CategoriaAlergia2> lista = new List<CategoriaAlergia2>();
            DataSet ds = CategoriaAlergias2Datos.SeleccionarTodos();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                CategoriaAlergia2 dato = new CategoriaAlergia2();
                dato.id = Convert.ToInt32(row["id"]);
                dato.descripcion = row["descripcion"].ToString();
                lista.Add(dato);
            }
            return lista;
        }

        public static CategoriaAlergia2 Obtener(int id)
        {
            List<CategoriaAlergia2> lista = CategoriaAlergias2lN.ObtenerTodos();
            CategoriaAlergia2 elemento = lista.
                Find(x => x.id == id);
            return elemento;
        }
    }
}
