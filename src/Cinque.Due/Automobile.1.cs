using System;
using System.Collections.Generic;
using System.Text;

namespace Cinque.Due.Uno
{
    internal class Automobile
    {
        public event EventHandler MotoreSpento;
        public event EventHandler MotoreFuoriGiri;

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
                    /*
                    if (MotoreFuoriGiri != null)
                        MotoreFuoriGiri(this, EventArgs.Empty);
                    */
                    MotoreFuoriGiri?.Invoke(this, EventArgs.Empty);
                }
            }
            else
            {
                MotoreSpento?.Invoke(this, EventArgs.Empty);
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
                    /*
                    if (MotoreSpento != null)
                        MotoreSpento(this, EventArgs.Empty);
                    */
                    MotoreSpento?.Invoke(this, EventArgs.Empty);
                }
            }
            else
            {
                MotoreSpento?.Invoke(this, EventArgs.Empty);
            }
        }

    }
}
