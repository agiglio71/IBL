using System;

namespace Quattro.Due.Cinque
{    
    public class Mammifero
{
        protected Int32 NumeroZampe { get; set; }

        public Mammifero() { }
        public Mammifero(Int32 numeroZampe)
        {
            this.NumeroZampe = numeroZampe;
        }

        public virtual void Stampa() { Console.WriteLine($"zampe {this.NumeroZampe.ToString()}"); }
    }

    public class Cane : Mammifero
    {
        protected Int32 Eta { get; set; }
        public Cane(Int32 eta)
        {
            this.Eta = eta;
        }
        public override void Stampa() { Console.WriteLine($"Cane: età {this.Eta.ToString()}"); }
    }

    public class Orso : Mammifero
    {
        protected String Caratteristica { get; set; } = String.Empty;
        public Orso(String caratteristica)
        {
            this.Caratteristica = caratteristica;
        }
        public override void Stampa() { Console.WriteLine($"Orso: {this.Caratteristica}"); }
    }
}