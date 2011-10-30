using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using RankManager.Module;
using RankManager.Model;

namespace RankManager.Module
{
    class RaiseInvoice
    {
        public RaiseInvoice()
        {
            repo = new Repository();
            photoRate = float.Parse(repo.ExecuteQuery("SELECT photo_rate from admin") as string) ;
            taxRate = float.Parse(repo.ExecuteQuery("SELECT service_tax from admin") as string);
            
        
        }
        
        public float photoRate{get;set;}
        public float taxRate { get; set; }
        public Repository repo;
        
        
        //Since the travel details vary, am using overloaded functions..
        //Contains all the fields
        
        public void Invoice(string refNo,string billNo,string dateBill,string subject,string cliamNo,string insurer,
            string insured,string policyNo,string dateOfLoss,string placeOfSurvey,string datesOfSurvey,double fees,
            double loss,double travelCar,double travelAir,double travelBoarding,double localConveyance,double bataNo,double bata,
            double hotel,double photo,double misc)
        {
            var repo = new Repository();
            double gross = fees + travelAir + travelBoarding + travelCar + localConveyance + bata + hotel + (photo*photoRate) + misc;
            double tax = ((taxRate / 100) * gross);
            double total = tax  + gross;
            string query = "INSERT INTO SURVEY (ref_no,bill_no,date_bill,subject,claim_no,insurer,insured,policy_no,date_loss,place_survey,dates_survey,loss,professional_fees,travel_exp_car,travel_exp_air,travel_exp_boardingplace,local_conveyance,bata,hotel_charges,photo,misc,total_gross,tax,total_net) VALUES"+refNo;
            //"INSERT INTO " .answers. " (teamID,teamname,ans1,ans2,ans3,ans4,ans5,ans6,ans7,ans8,ans9,ans10,ans11,ans12,ans13,ans14,ans15,ans16,ans17,ans18,ans19,ans20,ans21,ans22,ans23,ans24,ans25) VALUES ('".$_SESSION['teamid']."',
            // string query = ("SELECT PASS FROM LOGIN WHERE ID = '" + username + "' ");
            repo.ExecuteQuery(query);
        }
       

        //Without travel by air and car
        public void Invoice(string refNo, string billNo, string dateBill, string subject, string claimNo, string insurer,
           string insured, string policyNo, string dateOfLoss, string placeOfSurvey, string datesOfSurvey, double fees,
           double loss, double travelBoarding, double localConveyance, double bataNo, double bata,
           double hotel, double photo, double misc) 
        {
            
            double gross = fees + travelBoarding +  localConveyance + bata + hotel + (photo*photoRate) + misc;
            double tax = ((taxRate / 100) * gross);
            double total = tax + gross;
            // "INSERT INTO users(usr_name, usr_pass) values" +
             //   "('"+username+"','"+password+"')";
            string query = "INSERT INTO SURVEY"+
            " (ref_no,loss,bill_no,date_bill,subject,claim_no,insurer,insured,policy_no,date_loss,"
            +"place_survey,dates_survey,fees,travel_exp_car,local_conveyance,bata,hotel_charges,photo,misc,total_gross,tax,total_net) VALUES" +
                "('" + refNo + "','" + loss + "','" + billNo + "','" + dateBill + "','" + subject + "','" + claimNo + "','"
                + insurer + "','" + insured + "','" + policyNo + "','" + dateOfLoss + "','" + placeOfSurvey + "','" + datesOfSurvey + "','"
                + fees + "','" + travelBoarding + "','" + localConveyance + "','" + bata + "','" + hotel + "','" + photo + "','" + misc + "','" + gross + "','" + tax + "','" + total + "')";
            
            repo.ExecuteQuery(query);
        
        
        }

      
        
        
    }
}
