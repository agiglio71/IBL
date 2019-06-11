using System;

namespace Quattro.Due.Quattro
{
    public class Animale
    {
        public virtual void Stampa() { Console.WriteLine("Animale"); }
    }

    public class Mammifero : Animale
    {
        public override void Stampa() { Console.WriteLine("Mammifero"); }
    }

    public class Orso : Mammifero
    {
        public override void Stampa() { Console.WriteLine("Orso"); }
    }

    public class Cane : Mammifero
    {
        public new void Stampa() { Console.WriteLine("Cane"); }
    }
}