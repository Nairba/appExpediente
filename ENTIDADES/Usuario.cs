using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ENTIDADES
{
   public class Usuario
    {
        public string email_ID { get; set; }
        public string identificacion { get; set; }
        public string nombre { get; set; }
        public string primer_apellido { get; set; }
        public string segundo_apellido { get; set; }
        public string sexo { get; set; }
        public string contraqsenna { get; set; }
        public string estado { get; set; }
        public TipoUsuario tipoUsuario { get; set; }

        public Usuario()
        {
            this.tipoUsuario = new TipoUsuario();
        }
    }
}
