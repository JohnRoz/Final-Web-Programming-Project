using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Final_Web_Programming_Project
{
    public partial class ChordsTraining : System.Web.UI.Page
    {
        //the word "User" is the default.
        public string user_full_name = "User";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.HttpMethod == "GET")
            {
                if (Session["UserId"] == null)
                    Response.Redirect("SignInPage.aspx");
                else
                {
                    user_full_name = Session["UserFullName"].ToString();
                }
            }

            // This request came the Save Progress button that submits the XP a user gained.
            else if (Request.HttpMethod == "POST")
            {
                //XP gained from game.
                int XP_gained;
                //If Request.Form["XP"] can be converted to a valid int, XP_gained's value will become that int.
                //else, XP_gained's value will become 0;
                bool isIntOk = int.TryParse(Request.Form["XP"], out XP_gained);


                //Level & XP in the profile.
                int currentLevel = int.Parse(Session["UserLevel"].ToString());
                int currentXp = int.Parse(Session["UserXP"].ToString());

                //Get the new Level & XP that should be updated to the profile.
                int[] newXpAndLevel = MyProfile.GetNewXpAndLevel(currentLevel, XP_gained, currentXp);
                Session["UserXP"] = newXpAndLevel[0];
                Session["UserLevel"] = newXpAndLevel[1];

                // Local variables for making life easier.
                int newCurrLevel = int.Parse(Session["UserLevel"].ToString());
                int newCurrXp = int.Parse(Session["UserXP"].ToString());
                int userId = int.Parse(Session["UserId"].ToString());

                UpdateUserLevelAndXP(newCurrLevel, newCurrXp, userId);

                Response.Redirect("MyProfile.aspx");
            }
        }

        public static void CreateNewAchievement(SqlConnection conn, int userLevelFromSession, int userIdFromSession)
        {
            bool isAchiAlreadyExists = false;

            //IF THE USER STILL DOESN"T HAVE THE SPECIFIED ACHIEVEMENT, INSERT IT!
            SqlCommand selectForAchiCommand = conn.CreateCommand();
            selectForAchiCommand.CommandText = string.Format("SELECT * FROM Achievements WHERE UserId = {0}", userIdFromSession);
            using (SqlDataReader reader = selectForAchiCommand.ExecuteReader())
            {
                while (reader.Read())
                    if (reader.GetString(1) == "Reached Level " + userLevelFromSession + " !")
                        isAchiAlreadyExists = true;
            }

            if (!isAchiAlreadyExists)
            {
                SqlCommand insertAchiCommand = conn.CreateCommand();
                insertAchiCommand.CommandText = string.Format("INSERT INTO Achievements VALUES('Reached Level {0} !',{1});",
                    userLevelFromSession, userIdFromSession);
                insertAchiCommand.ExecuteNonQuery();
            }
            
        }

        public static void UpdateUserLevelAndXP(int userLevelFromSession, int userXPfromSession, int userIdFromSession)
        {
            SqlConnection conn = new SqlConnection(Index.connStr);
            conn.Open();

            SqlCommand command = conn.CreateCommand();
            command.CommandText = string.Format("UPDATE Users SET Level = {0}, XP = {1} WHERE Id = {2};",
                userLevelFromSession, userXPfromSession, userIdFromSession);
            command.ExecuteNonQuery();

            //Adding new achievements if exists
            if (MyProfile.CheckForAchievements(userLevelFromSession))
                CreateNewAchievement(conn, userLevelFromSession, userIdFromSession);

            conn.Close();
        }
    }
}