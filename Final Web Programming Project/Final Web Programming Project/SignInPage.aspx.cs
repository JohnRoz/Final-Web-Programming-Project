using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Final_Web_Programming_Project
{
    public partial class SignInPage : System.Web.UI.Page
    {
        private string connStr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"|DataDirectory|\\AbsoluteDatabase.mdf\";Integrated Security=True";
        public string wrongDetailsMessege = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "POST")
            {
                string username = Request.Form["usernameSignInInput"];
                string password = Request.Form["passwordSignInInput"];

                SqlConnection conn = new SqlConnection(connStr);
                conn.Open();//TODO: CHECK IF YOU CAN DO THIS WITH THE 'using' STATEMENT.

                SqlCommand command = conn.CreateCommand();
                command.CommandText = "SELECT * FROM Users WHERE Username = @0;";
                command.Parameters.AddWithValue("@0", username);

                try
                {
                    using (SqlDataReader reader = command.ExecuteReader())
                    {
                        if (reader.Read())
                            if (reader.GetString(2) == password)
                            {
                                Session["UserId"] = reader.GetInt32(0);
                                Session["UserFullName"] = reader.GetString(4);
                                Response.Redirect("Index.aspx");
                            }

                            //Password is incorrect
                            else
                                wrongDetailsMessege = "Username or password are incorrect.";
                        //Username doesn't exist
                        else
                        {
                            wrongDetailsMessege = "Username or password are incorrect.";
                            //throw new Exception("WTF");
                        }
                    }
                }
                catch(SqlException ex)
                {
                    wrongDetailsMessege = ex.Message;
                }


                conn.Close();

            }
        }
    }
}