using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations.Schema;

namespace Sette.Tre.Entities
{
    public partial class Customer
    {
        [NotMapped]
        public String FullName { get { return $"Cognome:{this.LastName}, Nome:{this.FirstName}"; }  }
    }
}
