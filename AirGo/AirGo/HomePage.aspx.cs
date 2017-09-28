using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AirGo
{
    public partial class HomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {
                Label2.Text = "[" + Session["new"].ToString() + "]";
                SignIn.Text = "Logout";
            }
        }


        protected void SignIn_Click(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {
                Session["new"] = null;
                Session["FN"] = null;
                Session["Seat"] = null;
                Response.Redirect("HomePage.aspx");
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }
    }
}