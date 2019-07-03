using System;
using System.Collections.Generic;
using System.Text;
using System.Xml.Serialization;

namespace Otto.Uno.Models
{
    [XmlRoot(ElementName ="Employees")]
    public class EmployeesList
    {
        [XmlElement("Employee")]
        public Employee[] Employees { get; set; }
    }

    public class Employee
    {
        [XmlElement(ElementName = "EmpId")]
        public Int32 Id { get; set; }
        [XmlElement(ElementName = "Name")]
        public String Name { get; set; }
        [XmlElement(ElementName = "Sex")]
        public String Sex { get; set; }
        [XmlElement("Phones")]
        public Phone[] Phones { get; set; }
        [XmlElement(ElementName = "Address")]
        public Address Address { get; set; }
    }

    public class Phone
    {
        [XmlAttribute(AttributeName = "Type")]
        public String Type { get; set; }
        [XmlElement(ElementName = "Number")]
        public String Number { get; set; }

    }

    public class Address
    {
        [XmlElement(ElementName = "Street")]
        public String Street { get; set; }
        [XmlElement(ElementName = "City")]
        public String City { get; set; }
        [XmlElement(ElementName = "State")]
        public String State { get; set; }
        [XmlElement(ElementName = "Zip")]
        public String Zip { get; set; }
        [XmlElement(ElementName = "Country")]
        public String Country { get; set; }

    }
}
/*
 <Employee>
    <EmpId>1</EmpId>
    <Name>Sam</Name>
    <Sex>Male</Sex>
    <Phone Type="Home">423-555-0124</Phone>
    <Phone Type="Work">424-555-0545</Phone>
    <Address>
      <Street>7A Cox Street</Street>
      <City>Acampo</City>
      <State>CA</State>
      <Zip>95220</Zip>
      <Country>USA</Country>
    </Address>
  </Employee>
     */
