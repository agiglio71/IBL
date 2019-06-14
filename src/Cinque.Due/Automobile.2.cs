using System;
using System.Collections.Generic;
using System.Text;

namespace Cinque.Due.Due
{
    internal class Automobile
    {
        public Action MotoreSpento;
        public Action MotoreFuoriGiri;

        private  Int32 numeroGiri;
        private Boolean EngineOn { get; set; }

        public void MettiInMoto()
        {
            this.numeroGiri = 100;
            this.EngineOn = true;
        }

        public void Accellera()
        {
            if (this.EngineOn)
            {
                this.numeroGiri += 100;
                if (this.numeroGiri > 500)
                {
                    MotoreFuoriGiri?.Invoke();
                }
            }
            else
            {
                MotoreSpento?.Invoke();
            }
        }

        public void Decellera()
        {
            if (this.EngineOn)
            {
                this.numeroGiri -= 100;
                if (this.numeroGiri < 100)
                {
                    this.numeroGiri = 0;
                    this.EngineOn = false;

                    MotoreSpento?.Invoke();
                }
            }
            else
            {
                MotoreSpento?.Invoke();
            }
        }

    }
}
