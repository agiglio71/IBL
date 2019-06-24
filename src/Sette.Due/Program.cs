using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Sette.Due
{
    class Program
    {
        static void Main(string[] args)
        {
            CustomerRepository repository = new CustomerRepository();
            List<Customer> customers = repository.GetCustomers();

            // Dobbiamo inviare un report dei soli nominativi ordinati alfabeticamente per cognome ad un ufficio
            customers.OrderBy(c => c.LastName).ThenBy(c => c.FirstName).ToList().ForEach(c => Console.WriteLine($"Cognome:{c.LastName}, Nome:{c.FirstName}"));

            // Dobbiamo notificare il numero dei clienti in un altro 
            Console.WriteLine($"Ci sono {customers.Count.ToString()} clienti in archivio.");

            Console.ReadLine();
        }
    }
}
