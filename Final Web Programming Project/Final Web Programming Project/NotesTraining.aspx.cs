using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Web_Programming_Project
{
    public partial class NotesTraining : System.Web.UI.Page
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

                ChordsTraining.UpdateUserLevelAndXP(newCurrLevel, newCurrXp, userId);

                Response.Redirect("MyProfile.aspx");
            }
        }
    }
}