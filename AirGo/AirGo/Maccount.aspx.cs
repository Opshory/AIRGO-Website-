using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace AirGo
{
    public partial class Maccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {
                Label2.Text = "[" + Session["new"].ToString() + "]";
                SignIn.Text = "Logout";
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
            con.Open();
            string CheckUser = "select UserName from Entry where UserName='" + Session["new"] + "'";
            SqlCommand commm = new SqlCommand(CheckUser, con);
            Label1.Text = "User Name: " + commm.ExecuteScalar().ToString().Replace(" ", "");
            CheckUser = "select Email from Entry where UserName='" + Session["new"] + "'";
            commm = new SqlCommand(CheckUser, con);
            Label3.Text = "Email: " + commm.ExecuteScalar().ToString().Replace(" ", "");
            CheckUser = "select MobileNo from Entry where UserName='" + Session["new"] + "'";
            commm = new SqlCommand(CheckUser, con);
            Label4.Text = "Mobile No: " + commm.ExecuteScalar().ToString().Replace(" ", "");
            CheckUser = "select AccType from Entry where UserName='" + Session["new"] + "'";
            commm = new SqlCommand(CheckUser, con);
            Label5.Text = "I am an " + commm.ExecuteScalar().ToString().Replace(" ", "");
            con.Close();
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

        protected void MOrders_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from AllOrder where UserName='"+ Session["new"] +"'", con);
                //SqlCommand cmd = new SqlCommand("select * from flight", con);
                con.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                con.Close();
            }
        }

        protected void LOrders_Click(object sender, EventArgs e)
        {
            string cs = ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from AllOrder where OrderId IN (select MAX(OrderId) from AllOrder where UserName='"+ Session["new"] +"')", con);
                //SqlCommand cmd = new SqlCommand("select * from flight", con);
                con.Open();
                GridView2.DataSource = cmd.ExecuteReader();
                GridView2.DataBind();
                con.Close();
            }
        }
    }
}