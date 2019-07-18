using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
   public class Paciente_Paciente_Asociado
    {

        public Usuario paciente { get; set; }
        public Datos_Paciente datosPaciente { get; set; }

        public Paciente_Paciente_Asociado()
        {
            paciente = new Usuario();
            datosPaciente =new Datos_Paciente();
        }
    }
}
