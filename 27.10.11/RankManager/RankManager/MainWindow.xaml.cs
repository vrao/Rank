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
using System.Windows.Navigation;
using System.Windows.Shapes;
using RankManager.Model;


namespace RankManager
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        public MainWindow()
        {
            InitializeComponent();
        }

        public void loginButton_Click(object sender, RoutedEventArgs e)
        {
            string username = userName.Text;
            string password = passwordBox1.Password;
            string query = ("SELECT PASS FROM LOGIN WHERE ID = '" + username + "' ");
            var repo = new Repository();
            var result=repo.ExecuteQuery(query) as String;
            if (password.Equals(result))
            {
                test.Text = "Success";
                var home = new Home();
                home.Show();
                this.Close();
           }
            else
                test.Text = "Failure";
        }
    }
}
