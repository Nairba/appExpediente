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
   public class ConsultaLN
    {
        public static List< Consulta> ObtenerTodos()
        {
            List<Consulta> lista = new List<Consulta>();
            DataSet ds = ConsultaDatos.SeleccionarTodos();

            foreach (DataRow row in ds.Tables[0].Rows)
            {
                Consulta consulta = new Consulta();
                consulta.id = Convert.ToInt16(row["id"]);
                consulta.precio = Convert.ToDecimal(row["precio"]);

                //Usuario Medico
                consulta.medico.email_ID = row["ID_MEDICO"].ToString();
                consulta.medico.nombre = row["nombreMedico"].ToString();
                consulta.medico.primer_apellido = row["apellido_1Medico"].ToString();
                consulta.medico.segundo_apellido = row["apellido_2Medico"].ToString();

                //Consultorio
                consulta.consultorio.idConsultorio = Convert.ToInt16(row["ID_CONSULTORIO"]);
                consulta.consultorio.descripcion = row["Consultorio"].ToString();

                //Especialidad
                consulta.especialidad.espId = Convert.ToInt16(row["ID_ESPECIALIDAD"]);
                consulta.especialidad.descripcion = row["Especialidad"].ToString();
                lista.Add(consulta);
            }
            return lista;
        }


        public static Consulta Obtener(int id)
        {
            List<Consulta> lista = ConsultaLN.ObtenerTodos();
            Consulta elemento = lista.
                Find(x => x.id == id);
            return elemento;
        }

        public static void Nuevo(Consulta consulta)
        {
            ConsultaDatos.Insertar(consulta);
        }

        public static void Modificar(Consulta consulta)
        {
            ConsultaDatos.Modificar(consulta);
        }
    }
}
