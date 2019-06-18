using System;
using System.Collections.Generic;
using System.Text;

namespace Sei.Uno.Models
{
    class Provincia
    {
        public String Descrizione { get; set; }
        public String Sigla { get; set; }
        public ICollection<Comune> Comuni { get; set; }

        public Provincia()
        {

        }
        public Provincia(String descrizione, String sigla, ICollection<Comune> comuni)
        {
            this.Descrizione = descrizione;
            this.Sigla = sigla;
            this.Comuni = comuni;
        }
    }
}
