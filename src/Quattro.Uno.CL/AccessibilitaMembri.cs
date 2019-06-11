using System;

namespace Quattro.Uno.CL
{
    public class Veicolo
    {
        protected internal Int32 Anno = 2019;

        public Veicolo()
        {
            this.Anno = 2018;
        }
    }

    class Automobile : Veicolo
    {
        public Automobile()
        {
            this.Anno = 2020;
        }
    }

    class AMMAin
    {
        public void StampaAnno()
        {
            Automobile auto = new Automobile();
            auto.Anno = 2021;
        }
    }
}
