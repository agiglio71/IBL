using System;
using System.Collections.Generic;
using System.Text;

namespace Quattro.Tre.Tre
{
    public class Calcolatrice
    {
		public Int32 Operando1 { get; set; }
		public Int32 Operando2 { get; set; }
		public Char Operatore { get; set; }

		public Int32 Totale()
        {
            switch (this.Operatore)
            {
                case '+':
                    return this.Operando1 + this.Operando2;
                case '-':
                    return this.Operando1 - this.Operando2;
                case '*':
                    return this.Operando1 * this.Operando2;
                case '/':
                    return this.Operando2 == 0 ? 0 : this.Operando1 / this.Operando2;
                default:
                    return 0;
            }
        }
    }
}
