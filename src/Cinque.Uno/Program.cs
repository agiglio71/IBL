using Cinque.Uno.Quattro;
using System;
using System.Collections.Generic;

namespace Cinque.Uno
{
    class Program
    {
        static void Main(string[] args)
        {
            //DoUno();
            //DoDue();
            //DoTre();
            DoQuattro();
            //DoCinque();
        }

        //static void DoUno()
        //{
        //    TheClass theClass = new TheClass();
        //    Int32ToString myDelegate = theClass.ConvertiInStringa;
        //    Console.WriteLine(myDelegate(5));
        //    Console.ReadLine();
        //}

        //static void DoDue()
        //{
        //    TheClass1 theClass1 = new TheClass1();
        //    TheClass2 theClass2 = new TheClass2();
        //    ClasseSenzaImplementazione theClass = new ClasseSenzaImplementazione();

        //    theClass.DelegatoIntero = theClass1.ConvertiInStringa;
        //    Console.WriteLine(theClass.DammiUnaStringa(5));

        //    theClass.DelegatoIntero = theClass2.ConvertiInStringa;
        //    Console.WriteLine(theClass.DammiUnaStringa(5));

        //    Console.ReadLine();
        //}

        //static void DoTre()
        //{
        //    TheClass1 theClass1 = new TheClass1();
        //    TheClass2 theClass2 = new TheClass2();
        //    ClasseSenzaImplementazione theClass = new ClasseSenzaImplementazione();

        //    theClass.DelegatoIntero = theClass1.ConvertiInStringa;
        //    Console.WriteLine(theClass.DammiUnaStringa(5));

        //    theClass.DelegatoIntero = theClass2.ConvertiInStringa;
        //    Console.WriteLine(theClass.DammiUnaStringa(5));

        //    Console.ReadLine();
        //}

        static void DoQuattro()
        {
            Calcolatrice calcolatrice = new Calcolatrice();

            //Local function
            Int32 somma(Int32 op1, Int32 op2) { return op1 + op2; };
            Int32 divisione(Int32 op1, Int32 op2) { return op1 / op2; };

            calcolatrice.AddCifra(1);
            calcolatrice.Operazione(somma);
            calcolatrice.AddCifra(5);

            Console.WriteLine(calcolatrice.Totale().ToString());

            calcolatrice.Operazione(divisione);
            calcolatrice.AddCifra(3);

            Console.WriteLine(calcolatrice.Totale().ToString());

            calcolatrice.AddCifra(5);
            calcolatrice.Operazione((op1, op2) => (Int32)Math.Pow(op1, op2));
            calcolatrice.AddCifra(3);

            Console.WriteLine(calcolatrice.Totale().ToString());

            calcolatrice.Operazione(
                delegate (Int32 op1, Int32 op2) 
                {
                    return op1 >> op2;
                }
            ); // delegato anonimo
            calcolatrice.AddCifra(1);

            Console.WriteLine(calcolatrice.Totale().ToString());

            calcolatrice.Operazione(somma);
            calcolatrice.AddCifra(3);
            calcolatrice.AddCifra(5);
            calcolatrice.Back();

            Console.WriteLine(calcolatrice.Totale().ToString());

            Console.ReadLine();

        }

        static void DoCinque()
        {
            List<Int32> theList = new List<Int32>() { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };
            Boolean IsPari(Int32 valore) { return valore % 2 == 0; }

            List<Int32> newList = theList.FindAll(c => c % 2 == 0);

            newList.ForEach(Console.WriteLine);

            Console.ReadLine();
        }
    }
}
