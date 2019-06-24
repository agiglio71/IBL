using System;
using System.Collections.Generic;
using System.Text;

namespace Cinque.Uno.Due
{
    public delegate String Int32ToString(Int32 theInt);

    public class TheClass1
    {
        public String ConvertiInStringa(Int32 intero)
        {
            return intero.ToString();
        }
    }

    public class TheClass2
    {
        public String ConvertiInStringa(Int32 intero)
        {
            return (intero * 2).ToString();
        }
    }

    // In questa classe non ho l'implementazione del 
    // metodo che converte in stringa
    public class ClasseSenzaImplementazione
    {
        public Int32ToString DelegatoIntero { get; set; } = null;

        public String DammiUnaStringa(Int32 valore)
        {
            return DelegatoIntero == null ? String.Empty : DelegatoIntero(valore);
        }
    }
}
