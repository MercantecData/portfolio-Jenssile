using System;
using System.Collections.Generic;
using System.Text;

namespace BikeShop
{
    class Bike
    {
        public string bikemodle;
        public Tires tire;
        public string meterial;
        public double hight;
        public bool springs;
        public string color;
        public bool adult;

        public Bike(string bikemodle, Tires tire, string meterial, double hight, bool springs, string color, bool adult)
        {
            this.bikemodle = bikemodle ?? throw new ArgumentNullException(nameof(bikemodle));
            this.tire = tire ?? throw new ArgumentNullException(nameof(tire));
            this.meterial = meterial ?? throw new ArgumentNullException(nameof(meterial));
            this.hight = hight;
            this.springs = springs;
            this.color = color ?? throw new ArgumentNullException(nameof(color));
            this.adult = adult;
        }
    }
}
