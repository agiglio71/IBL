using System;
using System.Collections.Generic;
using System.Text;

namespace Cinque.Uno.Tre
{    
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
    
    public class ClasseSenzaImplementazione
    {
        public Func<Int32, String> DelegatoIntero { get; set; } = null;

        public String DammiUnaStringa(Int32 valore)
        {
            return DelegatoIntero == null ? String.Empty : DelegatoIntero(valore);
        }
    }
}
