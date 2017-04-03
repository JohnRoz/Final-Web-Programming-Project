using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Final_Web_Programming_Project
{
    public partial class HandleSignInPage : System.Web.UI.Page
    {
        string dbConnStr = "Data Source=.\\SQLEXPRESS;AttachDbFilename=\"|DataDirectory|\\MyDatabase.mdf\";Integrated Security=True;User Instance=True";
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(dbConnStr);
            conn.Open();
            //Stuff

            SqlCommand command = conn.CreateCommand();
            command.CommandText = @"CREATE TABLE Users(Id int IDENTITY(1,1) PRIMARY KEY, );";
            conn.Close();
        }
    }
}