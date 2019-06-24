using Sette.Tre.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Sette.Tre
{
    class CustomerRepository
    {
        public List<Customer> GetCustomers()
        {
            /*
            String JsonDB = File.ReadAllText(Path.Combine(Environment.CurrentDirectory, "..\\..\\..\\DataBase\\DB.json"));
            List<Customer> lista = JsonConvert.DeserializeObject<List<Customer>>(JsonDB, new JsonSerializerSettings() { ReferenceLoopHandling = ReferenceLoopHandling.Ignore, Formatting = Formatting.Indented });
            return lista;//.Where(cx => cx.Addresses.Any(d => d.CountryRegion == "Canada")).ToList(); // 106           
            */
            using (DBContext db = new DBContext())
            {
                return db.Customer.Where(cx => cx.CustomerAddress.Select(c => c.Address).Any(d => d.CountryRegion == "Canada")).ToList();
            }
        }

        internal void Add(Customer customer)
        {
            using (DBContext db = new DBContext())
            {                
                db.Customer.Add(customer);
                db.SaveChanges();
            }
        }

        internal void Update(Customer customer)
        {
            using (DBContext db = new DBContext())
            {
                db.Entry<Customer>(customer).State=Microsoft.EntityFrameworkCore.EntityState.Modified ;
                db.SaveChanges();
            }
        }

        internal void Delete(Customer customer)
        {
            using (DBContext db = new DBContext())
            {
                db.Entry<Customer>(customer).State = Microsoft.EntityFrameworkCore.EntityState.Deleted;
                db.SaveChanges();
            }
        }
    }
}