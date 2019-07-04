using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DATOS;
using ENTIDADES;
using System.Data;

namespace LOGICA
{
   public class TipoUsuarioLN
    {
        public static List<TipoUsuario> ObtenerTodos()
        {
            List<TipoUsuario> lista = new List<TipoUsuario>();
            DataSet ds = TipoUsuarioDatos.SeleccionarTodos();
            foreach (DataRow row in ds.Tables[0].Rows)
            {
                TipoUsuario tipo = new TipoUsuario();
                tipo.tipoID = Convert.ToInt32(row["id"]);
                tipo.descripciony = row["descripcion"].ToString();
                lista.Add(tipo);
            }
            return lista;  
        }

        public static TipoUsuario Obtener(int idTipo)
        {
            List<TipoUsuario> lista = TipoUsuarioLN.ObtenerTodos();
            TipoUsuario elemento = lista.
                Where(x => x.tipoID == idTipo).First();
            return elemento; 
        }


    }
}
