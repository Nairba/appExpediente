using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
    public class OtraAlergia
    {
        public int id { get; set; }
        public string descripcion { get; set; }
        public string estado { get; set; }
        public string observacion { get; set; }
        public byte[] imagen { get; set; }
        public Expediente expediente { get; set; }
        public CategoriaAlergia2 categoria { get; set; }

        public OtraAlergia()
        {
            expediente = new Expediente();
            categoria = new CategoriaAlergia2();
        }
    }
}
