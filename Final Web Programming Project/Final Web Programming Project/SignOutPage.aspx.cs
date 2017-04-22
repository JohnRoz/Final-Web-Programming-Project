using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Web_Programming_Project
{
    public partial class SignOutPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.HttpMethod == "GET")
            {
                Session.Clear();
                Session.Abandon();

                Response.Redirect("Index.aspx");
            }

        }
    }
}