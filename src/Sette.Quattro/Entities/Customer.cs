using System;
using System.Collections.Generic;

namespace Sette.Quattro.Entities
{
    public class Customer
    {
        public Customer()
        {
            CustomerAddress = new HashSet<CustomerAddress>();
        }

        public int CustomerId { get; set; }
        public bool NameStyle { get; set; }
        public string Title { get; set; }
        public string FirstName { get; set; }
        public string MiddleName { get; set; }
        public string LastName { get; set; }
        public string Suffix { get; set; }
        public string CompanyName { get; set; }
        public string SalesPerson { get; set; }
        public string EmailAddress { get; set; }
        public string Phone { get; set; }

        public String FullName { get { return $"Cognome:{this.LastName}, Nome:{this.FirstName}"; } }

        public virtual ICollection<CustomerAddress> CustomerAddress { get; set; }
    }
}
