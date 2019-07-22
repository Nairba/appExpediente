using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
   public class Consulta
    {
        public int id { get; set; }
        public int idConsultorio { get; set; }
        public Usuario medico { get; set; }
        public Consultorio consultorio { get; set; }
        public decimal precio { get; set; }
        public Especialidad especialidad { get; set; }

        public Consulta()
        {
            medico = new Usuario();
            consultorio = new Consultorio();
            especialidad = new Especialidad();
        }
    }
}
