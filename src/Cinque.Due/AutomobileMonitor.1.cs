using System;
using System.Collections.Generic;
using System.Text;

namespace Cinque.Due.Uno
{
    internal class AutomobileMonitor
    {
        public void GestisciMotoreSpento(Object sender, EventArgs @event)
        {
            Console.WriteLine("Il motore è spento.");
        }

        public void GestisciMotoreFuoriGiri(Object sender, EventArgs @event)
        {
            Console.WriteLine("Il motore è fuori giri.");
        }
    }
}
