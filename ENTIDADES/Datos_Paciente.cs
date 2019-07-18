using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class Datos_Paciente
    {
        public int idDatosP { get; set; }
        public DateTime fhechaNacimiento { get; set; }
        public string tipoSangre { get; set; }
        public string residiencia { get; set; }
        public string telefono { get; set; }
        public string cantactoEmergencia { get; set; }
        public string parentesco { get; set; }
    }
}
