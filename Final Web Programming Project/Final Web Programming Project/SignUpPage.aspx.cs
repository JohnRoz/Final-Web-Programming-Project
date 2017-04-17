using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Final_Web_Programming_Project
{
    public partial class SignUpPage : System.Web.UI.Page
    {
        private string connStr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"|DataDirectory|\\AbsoluteDatabase.mdf\";Integrated Security=True";
        public string repeatedDetailsMessege = "";

        protected void Page_Load(object sender, EventArgs e)
        {
          
            if (Request.HttpMethod == "POST")
            {

                string username = Request.Form["usernameInput"];
                string password = Request.Form["passwordInput"];
                string email = Request.Form["emailAddressInput"];
                string fullName = Request.Form["FullNameInput"];

                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();
                SqlCommand command = conn.CreateCommand();
                command.CommandText = "INSERT INTO Users VALUES(@0,@1,@2,@3,1,0);";

                command.Parameters.AddWithValue("@0", username);
                command.Parameters.AddWithValue("@1", password);
                command.Parameters.AddWithValue("@2", email);
                command.Parameters.AddWithValue("@3", fullName);
                try
                {
                    command.ExecuteNonQuery();
                    Session["UserFullName"] = fullName;
                    Response.Redirect("Index.aspx");
                }

                catch(SqlException ex)
                {
                    repeatedDetailsMessege = "There is already a user with these details!";
                    //repeatedDetailsMessege = ex.Message;
                }
                

                conn.Close();
            }
            

        }

        private void CreateUsersTable(SqlConnection conn)
        {
            SqlCommand command = conn.CreateCommand();
            command.CommandText = @"
CREATE TABLE Users(
Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Username varchar(50) NOT NULL UNIQUE,
Password varchar(50) NOT NULL,
Email varchar(50) NOT NULL UNIQUE,
Full_Name varchar(50) NOT NULL,
Level int NOT NULL,
XP int NOT NULL
);
";
            command.ExecuteNonQuery();
        }

        private void CreateAchievementsTable(SqlConnection conn)
        {
            SqlCommand command = conn.CreateCommand();
            command.CommandText = @"
CREATE TABLE Achievements(
Id int NOT NULL IDENTITY(1,1) PRIMARY KEY,
Content varchar(255) NOT NULL,
UserId int NOT NULL FOREIGN KEY REFERENCES Users(Id)
);";
            command.ExecuteNonQuery();
        }
    }
}