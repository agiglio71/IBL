using Microsoft.EntityFrameworkCore;
using Sette.Quattro.Entities;
using System;
using System.Collections.Generic;
using System.Linq;

namespace Sette.Quattro
{
    class CustomerRepository
    {
        public CustomerRepository()
        {
            using (DBContext db = new DBContext())
            {
                db.Database.Migrate();
            }
        }

        public List<Customer> GetCustomers()
        {
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