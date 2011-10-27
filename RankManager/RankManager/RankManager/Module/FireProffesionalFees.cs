
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;



namespace RankManager.Module
{
    public class FireProffesionalFees
    {
        

        public FireProffesionalFees(double loss)
        {
            this.loss = loss;
            this.fees = 0.0;
        }
        public  FireProffesionalFees()
        {
            this.loss = 0.0;
            this.fees = 0.0;
        }

        
        public double loss { get; set; }
        public double fees { get; set; }
        public double calculateFees()
        {
            if (loss <= 50000)
            {
                fees = 0.10 * loss;
            }
            else if (loss <= 100000)
            {
                fees = 5000 + (0.02 * (loss - 50000));
            }
            else if (loss <= 1000000)
            {
                fees = 6000 + (0.015 * (loss - 100000));
            }
            else if (loss <= 2500000)
            {
                fees = 195000 + (0.0125 * (loss - 1000000));
            }
            else if (loss <= 5000000)
            {
                fees = 38250 + (0.01 * (loss - 2500000));
            }
            else if (loss <= 10000000)
            {
                fees = 63750 + (0.0075 * (loss - 5000000));
            }
            else if (loss <= 50000000)
            {
                fees = 101250 + (0.002 * (loss - 10000000));
            }
            else
            {
                fees = 181250 + (0.001 * (loss - 50000000));
            }
            if(fees<4500)
                fees=4500;
            else if(fees>600000)
                fees=600000;
            return fees;
        }
    }
}
