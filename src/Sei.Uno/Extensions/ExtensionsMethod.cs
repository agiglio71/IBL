using System;
using System.Collections.Generic;
using System.Text;
using System.Linq;

namespace Sei.Uno.Extensions
{
    public static class ExtensionsMethod
    {
        public static String ToFormatted(this IEnumerable<Int32> values)
        {
            StringBuilder formatted = new StringBuilder();

            values.ToList().ForEach(valore => formatted.Append(valore).Append(", "));

            if (formatted.Length > 2)
                formatted.Length -= 2;

            return formatted.ToString();
        }
    }
}
