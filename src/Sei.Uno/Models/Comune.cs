using System;
using System.Collections.Generic;
using System.Text;

namespace Sei.Uno.Models
{
    class Comune //: IEqualityComparer<Comune>
    {
        public String Descrizione { get; set; }

        public Comune()
        {

        }

        public Comune(String descrizione)
        {
            this.Descrizione = descrizione;
        }

        /*
        public bool Equals(Comune x, Comune y)
        {
            if (x == null && y == null)
                return true;

            if (x == null || y == null)
                return false;

            return x.Descrizione.Equals(y.Descrizione);
        }

        public int GetHashCode(Comune obj)
        {
            return obj.Descrizione.GetHashCode();
        }
        */

    }
}
