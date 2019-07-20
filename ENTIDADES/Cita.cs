using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Cita
    {
        public int id { get; set; }
        public DateTime hora { get; set; }
        public DateTime fechaCita { get; set; }
        public Paciente_Paciente_Asociado  paciente { get; set; }
        public string descripcion { get; set; }
        public Consulta consulta { get; set; }
        public string estado { get; set; }
        public string observaciones { get; set; }
        public Horario horario { get; set; }

        public Cita()
        {
            paciente = new  Paciente_Paciente_Asociado();
            consulta = new Consulta();
            horario = new Horario();
        }
    }
}
