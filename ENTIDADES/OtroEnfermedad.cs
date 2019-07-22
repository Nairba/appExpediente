using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class OtroEnfermedad
    {
        public int id { get; set; }
        public string descripcion { get; set; }
       
        public string  estado { get; set; }
        public byte[] imagen { get; set; }
        public Expediente expediente { get; set; }
    }
}
