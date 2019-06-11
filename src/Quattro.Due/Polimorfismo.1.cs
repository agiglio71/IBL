using System;

namespace Quattro.Due.Uno
{
    public class Animale
    {
        public void Stampa() { Console.WriteLine("Animale"); }
    }

    public class Mammifero : Animale
    {
        public void Stampa() { Console.WriteLine("Mammifero"); }
    }

    public class Orso : Mammifero
    {
        public void Stampa() { Console.WriteLine("Orso"); }
    }

    public class Cane : Mammifero
    {
        public void Stampa() { Console.WriteLine("Cane"); }
    }
}