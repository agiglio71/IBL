using System;
using System.Collections.Generic;
using System.Text;

namespace Quattro.Uno.CL
{
    class ContoCorrente1
    {
        public Int32 Saldo = 1000;
    }

    class ContoCorrente2
    {
        private Int32 _Saldo = 1000;
        public Int32 Saldo
        {
            get
            {
                // Potrei anche verificare se l'utente è abilitato a vedere il saldo
                Console.WriteLine($"Saldo attuale {this._Saldo.ToString()}");
                return this._Saldo;
            }

            set
            {
                if (value < 0)
                    Console.WriteLine($"Valore non ammesso {value.ToString()}");
                else
                    this._Saldo = value;
            }
        }
    }

    class ContoCorrente3
    {
        private Int32 _Saldo = 1000;
        public Int32 GetSaldo()
        {
            Console.WriteLine($"Saldo attuale {this._Saldo.ToString()}");
            return this._Saldo;
        }
        public void SetSaldo(Int32 value)
        {
            if (value < 0)
                Console.WriteLine($"Valore non ammesso {value.ToString()}");
            else
                this._Saldo = value;
        }
    }

    class CCMain
    {
        public void StampaAnno()
        {
            ContoCorrente1 cc1 = new ContoCorrente1();
            cc1.Saldo = -1000;
            cc1.Saldo = 0;

            ContoCorrente2 cc2 = new ContoCorrente2();
            cc2.Saldo = -1000;
            Console.WriteLine(cc2.Saldo); // Rimane 1000

            ContoCorrente3 cc3 = new ContoCorrente3();
            cc3.SetSaldo(-1000);
            Console.WriteLine(cc3.GetSaldo()); // Rimane 1000
        }
    }
}
