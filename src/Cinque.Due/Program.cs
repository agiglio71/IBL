using Cinque.Due.Due;
using System;

namespace Cinque.Due
{
    class Program
    {
        static void Main(string[] args)
        {
            //DoUno();
            DoDue();
        }
        //static void DoUno()
        //{
        //    Automobile automobile = new Automobile();
        //    AutomobileMonitor monitor = new AutomobileMonitor();
        //    automobile.MotoreFuoriGiri += monitor.GestisciMotoreFuoriGiri;
        //    automobile.MotoreSpento += monitor.GestisciMotoreSpento;

        //    automobile.Accellera();
        //    automobile.MettiInMoto();
        //    automobile.Decellera();

        //    automobile.MettiInMoto();

        //    automobile.Accellera();
        //    automobile.Accellera();
        //    automobile.Accellera();
        //    automobile.Accellera();
        //    automobile.Accellera();
        //    automobile.Accellera();

        //    Console.ReadLine();
        //}

        static void DoDue()
        {
            Automobile automobile = new Automobile();
            automobile.MotoreFuoriGiri += () => Console.WriteLine("Il motore è fuori giri.");
            automobile.MotoreSpento += () => Console.WriteLine("Il motore è spento.");

            automobile.Accellera();
            automobile.MettiInMoto();
            automobile.Decellera();

            automobile.MettiInMoto();

            automobile.Accellera();
            automobile.Accellera();
            automobile.Accellera();
            automobile.Accellera();
            automobile.Accellera();
            automobile.Accellera();

            Console.ReadLine();
        }
    }
}
