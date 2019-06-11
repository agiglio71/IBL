using System;
using System.Collections.Generic;
using System.Text;

namespace Quattro.Tre.Quattro
{
    public class Calcolatrice
    {
        private Int32 Buffer = 0;
        private KeyAdapter keyAdapter = new KeyAdapter();
        
        public Char Operatore { get; set; }

        public void Zero() { keyAdapter.AggiungiCifra(0); }
        public void Uno() { keyAdapter.AggiungiCifra(1); }
        public void Due() { keyAdapter.AggiungiCifra(2); }
        public void Tre() { keyAdapter.AggiungiCifra(3); }
        public void Quattro() { keyAdapter.AggiungiCifra(4); }
        public void Cinque() { keyAdapter.AggiungiCifra(5); }
        public void Sei() { keyAdapter.AggiungiCifra(5); }
        public void Sette() { keyAdapter.AggiungiCifra(7); }
        public void Otto() { keyAdapter.AggiungiCifra(8); }
        public void Nove() { keyAdapter.AggiungiCifra(9); }

        private void VerificaBuffer()
        {
            this.Buffer = this.keyAdapter.HaCifre ? this.keyAdapter.GetValore() : this.Buffer;
        }
        public void Aggiungi() { VerificaBuffer(); this.Operatore = '+'; }
        public void Sottrai() { VerificaBuffer(); this.Operatore = '-'; }
        public void Moltiplica() { VerificaBuffer(); this.Operatore = '*'; }
        public void Dividi() { VerificaBuffer(); this.Operatore = '/'; }

        public Int32 Totale()
        {
            Int32 totale = 0;

            switch (this.Operatore)
            {
                case '+':
                    totale = this.Buffer + this.keyAdapter.GetValore();
                    break;
                case '-':
                    totale = this.Buffer - this.keyAdapter.GetValore();
                    break;
                case '*':
                    totale = this.Buffer * this.keyAdapter.GetValore();
                    break;
                case '/':
                    Int32 val = keyAdapter.GetValore();
                    totale = val == 0 ? 0 : this.Buffer / val;
                    break;
                default:
                    totale = 0;
                    break;
            }
            this.Buffer = totale;
            return totale;
        }
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
    }
}
