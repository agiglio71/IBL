using System;
using System.Collections.Generic;
using System.Xml.Linq;
using System.Linq;
using Otto.Uno.Models;
using System.Xml.Serialization;
using System.IO;

namespace Otto.Uno
{
    class Program
    {
        static void Main(string[] args)
        {
            /*
                Come posso leggere XML usando LINQ in XML
                Ci sono due modi per farlo: Usare la classe XElement o la classe XDocument. 
                Entrambe le classi contengono il metodo 'Load ()' che accetta un file, un URL o XMLReader e consente di caricare XML. 
                La differenza principale tra le due classi è che un XDocument può contenere dichiarazioni XML, XML Document Type (DTD) and processing instructions.
                Inoltre un XDocument contiene un XElement radice
             */
            //Uno();

            //Due();
            //Tre();
            //Quattro();
            //Cinque();
            //Sei();
            //Sette();
            //Otto();
            //Nove();
            //Dieci();
            Console.ReadLine();

        }

        // Esempio di lettura utilizzando XElement
        static void Uno()
        {
            XElement xelement = XElement.Load("..\\..\\..\\Data\\Employees.xml");
            IEnumerable<XElement> employees = xelement.Elements();
            // Read the entire XML
            foreach (var employee in employees)
            {
                Console.WriteLine(employee);
            }
        }

        // Esempio di lettura utilizzando XDocument
        static void Due()
        {
            XDocument xdocument = XDocument.Load("..\\..\\..\\Data\\Employees.xml");
            IEnumerable<XElement> employees = xdocument.Elements();
            foreach (var employee in employees)
            {
                Console.WriteLine(employee);
            }

            // oppure in un'unica istruzione 
            // XDocument.Load("..\\..\\..\\Data\\Employees.xml").Elements().ToList().ForEach(c => Console.WriteLine(c));
        }

        // Se voglio accedere soltanto all'elemento Name del mio xml
        static void Tre()
        {
            XElement xelement = XElement.Load("..\\..\\..\\Data\\Employees.xml");
            IEnumerable<XElement> employees = xelement.Elements();
            Console.WriteLine("List of all Employee Names :");
            foreach (var employee in employees)
            {
                Console.WriteLine(employee.Element("Name").Value);
            }

            // Provate ad ottenere lo stesso output con due istruzioni
            
        }

        // Oppure a più elementi del mio xml
        static void Quattro()
        {
            XElement xelement = XElement.Load("..\\..\\..\\Data\\Employees.xml");
            IEnumerable<XElement> employees = xelement.Elements();
            Console.WriteLine("List of all Employee Names along with their ID:");
            foreach (var employee in employees)
            {
                Console.WriteLine($"{employee.Element("Name").Value} has Employee ID {employee.Element("EmpId").Value}");
            }
        }

        // Se voglio filtrare il mio xml specificando il valore di un elemento elemento posso usare
        static void Cinque()
        {
            XElement xelement = XElement.Load("..\\..\\..\\Data\\Employees.xml");
            IEnumerable<XElement> name = from nm in xelement.Elements("Employee") // estrae soltanto gli elementi Employee
                       where (String)nm.Element("Sex") == "Female"
                       select nm;
            Console.WriteLine("Details of Female Employees:");
            foreach (XElement xEle in name)
                Console.WriteLine(xEle);

            // oppure 
            // Console.WriteLine("Details of Female Employees:");
            // XElement.Load("..\\..\\..\\Data\\Employees.xml").Elements("Employee")
            //  .Where(c=> (String)c.Element("Sex") == "Female").ToList()
            //  .ForEach(c=> Console.WriteLine(c));
        }

        // Filtriamo solo gli Employee che hanno il phone type di tipo address
        static void Sei()
        {
            XElement xelement = XElement.Load("..\\..\\..\\Data\\Employees.xml");
            IEnumerable<XElement> homePhone = from phoneno in xelement.Elements("Employee")
                            where (String)phoneno.Element("Phone").Attribute("Type") == "Home"
                            select phoneno;
            Console.WriteLine("List HomePhone Nos.");
            foreach (XElement xEle in homePhone)
            {
                Console.WriteLine($"{xEle.Element("Name").Value} {xEle.Element("Phone").Value}");
            }

            // proviamo ad ottenere lo stesso risultato più velocemente
        }

        // Proviamo a visualizzare soltanto tutti i zip code che sono nidificati all'interno dell'elemento address
        static void Sette()
        {
            XElement xelement = XElement.Load("..\\..\\..\\Data\\Employees.xml");
            Console.WriteLine("List of all Zip Codes");
            foreach (XElement xEle in xelement.Descendants("Zip"))
            {
                Console.WriteLine((string)xEle);
            }

            // come al solito la versione zippata
            // Console.WriteLine("List of all Zip Codes");
            // XElement.Load("..\\..\\..\\Data\\Employees.xml")
            //  .Descendants("Zip").ToList()
            //  .ForEach(c => Console.WriteLine((string)c));
        }

        // filtriamo tutti gli Employee che vivono ad Acampo ed ordiniamoli per nome
        static void Otto()
        {
            XElement.Load("..\\..\\..\\Data\\Employees.xml").Elements("Employee")
                .Where(c=> (String)c.Element("Address").Element("City") == "Acampo")
                .OrderBy(c=> (String)c.Element("Name")).ToList()
                .ForEach(c=>Console.WriteLine(c));
        }

        // Aggiungiamo un altro employee
        static void Nove()
        {
            XElement xEle = XElement.Load("..\\..\\..\\Data\\Employees.xml");
            xEle.Add(new XElement("Employee",
            new XElement("EmpId", 6),
            new XElement("Name", "George"),
            new XElement("Sex", "Male"),
            new XElement("Phone", "423-555-4224", new XAttribute("Type", "Home")),
            new XElement("Phone", "424-555-0545", new XAttribute("Type", "Work")),
            new XElement("Address",
                new XElement("Street", "Fred Park, East Bay"),
                new XElement("City", "Acampo"),
                new XElement("State", "CA"),
                new XElement("Zip", "95220"),
                new XElement("Country", "USA"))));

            xEle.Save("..\\..\\..\\Data\\Employees2.xml");
            Console.WriteLine(xEle);
        }

        // Posso sempre deserializzare ed utilizza liq to object
        static void Dieci()
        {
            XmlSerializer serializer = new XmlSerializer(typeof(EmployeesList));
            EmployeesList employees = null;

            using (Stream reader = new FileStream("..\\..\\..\\Data\\Employees.xml", FileMode.Open))
                employees = (EmployeesList)serializer.Deserialize(reader);

            foreach(Employee employee in employees.Employees)
            {
                Console.WriteLine(employee.Name);
            }
        }
    }
}
