using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;
using System.Drawing;

namespace AirGo
{
    public partial class Search : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
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
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = "BANGLADESH";
            Button1.BackColor = Color.Green;
            Button2.BackColor = Color.Red;
            Button3.BackColor = Color.Red;
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label1.Text = "DUBAI";
            Button1.BackColor = Color.Red;
            Button2.BackColor = Color.Green;
            Button3.BackColor = Color.Red;
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Label1.Text = "AMERICA";
            Button1.BackColor = Color.Red;
            Button2.BackColor = Color.Red;
            Button3.BackColor = Color.Green;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Label3.Text = "BANGLADESH";
            Button4.BackColor = Color.Green;
            Button5.BackColor = Color.Red;
            Button6.BackColor = Color.Red;
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Label3.Text = "DUBAI";
            Button4.BackColor = Color.Red;
            Button5.BackColor = Color.Green;
            Button6.BackColor = Color.Red;
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Label3.Text = "AMERICA";
            Button4.BackColor = Color.Red;
            Button5.BackColor = Color.Red;
            Button6.BackColor = Color.Green;
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            Label4.Text = "SATURDAY";
            Button7.BackColor = Color.Green;
            Button8.BackColor = Color.Red;
            Button9.BackColor = Color.Red;
            Button10.BackColor = Color.Red;
            Button11.BackColor = Color.Red;
            Button12.BackColor = Color.Red;
            Button13.BackColor = Color.Red;
        }

        protected void Button8_Click(object sender, EventArgs e)
        {
            Label4.Text = "SUNDAY";
            Button7.BackColor = Color.Red;
            Button8.BackColor = Color.Green;
            Button9.BackColor = Color.Red;
            Button10.BackColor = Color.Red;
            Button11.BackColor = Color.Red;
            Button12.BackColor = Color.Red;
            Button13.BackColor = Color.Red;
        }

        protected void Button9_Click(object sender, EventArgs e)
        {
            Label4.Text = "MONDAY";
            Button7.BackColor = Color.Red;
            Button8.BackColor = Color.Red;
            Button9.BackColor = Color.Green;
            Button10.BackColor = Color.Red;
            Button11.BackColor = Color.Red;
            Button12.BackColor = Color.Red;
            Button13.BackColor = Color.Red;
        }

        protected void Button10_Click(object sender, EventArgs e)
        {
            Label4.Text = "TUESDAY";
            Button7.BackColor = Color.Red;
            Button8.BackColor = Color.Red;
            Button9.BackColor = Color.Red;
            Button10.BackColor = Color.Green;
            Button11.BackColor = Color.Red;
            Button12.BackColor = Color.Red;
            Button13.BackColor = Color.Red;
        }

        protected void Button11_Click(object sender, EventArgs e)
        {
            Label4.Text = "WEDNESDAY";
            Button7.BackColor = Color.Red;
            Button8.BackColor = Color.Red;
            Button9.BackColor = Color.Red;
            Button10.BackColor = Color.Red;
            Button11.BackColor = Color.Green;
            Button12.BackColor = Color.Red;
            Button13.BackColor = Color.Red;
        }

        protected void Button12_Click(object sender, EventArgs e)
        {
            Label4.Text = "THURSDAY";
            Button7.BackColor = Color.Red;
            Button8.BackColor = Color.Red;
            Button9.BackColor = Color.Red;
            Button10.BackColor = Color.Red;
            Button11.BackColor = Color.Red;
            Button12.BackColor = Color.Green;
            Button13.BackColor = Color.Red;
        }

        protected void Button13_Click(object sender, EventArgs e)
        {
            Label4.Text = "FRIDAY";
            Button7.BackColor = Color.Red;
            Button8.BackColor = Color.Red;
            Button9.BackColor = Color.Red;
            Button10.BackColor = Color.Red;
            Button11.BackColor = Color.Red;
            Button12.BackColor = Color.Red;
            Button13.BackColor = Color.Green;
        }



        protected void search_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from Flight where Source='"+ Label1.Text +"' and Destination='"+ Label3.Text +"' and Day='"+ Label4.Text +"'", con);
                //SqlCommand cmd = new SqlCommand("select * from flight", con);
                con.Open();
                Grid1.DataSource = cmd.ExecuteReader();
                Grid1.DataBind();
                con.Close();
            }
        }

    }
}