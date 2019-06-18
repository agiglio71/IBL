using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
//using Sei.Uno.Extensions;

namespace Sei.Uno
{
    class Program
    {
        static void Main(string[] args)
        {
            DoUno();
            Console.ReadLine();
        }

        private static void DoUno()
        {
            Int32[] array = new Int32[] { 1, 2, 3, 4, 5, 6, 7, 8, 9, 10 };

            // Dichiarazione
            IEnumerable<Int32> query = array.Where(valore => valore % 3 == 0);

            // Esecuzione
            foreach (Int32 valore in query)
                Console.WriteLine(valore);

            // ForEach è un metodo della classe List<T>
            query.ToList().ForEach(valore => Console.WriteLine(valore));

            StringBuilder formatted = new StringBuilder();
            query.Aggregate(formatted, (stringBuilder, valore) => stringBuilder.Append(valore).Append(", "));
            formatted.Length -= 2;
            Console.WriteLine(formatted);

            formatted = new StringBuilder();
            query.ToList().ForEach(valore => formatted.Append(valore).Append(", "));
            formatted.Length -= 2;
            Console.WriteLine(formatted);

            //Console.WriteLine(query.ToFormatted());
        }
    }
}
