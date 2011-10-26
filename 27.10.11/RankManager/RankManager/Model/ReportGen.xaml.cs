using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;
using RankManager.Module;

namespace RankManager.Model
{
    /// <summary>
    /// Interaction logic for Fire_Eng_misc.xaml
    /// </summary>
    public partial class Fire_Eng_misc : Window
    {
        public Fire_Eng_misc()
        {
            InitializeComponent();
        }

        private void button1_Click(object sender, RoutedEventArgs e)
        {
            //Only the prof fees as per the GIPSA scale varies from claim to claim..rest all are same..so like am calculating only the fees 
            //sep for the diff types of claims and the rest of the things would be jus under the same function..
            double loss = Double.Parse(lossAmount.Text);
            var fire = new FireProffesionalFees(loss);
            double fees=fire.calculateFees();
            var date = dateBill.Text;
           
            var rep = new RaiseInvoice(refNo.Text, billNo.Text, dateBill.Text, subject.Text, claimNo.Text, insurer.Text, insured.Text, policyNo.Text, dateLoss.ToString(), placeSurvey.Text, datesSurvey.Text, fees, loss, double.Parse(travelExpense.Text), 255.35, 500.32, double.Parse(localConveyance.Text), 50, double.Parse(bata.Text), 300);
        
        }
    }
}
