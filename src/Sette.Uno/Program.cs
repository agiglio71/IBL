using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Sette.Uno
{
    class Program
    {
        static void Main(string[] args)
        {
            String JsonDB = File.ReadAllText(Path.Combine(Environment.CurrentDirectory, "..\\..\\..\\DataBase\\DB.json"));
            List<Customer> customers = JsonConvert.DeserializeObject<List<Customer>>(JsonDB, new JsonSerializerSettings() { ReferenceLoopHandling = ReferenceLoopHandling.Ignore, Formatting=Formatting.Indented });

            // Dobbiamo inviare un report dei soli nominativi ordinati alfabeticamente per cognome ad un ufficio
            customers.OrderBy(c => c.LastName).ThenBy(c => c.FirstName).ToList().ForEach(c => Console.WriteLine($"Cognome:{c.LastName}, Nome:{c.FirstName}"));

            // Dobbiamo notificare il numero dei clienti in un altro 
            Console.WriteLine($"Ci sono {customers.Count.ToString()} clienti in archivio.");

            Console.ReadLine();
            
            // Sarebbe meglio separare le azioni di recupero dei dati dal programma vero e proprio,
            // quindi creiamo la classe CustomerRepository

            CustomerRepository repository = new CustomerRepository();
            customers = repository.GetCustomers();

            // Dobbiamo inviare un report dei soli nominativi ordinati alfabeticamente per cognome ad un ufficio
            customers.OrderBy(c => c.LastName).ThenBy(c => c.FirstName).ToList().ForEach(c => Console.WriteLine($"Cognome:{c.LastName}, Nome:{c.FirstName}"));

            // Dobbiamo notificare il numero dei clienti in un altro 
            Console.WriteLine($"Ci sono {customers.Count.ToString()} clienti in archivio.");

            Console.ReadLine();


        }
    }
}
