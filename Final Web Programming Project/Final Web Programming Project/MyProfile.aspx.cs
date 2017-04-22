using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Final_Web_Programming_Project
{
    public partial class MyProfile : System.Web.UI.Page
    {
        //Calculating the target_XP with Growth and Decay:
        //XP(level) = INITIAL_GOAL * GROWTH_FACTOR ^ level
        public static double GROWTH_FACTOR = 1.2;
        public static int INITIAL_GOAL = 20;

        public int user_level = 0;
        public int user_XP = 0;
        public int target_XP = 0;
        //Zeros as default values

        public string username = "User";
        public string user_email = "User@gmail.com";
        public string user_full_name = "User";
        //the word "User" is kind of the default to all those strings

        public string achievementsList = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "GET")
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

                    //Calculate target_XP:
                    target_XP = GetTargetXP(user_level);

                    //Insert the achievements from the table to the list.
                    LoadAchievementsList();
                }
            }
        }

        private void LoadAchievementsList()
        {
            string listItems = "";

            SqlConnection conn = new SqlConnection(Index.connStr);
            conn.Open();

            SqlCommand command = conn.CreateCommand();
            command.CommandText = "SELECT * FROM Achievements;";
            using (SqlDataReader reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    listItems += "<li> - " + reader.GetString(1) + "</li>";
                }
            }

            conn.Close();

            achievementsList = "<ul class=\"list - group\"><b>" + listItems + "</b></ul>";
        }


        /**
         * This method returns the XP a user needs to reavh in order to level up,
         * using the Growth & Decay mechanics.
         */
        public static int GetTargetXP(int level)
        {
            // Levels start from 1, thats why the '-1'
            return (int)Math.Floor(INITIAL_GOAL * Math.Pow(GROWTH_FACTOR, level - 1));
        }

        public static int[] GetNewXpAndLevel(int currentlevel, int newXp, int currentXpInSession)
        {
            int targetXP = MyProfile.GetTargetXP(currentlevel);

            int totalXP = currentXpInSession + newXp;

            int newLevels = totalXP / targetXP;
            totalXP = totalXP - newLevels * targetXP;
            currentlevel += newLevels;

            int[] newXpAndLevel = { totalXP, currentlevel };

            return newXpAndLevel;
        }

        public static bool CheckForAchievements(int currentlevel)
        {
            if (currentlevel % 10 == 0)//new achievement!
                return true;
            return false;
        }
    }
}