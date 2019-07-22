using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
   public class OtraActividad
    {
        public int id { get; set; }
        public string estado { get; set; }
        public string nombre { get; set; }
        public int minutos { get; set; }
        public int cant_veces { get; set; }
        public Expediente expediente { get; set; }
        public byte[] imagen { get; set; }

        public OtraActividad()
        {
            expediente = new Expediente();
        }
    }
}
