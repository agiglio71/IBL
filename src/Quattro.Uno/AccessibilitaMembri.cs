using Quattro.Uno.CL;
using System;

namespace Quattro.Uno
{
    class Motociclo : Veicolo
    {
        public Motociclo()
        {
            this.Anno = 2020;
        }
    }

    class MCMain
    {
        public void StampaAnno()
        {
            Motociclo moto = new Motociclo();
            //moto.Anno = 2021;
        }
    }
}
