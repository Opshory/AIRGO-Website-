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
    public partial class Admin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["new"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
            con.Open();
            string CheckUser = "select AccType from Entry where UserName='" + Session["new"] + "'";
            SqlCommand com = new SqlCommand(CheckUser, con);
            string temp = com.ExecuteScalar().ToString().Replace(" ", "");
            if (temp != "admin")
            {
                Response.Redirect(Request.UrlReferrer.ToString());
            }
            con.Close();

            if (Session["new"] != null)
            {
                Label2.Text = "[" + Session["new"].ToString() + "]";
                SignIn.Text = "Logout";
            }


            string cs = ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString;
            using (SqlConnection con2 = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from AllOrder where State='Pending'", con2);
                //SqlCommand cmd = new SqlCommand("select * from flight", con);
                con2.Open();
                GridView1.DataSource = cmd.ExecuteReader();
                GridView1.DataBind();
                con2.Close();
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

        protected void Check_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
                con.Open();
                string CheckUser = "select Flight_No from [dbo].[AllOrder] where OrderId=" + TextBox1.Text + "";
                SqlCommand com = new SqlCommand(CheckUser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
                CheckUser = "select Seat from [dbo].[AllOrder] where OrderId=" + TextBox1.Text + "";
                com = new SqlCommand(CheckUser, con);
                string temp2 = com.ExecuteScalar().ToString().Replace(" ", "");

                CheckUser = "select " + temp2 + " from Ticket where ID=" + temp + "";
                com = new SqlCommand(CheckUser, con);
                int temp3 = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
                if (temp3 == 0)
                {
                    
                    Label1.Text = "Available";
                    Page_Load(null, EventArgs.Empty);
                }
                else
                {
                    Label1.Text = "Not Available";
                    Page_Load(null, EventArgs.Empty);
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
                con.Open();
                string CheckUser = "select Flight_No from [dbo].[AllOrder] where OrderId=" + TextBox3.Text + "";
                SqlCommand com = new SqlCommand(CheckUser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
                CheckUser = "select Seat from [dbo].[AllOrder] where OrderId=" + TextBox3.Text + "";
                com = new SqlCommand(CheckUser, con);
                string temp2 = com.ExecuteScalar().ToString().Replace(" ", "");

                CheckUser = "select " + temp2 + " from Ticket where ID=" + temp + "";
                com = new SqlCommand(CheckUser, con);
                int temp3 = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
                if (temp3 == 0)
                {
                    Label3.Text = "Order Confirmed";
                    CheckUser = "update [dbo].[AllOrder] SET State='Accepted' where OrderID=" + TextBox3.Text + "";
                    com = new SqlCommand(CheckUser, con);
                    com.ExecuteNonQuery();

                    CheckUser = "update Ticket SET " + temp2 + "=1 where ID=" + temp + "";
                    com = new SqlCommand(CheckUser, con);
                    com.ExecuteNonQuery();
                    Page_Load(null, EventArgs.Empty);
                }
                else
                {
                    Label3.Text = "Sorry! not available now";
                }
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Cancel_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
                con.Open();
                Label4.Text = "Order Canceled";
                string CheckUser = "update [dbo].[AllOrder] SET State='Rejected' where OrderID=" + TextBox4.Text + "";
                SqlCommand com = new SqlCommand(CheckUser, con);
                com.ExecuteNonQuery();
                Page_Load(null, EventArgs.Empty);
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void POCheck_Click(object sender, EventArgs e)
        {
            SqlConnection con2 = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
            con2.Open();
            string CheckUser = "select Flight_No from [dbo].[AllOrder] where OrderId=" + TextBox5.Text + "";
            SqlCommand com = new SqlCommand(CheckUser, con2);
            int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
            con2.Close();

            string cs = ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from [dbo].[AllOrder] where OrderID=" + TextBox5.Text + "", con);
                //SqlCommand cmd = new SqlCommand("Select * from [dbo].[Order]", con);
                con.Open();
                GridView2.DataSource = cmd.ExecuteReader();
                GridView2.DataBind();
            }


            using (SqlConnection con3 = new SqlConnection(cs))
            {
                SqlCommand cmd = new SqlCommand("Select * from Flight where Flight_Number=" + temp + "", con3);
                //SqlCommand cmd = new SqlCommand("Select * from [dbo].[Order]", con);
                con3.Open();
                GridView3.DataSource = cmd.ExecuteReader();
                GridView3.DataBind();
            }
        }

        protected void Clear_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
                con.Open();
                Label6.Text = "History Cleared";
                string CheckUser = "update Ticket SET A1=0, A2=0,A3=0, A4=0, A5=0, A6=0, B1=0, B2=0, B3=0, B4=0, B5=0, B6=0, C1=0, C2=0, C3=0, C4=0, C5=0, C6=0, D1=0, D2=0, D3=0, D4=0, D5=0, D6=0 where ID=" + TextBox6.Text + "";
                SqlCommand com = new SqlCommand(CheckUser, con);
                com.ExecuteNonQuery();
                Page_Load(null, EventArgs.Empty);
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        protected void Create_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
                con.Open();

                if (TextBox7.Text == String.Empty || TextBox8.Text == String.Empty)
                {
                    Label7.Text = "Please give UserName & Password";
                }
                else
                {
                    string InsertUser = "insert into Entry (UserName, Password, AccType) values (@username, @password, @type)";
                    SqlCommand com = new SqlCommand(InsertUser, con);
                    com.Parameters.AddWithValue("@username", TextBox7.Text);
                    com.Parameters.AddWithValue("@password", TextBox8.Text);
                    com.Parameters.AddWithValue("@type", "admin");
                    com.ExecuteNonQuery();
                    Label7.Text = "Account created successfully";
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }

    }
}