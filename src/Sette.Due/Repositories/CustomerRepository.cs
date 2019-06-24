﻿using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;

namespace Sette.Due
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
                return db.Customers.Include("CustomerAddresses").Include("CustomerAddresses.Address").Where(cx => cx.CustomerAddresses.Select(c => c.Address).Any(d => d.CountryRegion == "Canada")).ToList();
            }
        }
    }
}