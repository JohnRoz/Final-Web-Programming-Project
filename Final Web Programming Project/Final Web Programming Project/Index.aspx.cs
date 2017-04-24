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
        public string logInOrOutHTML = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Username"] != null)//LOGGED IN
            {
                user_full_name = Session["UserFullName"].ToString();

                //Add the UserID to the Session
                AddUserIDToSession(new SqlConnection(connStr), Session["Username"].ToString());

                logInOrOutHTML = "<!-- Sign Out --><div id = \"HeaderLinks\" class=\"6u SiteHeaderLink\"><a id = \"SignOut\" class=\"TextBold\" href=\"SignOutPage.aspx\">Sign Out</a></div>";

            }

            else
            {
                logInOrOutHTML = "<!-- Sign Up & Sign In --> <div id = \"HeaderLinks\" class=\"6u SiteHeaderLink\"><a id = \"SignInLink\" class=\"TextBold\" href=\"SignInPage.aspx\">Sign In</a><span> or </span><a id = \"SignUpLink\" class=\"TextBold\" href=\"SignUpPage.aspx\">Sign Up</a></div>";
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