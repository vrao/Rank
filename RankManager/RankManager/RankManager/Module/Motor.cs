using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RankManager.Module
{
    public class Motor
    {
        public Motor(double loss)
        {
            this.loss = loss;
            this.fees = 0.0;
        }
        public Motor()
        {
            this.loss = 0.0;
            this.fees = 0.0;
        }

        
        public double loss { get; set; }
        public double fees { get; set; }


        public double calculateFees()
        {
            if (loss <= 20000)
                fees = 600;
            else if (loss <= 50000)
                fees = 900;
            else if (loss <= 100000)
                fees = 1100;
            else if (fees <= 200000)
                fees = 1700;
            else
                fees = 2000 + (0.5 * (loss - 200000));
            if (fees > 7000)
                fees = 7000;
            return fees;
        }
    
    }
}
