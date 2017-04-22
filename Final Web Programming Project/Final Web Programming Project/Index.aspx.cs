using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Final_Web_Programming_Project
{
    public partial class Index : System.Web.UI.Page
    {
        public static string connStr = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=\"|DataDirectory|\\AbsoluteDatabase.mdf\";Integrated Security=True";
        public string user_full_name = "User";
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                user_full_name = Session["UserFullName"].ToString();

                //Add the UserID to the Session
                AddUserIDToSession(new SqlConnection(connStr), Session["Username"].ToString());
            }
            
            
            
        }

        private void AddUserIDToSession(SqlConnection conn, string username)
        {
            conn.Open();
            SqlCommand command = conn.CreateCommand();
            command.CommandText = string.Format("SELECT * FROM Users WHERE Username = '{0}'",username);
            using (SqlDataReader reader = command.ExecuteReader())
            {
                if (reader.Read())
                {
                    Session["UserId"] = reader.GetInt32(0);
                }
            }

                conn.Close();
        }
    }
}