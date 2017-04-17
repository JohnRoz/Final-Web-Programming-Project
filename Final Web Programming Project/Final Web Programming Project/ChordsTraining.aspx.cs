using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Web_Programming_Project
{
    public partial class ChordsTraining : System.Web.UI.Page
    {
        public string username = "User";
        public string user_email = "User@gmail.com";
        public string user_full_name = "User";
        //the word "User" is kind of the default to all those strings

        public int user_level = 0;
        public int user_XP = 0;
        public int target_XP = 0;
        //Zeros as default values

        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.HttpMethod == "GET")
            {
                if (Session["UserId"] == null)
                    Response.Redirect("SignInPage.aspx");
                else
                {
                    username = Session["Username"].ToString();
                    user_email = Session["UserEmail"].ToString();
                    user_full_name = Session["UserFullName"].ToString();
                    user_level = int.Parse(Session["UserLevel"].ToString());
                    user_XP = int.Parse(Session["UserXP"].ToString());

                }
            }
        }
    }
}