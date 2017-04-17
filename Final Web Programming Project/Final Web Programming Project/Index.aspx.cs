using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Final_Web_Programming_Project
{
    public partial class Index : System.Web.UI.Page
    {
        public string user_name = "User";
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["UserId"] != null)
                user_name = Session["UserFullName"].ToString();
            
            
        }
    }
}