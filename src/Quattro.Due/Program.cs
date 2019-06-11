using Quattro.Due.Sei;
using System;
using System.Collections.Generic;

namespace Quattro.Due
{
    class Program
    {
        static void Main(string[] args)
        {
            //DoUnoQuattro();
            //DoCinque();
            DoSei();
        }

        //static void DoUnoQuattro()
        //{
        //    Cane cane = new Cane();
        //    cane.Stampa();
        //    Mammifero mammifero = cane;
        //    mammifero.Stampa();
        //    Animale animale1 = mammifero;
        //    animale1.Stampa();
        //    Animale animale2 = cane;
        //    animale2.Stampa();

        //    Console.ReadLine();
        //    List<Animale> animali = new List<Animale>();
        //    animali.Add(new Cane());
        //    animali.Add(new Orso());
        //    animali.Add(new Mammifero());
        //    animali.Add(new Animale());
        //    animali.ForEach(animale => animale.Stampa());

        //    Console.ReadLine();
        //}

        //static void DoCinque()
        //{
        //    Mammifero mammifero = new Mammifero(5);
        //    mammifero.Stampa();

        //    Cane cane = new Cane(6);
        //    cane.Stampa();

        //    Orso orso = new Orso("mangia miele");
        //    orso.Stampa();

        //    Console.ReadLine();
        //}

        static void DoSei()
        {
            Cane cane = new Cane(6, 4);
            cane.Stampa();
            Mammifero mammifero = cane;
            mammifero.Stampa();
            Cane cane2 = (Cane)mammifero;
            cane2.Stampa();
            Console.ReadLine();
            Orso orso = new Orso("mangia miele", 2);
            orso.Stampa();
            mammifero = orso;
            mammifero.Stampa();
            Console.ReadLine();
            List<Mammifero> animali = new List<Mammifero>
            {
                new Cane(6, 4),
                new Orso("mangia miele", 2)
            };
            animali.ForEach(animale => animale.Stampa());

            Console.ReadLine();
        }

    }
}
