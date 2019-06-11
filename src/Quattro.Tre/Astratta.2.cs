using System;

namespace Quattro.Tre.Due
{
    public interface IFindable { void Find(); }
    public interface ISortable { void Sort(); }
    public interface IPrintable { void Print(); }
    public interface IFindableSortable : IFindable, ISortable { void Extra(); }

    public class Documento : IPrintable, IFindable, ISortable
    {
        // Implementazione già esistente nella classe documento
        public void Find() { Console.WriteLine("Find() originario della classe Documento"); }


        // Implementazione Esplicita
        void IFindable.Find() { Console.WriteLine("IFindable.Find() della classe Documento"); }
        
        // Implementazione Implicita
        public void Sort() { Console.WriteLine("Sort() della classe Documento"); }

        void IPrintable.Print() { Console.WriteLine("Print() della classe Documento"); }            
    }

    public class DocumentoSpeciale : Documento
    {
        public new void Find() { Console.WriteLine("Find() della classe DocumentoSpeciale"); }
        public new void Sort() { Console.WriteLine("Sort() della classe DocumentoSpeciale"); }
    }

}