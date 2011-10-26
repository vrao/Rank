using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using MySql.Data.MySqlClient; 

namespace RankManager.Model
{
    class Repository
    {
        public object ExecuteQuery(string query)
        {
            try
            {
                MySqlConnection connection = new MySqlConnection("server=localhost;database=rank;uid=root;password=");
                connection.Open();
                var command = connection.CreateCommand();

                command.CommandText = query;
                var result = command.ExecuteScalar();

                connection.Close();
                return result;
            }
            catch (MySqlException E)
            { }
            return false;
        } 
    
    
    }

}
