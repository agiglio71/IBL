using Quattro.Tre.Uno;
using Quattro.Tre.Due;
using System;
using System.Collections.Generic;
using Quattro.Tre.Sei;

namespace Quattro.Tre
{
    class Program
    {
        static void Main(string[] args)
        {
            //DoUno();
            DoDue();
            //DoQuattro();
            //DoCinque();
            //DoSei();
        }

        //static void DoUno()
        //{
        //    Mammifero mammiferoTest = new Mammifero(); non posso farla

        //    Cane cane = new Cane(6, 4);
        //    cane.Stampa();

        //    Mammifero mammifero = cane;
        //    mammifero.Stampa();

        //    Cane cane2 = (Cane)mammifero;
        //    cane2.Stampa();

        //    Console.ReadLine();

        //    Orso orso = new Orso("mangia miele", 2);
        //    orso.Stampa();

        //    mammifero = orso;
        //    mammifero.Stampa();

        //    Console.ReadLine();

        //    List<Mammifero> animali = new List<Mammifero>
        //    {
        //        new Cane(6, 4),
        //        new Orso("mangia miele", 2)
        //    };

        //    animali.ForEach(animale => animale.Stampa());

        //    Console.ReadLine();
        //}

        static void DoDue()
        {
            DocumentoSpeciale documentoSpeciale = new DocumentoSpeciale();
            IFindable findableSpeciale   = documentoSpeciale;
            ISortable sortableSpeciale   = documentoSpeciale;
            IPrintable printableSpeciale = documentoSpeciale;
            Documento documento          = documentoSpeciale;
            IFindable findable           = documento;
            ISortable sortable           = documento;
            IPrintable printable         = documento;

            documentoSpeciale.Find();
            findableSpeciale.Find();
            documento.Find();
            findable.Find();

            Console.WriteLine();

            documentoSpeciale.Sort();
            sortableSpeciale.Sort();
            documento.Sort();
            sortable.Sort();

            Console.WriteLine();

            //documentoSpeciale.Print();
            printableSpeciale.Print();
            //documento.Print();
            printable.Print();

            Console.ReadLine();

            Documento documento2 = new Documento();
            IFindable findable2   = documento2;
            ISortable sortable2   = documento2;
            IPrintable printable2 = documento2;
            documento2.Find();
            findable2.Find();
            documento2.Sort();
            sortable2.Sort();
            //documento2.Print();
            printable2.Print();
            Console.ReadLine();

        }

        //static void DoQuattro()
        //{
        //    Calcolatrice calcolatrice = new Calcolatrice();

        //    calcolatrice.Uno();
        //    calcolatrice.Aggiungi();
        //    calcolatrice.Cinque();

        //    Console.WriteLine(calcolatrice.Totale().ToString());

        //    calcolatrice.Dividi();
        //    calcolatrice.Tre();

        //    Console.WriteLine(calcolatrice.Totale().ToString());

        //    calcolatrice.Cinque();
        //    calcolatrice.Moltiplica();
        //    calcolatrice.Tre();

        //    Console.WriteLine(calcolatrice.Totale().ToString());

        //    Console.ReadLine();
        //}

        //static void DoCinque()
        //{
        //    Calcolatrice calcolatrice = new Calcolatrice();
        //    Somma somma = new Somma();
        //    Differenza differenza = new Differenza();
        //    Prodotto prodotto = new Prodotto();
        //    Divisione divisione = new Divisione();

        //    calcolatrice.AddCifra(1);
        //    calcolatrice.Operazione(somma);
        //    calcolatrice.AddCifra(5);

        //    Console.WriteLine(calcolatrice.Totale().ToString());

        //    calcolatrice.Operazione(divisione);
        //    calcolatrice.AddCifra(3);

        //    Console.WriteLine(calcolatrice.Totale().ToString());

        //    calcolatrice.AddCifra(5);
        //    calcolatrice.Operazione(prodotto);
        //    calcolatrice.AddCifra(3);

        //    Console.WriteLine(calcolatrice.Totale().ToString());

        //    Console.ReadLine();
        //}

        static void DoSei()
        {
            Calcolatrice calcolatrice = new Calcolatrice();
            Somma somma = new Somma();
            Differenza differenza = new Differenza();
            Prodotto prodotto = new Prodotto();
            Divisione divisione = new Divisione();
            ShiftDestro shiftDestro = new ShiftDestro();

            calcolatrice.AddCifra(1);
            calcolatrice.Operazione(somma);
            calcolatrice.AddCifra(5);

            Console.WriteLine(calcolatrice.Totale().ToString());

            calcolatrice.Operazione(divisione);
            calcolatrice.AddCifra(3);

            Console.WriteLine(calcolatrice.Totale().ToString());

            calcolatrice.AddCifra(5);
            calcolatrice.Operazione(prodotto);
            calcolatrice.AddCifra(3);

            Console.WriteLine(calcolatrice.Totale().ToString());

            calcolatrice.Operazione(shiftDestro);
            calcolatrice.AddCifra(1);

            Console.WriteLine(calcolatrice.Totale().ToString());

            calcolatrice.Operazione(somma);
            calcolatrice.AddCifra(3);
            calcolatrice.AddCifra(5);
            calcolatrice.Back();

            Console.WriteLine(calcolatrice.Totale().ToString());

            Console.ReadLine();
        }
    }
}
