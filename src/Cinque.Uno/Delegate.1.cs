using System;
using System.Collections.Generic;
using System.Text;

namespace Cinque.Uno.Uno
{
    public delegate String Int32ToString(Int32 theInt);

    public class TheClass
    {
        public String ConvertiInStringa(Int32 intero) {
            return intero.ToString();
        }
    }

}
