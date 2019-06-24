using System;
using System.Linq;
using System.Collections.Generic;
using System.Text;
using Sei.Uno.Models;

//using Sei.Uno.Extensions;

namespace Sei.Uno
{
    class Program
    {
        static void Main(string[] args)
        {
            DoDue();
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

        private static void DoDue()
        {
            Provincia[] provincie = new Provincia[]
            {
                new Provincia("Napoli", "NA", new Comune[] { new Comune("Napoli"), new Comune("Casoria"), new Comune("Arzano")}),
                new Provincia("Roma", "RM", new Comune[] { new Comune("Pomezia"), new Comune("Ardea"), new Comune("Torvaianica")}),
                new Provincia("Romoli", "RN", new Comune[] { new Comune("Pomezia"), new Comune("Casoria"), new Comune("Torvaianica"), new Comune("Arzano")})
            };

            provincie
                .Where(c => c.Descrizione.StartsWith("Ro"))
                .Select(d => d.Descrizione + " (" + d.Sigla + ")")
                .ToList()
                .ForEach(c => Console.WriteLine(c));

            foreach (Provincia provincia in provincie.OrderBy(c=>c.Descrizione))
            {
                Console.WriteLine($"{provincia.Descrizione} ({provincia.Sigla})");
                foreach (Comune comune in provincia.Comuni.OrderBy(c => c.Descrizione))
                    Console.WriteLine($"\t{comune.Descrizione}");
            }
            provincie.SelectMany(c => c.Comuni).Distinct().OrderBy(c => c.Descrizione).ToList().ForEach(comune => Console.WriteLine(comune.Descrizione));
            //provincie.SelectMany(c => c.Comuni).Distinct(new Comune()).OrderBy(c => c.Descrizione).ToList().ForEach(comune => Console.WriteLine(comune.Descrizione));

        }
    }
}
