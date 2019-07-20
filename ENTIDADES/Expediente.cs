using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
   public class Expediente
    {
        public int id { get; set; }
        public DateTime fecha { get; set; }
        public string esttado { get; set; }
        public Paciente_Paciente_Asociado paciante { get; set; }
        public Usuario medico { get; set; }

        public Expediente()
        {
            paciante = new Paciente_Paciente_Asociado();
            medico =new Usuario();
        }
    }
}
