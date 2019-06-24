using Sette.Tre.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Sette.Tre
{
    class Program
    {
        static void Main(string[] args)
        {
            CustomerRepository repository = new CustomerRepository();
            List<Customer> customers = repository.GetCustomers();

            // Dobbiamo inviare un report dei soli nominativi ordinati alfabeticamente per cognome ad un ufficio
            customers.OrderBy(c => c.LastName).ThenBy(c => c.FirstName).ToList().ForEach(c => Console.WriteLine(c.FullName));

            // Dobbiamo notificare il numero dei clienti in un altro 
            Console.WriteLine($"Ci sono {customers.Count.ToString()} clienti in archivio.");

            Customer newCustomer = new Customer()
            {
                CompanyName = "A Bike Store",
                CustomerAddress = null,
                EmailAddress = "zoo0@adventure-works.com",
                FirstName = "The",
                LastName = "Zoo",
                MiddleName = "N.",
                NameStyle = false,
                Phone = "245-555-0173",
                SalesPerson = "adventure-works\\pamela0",
                Suffix = "Sr.",
                Title = "Mr."
            };

            repository.Add(newCustomer);

            newCustomer.LastName = "Zzz";

            repository.Update(newCustomer);

            repository.Delete(newCustomer);

            Console.ReadLine();
        }
    }
}
