using System;
using System.Collections.Generic;

namespace Sette.Tre.Entities
{
    public partial class Address
    {
        public Address()
        {
            CustomerAddress = new HashSet<CustomerAddress>();
        }

        public int AddressId { get; set; }
        public string AddressLine1 { get; set; }
        public string AddressLine2 { get; set; }
        public string City { get; set; }
        public string StateProvince { get; set; }
        public string CountryRegion { get; set; }
        public string PostalCode { get; set; }

        public virtual ICollection<CustomerAddress> CustomerAddress { get; set; }
    }
}
