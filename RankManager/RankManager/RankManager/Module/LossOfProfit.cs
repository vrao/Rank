using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace RankManager.Module
{
    public class LossOfProfit
    {
        public LossOfProfit(double loss)
        {
            this.loss = loss;
            this.fees = 0.0;
        }
        public LossOfProfit()
        {
            this.loss = 0.0;
            this.fees = 0.0;
        }

        
        public double loss { get; set; }
        public double fees { get; set; }

        public double calculateFees()
        {
            if (loss <= 500000)
                fees = 2*loss;
            else if(loss<1000000)
                fees=21000+(1.5*(loss-500000));
            else if (loss < 10000000)
                fees = 37125 + (1 * (loss - 1000000));
            else
                fees = 136625 + (0.7 * (loss - 10000000));
            if (fees > 500000)
                fees = 500000;
            return fees;
        }
    }
}
