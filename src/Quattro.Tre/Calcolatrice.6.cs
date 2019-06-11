using System;
using System.Collections.Generic;
using System.Text;

namespace Quattro.Tre.Sei
{
    public class Calcolatrice
    {
        private Int32 Buffer = 0;
        private readonly KeyAdapter keyAdapter = new KeyAdapter();

        private IOperatore Operatore = null;

        public void Operazione(IOperatore operatore)
        {
            this.Buffer = this.keyAdapter.HaCifre ? this.keyAdapter.GetValore() : this.Buffer;
            this.Operatore = operatore;
        }

        public void AddCifra(Int32 cifra)
        {
            this.keyAdapter.AggiungiCifra(cifra);
        }
        
        public Int32 Totale()
        {
            this.Buffer = this.Operatore.Calcola(this.Buffer, this.keyAdapter.GetValore());
            return this.Buffer;
        }

        public void Back()
        {
            this.keyAdapter.Back();
        }
    }

    public interface IOperatore
    {
        Int32 Calcola(Int32 primoOperando, Int32 secondoOperando);
    }

    public class KeyAdapter
    {
        private readonly Stack<Int32> _Stack = new Stack<Int32>();

        public bool HaCifre { get { return this._Stack.Count > 0; } }

        public void AggiungiCifra(Int32 cifra)
        {
            this._Stack.Push(cifra);
        }

        public Int32 GetValore()
        {
            Int32 idx = 0, totale = 0, result = 0;

            while (this._Stack.TryPop(out result))
                totale += result * Convert.ToInt32(System.Math.Pow(10, idx++));

            return totale;
        }

        public void Back()
        {
            this._Stack.TryPop(out Int32 result);
        }
    }

    class Somma : IOperatore
    {
        Int32 IOperatore.Calcola(Int32 primoOperando, Int32 secondoOperando) => primoOperando + secondoOperando;
    }

    class Differenza : IOperatore
    {
        Int32 IOperatore.Calcola(Int32 primoOperando, Int32 secondoOperando) => primoOperando - secondoOperando;
    }

    class Prodotto : IOperatore
    {
        Int32 IOperatore.Calcola(Int32 primoOperando, Int32 secondoOperando) => primoOperando * secondoOperando;
    }

    class Divisione : IOperatore
    {
        Int32 IOperatore.Calcola(Int32 primoOperando, Int32 secondoOperando) => secondoOperando == 0 ? 0 : primoOperando / secondoOperando;
    }

    class ShiftDestro : IOperatore
    {
        Int32 IOperatore.Calcola(Int32 primoOperando, Int32 secondoOperando) => primoOperando >> secondoOperando;
    }
}
