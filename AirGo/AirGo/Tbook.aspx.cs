using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace AirGo
{
    public partial class Tbook : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["new"] != null)
            {
                Label2.Text = "[" + Session["new"].ToString() + "]";
                SignIn.Text = "Logout";
            }





            if (Session["FN"] == null && Session["Seat"] == null)
            {
                Label1.Text = "Your Flight Number is ----- and Seat Number is -----";
            }
            else if (Session["FN"] != null && Session["Seat"] == null)
            {
                Label1.Text = "Your Flight Number is " + Session["FN"] + " and Seat Number is -----";
            }

            else if (Session["FN"] == null && Session["Seat"] != null)
            {
                Label1.Text = "Your Flight Number is ----- and Seat Number is " + Session["Seat"];
            }

            else
            {
                Label1.Text = "Your Flight Number is " + Session["FN"]+ " and Seat Number is " + Session["Seat"];
            }


            if (Session["FN"] != null)
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString); con.Open();
                    string CheckUser = "select A1 from Ticket where ID=" + Session["FN"] + ""; SqlCommand com = new SqlCommand(CheckUser, con); int temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { A1.Text = "Book"; A1.BackColor = Color.Gray; } else { A1.Text = "A1"; A1.BackColor = Color.Blue; }
                    CheckUser = "select A2 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { A2.Text = "Book"; A2.BackColor = Color.Gray; } else { A2.Text = "A2"; A2.BackColor = Color.Blue; }
                    CheckUser = "select A3 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { A3.Text = "Book"; A3.BackColor = Color.Gray; } else { A3.Text = "A3"; A3.BackColor = Color.Blue; }
                    CheckUser = "select A4 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { A4.Text = "Book"; A4.BackColor = Color.Gray; } else { A4.Text = "A4"; A4.BackColor = Color.Blue; }
                    CheckUser = "select A5 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { A5.Text = "Book"; A5.BackColor = Color.Gray; } else { A5.Text = "A4"; A5.BackColor = Color.Blue; }
                    CheckUser = "select A6 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { A6.Text = "Book"; A6.BackColor = Color.Gray; } else { A6.Text = "A4"; A6.BackColor = Color.Blue; }
                    CheckUser = "select B1 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { B1.Text = "Book"; B1.BackColor = Color.Gray; } else { B1.Text = "B1"; B1.BackColor = Color.Blue; }
                    CheckUser = "select B2 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { B2.Text = "Book"; B2.BackColor = Color.Gray; } else { B2.Text = "B2"; B2.BackColor = Color.Blue; }
                    CheckUser = "select B3 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { B3.Text = "Book"; B3.BackColor = Color.Gray; } else { B3.Text = "B3"; B3.BackColor = Color.Blue; }
                    CheckUser = "select B4 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { B4.Text = "Book"; B4.BackColor = Color.Gray; } else { B4.Text = "B4"; B4.BackColor = Color.Blue; }
                    CheckUser = "select B5 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { B5.Text = "Book"; B5.BackColor = Color.Gray; } else { B5.Text = "A4"; B5.BackColor = Color.Blue; }
                    CheckUser = "select B6 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { B6.Text = "Book"; B6.BackColor = Color.Gray; } else { B6.Text = "A4"; B6.BackColor = Color.Blue; }
                    CheckUser = "select C1 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { C1.Text = "Book"; C1.BackColor = Color.Gray; } else { C1.Text = "C1"; C1.BackColor = Color.Blue; }
                    CheckUser = "select C2 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { C2.Text = "Book"; C2.BackColor = Color.Gray; } else { C2.Text = "C2"; C2.BackColor = Color.Blue; }
                    CheckUser = "select C3 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { C3.Text = "Book"; C3.BackColor = Color.Gray; } else { C3.Text = "C3"; C3.BackColor = Color.Blue; }
                    CheckUser = "select C4 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { C4.Text = "Book"; C4.BackColor = Color.Gray; } else { C4.Text = "C4"; C4.BackColor = Color.Blue; }
                    CheckUser = "select C5 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { C5.Text = "Book"; C5.BackColor = Color.Gray; } else { C5.Text = "A4"; C5.BackColor = Color.Blue; }
                    CheckUser = "select C6 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { C6.Text = "Book"; C6.BackColor = Color.Gray; } else { C6.Text = "A4"; C6.BackColor = Color.Blue; }
                    CheckUser = "select D1 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { D1.Text = "Book"; D1.BackColor = Color.Gray; } else { D1.Text = "D1"; D1.BackColor = Color.Blue; }
                    CheckUser = "select D2 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { D2.Text = "Book"; D2.BackColor = Color.Gray; } else { D2.Text = "D2"; D2.BackColor = Color.Blue; }
                    CheckUser = "select D3 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { D3.Text = "Book"; D3.BackColor = Color.Gray; } else { D3.Text = "D3"; D3.BackColor = Color.Blue; }
                    CheckUser = "select D4 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { D4.Text = "Book"; D4.BackColor = Color.Red; } else { D4.Text = "D4"; D4.BackColor = Color.Blue; }
                    CheckUser = "select D5 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { D5.Text = "Book"; D5.BackColor = Color.Gray; } else { D5.Text = "A4"; D5.BackColor = Color.Blue; }
                    CheckUser = "select D6 from Ticket where ID=" + Session["FN"] + ""; com = new SqlCommand(CheckUser, con); temp = Convert.ToInt32(com.ExecuteScalar().ToString()); if (temp == 1) { D6.Text = "Book"; D6.BackColor = Color.Gray; } else { D6.Text = "A4"; D6.BackColor = Color.Blue; }
                    con.Close();
                }
                catch (Exception ex)
                {
                    //nothing happens
                }



            }


            if (Session["FN"] == null) mydiv.Visible = false;
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

        protected void Check_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == String.Empty)
            {
                Label1.Text = "*Please Enter Flight Number";
            }
            else
            {
                Session["FN"] = TextBox1.Text;
                mydiv.Visible = true;
                Page_Load(null, EventArgs.Empty);
            }
        }

        protected void Order_Click(object sender, EventArgs e)
        {
            if (Session["FN"] == null || Session["Seat"] == null)
            {
                Label3.Text = "Please select your flight and seat number";
            }
            else if (TextBox2.Text == String.Empty || TextBox3.Text == String.Empty)
            {
                Label3.Text = "Please Fill the credit card number and pin";
            }
            else if(Session["new"] == null)
            {
                Label3.Text = "Please login before order";
            }
            else
            {
                try
                {
                    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
                    con.Open();
                    string CheckUser = "select " + Session["Seat"] + " from Ticket where ID=" + Session["FN"] + "";
                    SqlCommand com = new SqlCommand(CheckUser, con);
                    int temp = Convert.ToInt32(com.ExecuteScalar().ToString());
                    if (temp == 0)
                    {
                        Label3.Text = "Your Order Has been Submitted. Check your orders to be sure";
                        CheckUser = "INSERT INTO [dbo].[AllOrder] ([UserName], [Flight_No], [Seat], [CCNO], [CCPin], [State]) VALUES ('" + Session["new"] + "', " + Session["FN"] + ", '" + Session["Seat"] + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "', 'Pending')";
                        com = new SqlCommand(CheckUser, con);
                        /*com.Parameters.AddWithValue("@username", Session["new"]);
                        com.Parameters.AddWithValue("@busid", Session["BD"]);
                        com.Parameters.AddWithValue("@seatno", Session["Seat"]);
                        com.Parameters.AddWithValue("@state", 0);*/
                        try
                        {
                            com.ExecuteNonQuery();
                        }
                        catch (Exception ex)
                        {
                            Response.Write(ex.ToString());
                        }
                    }
                    else
                    {
                        Label3.Text = "Sorry. The seat is not available now. Please choose another seat";
                    }
                    con.Close();
                }
                catch (Exception ex)
                {
                    //do nothing
                }
            }
        }

        protected void A1_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "A1";
            Page_Load(null, EventArgs.Empty);
        }

        protected void A2_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "A2";
            Page_Load(null, EventArgs.Empty);
        }

        protected void A3_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "A3";
            Page_Load(null, EventArgs.Empty);
        }

        protected void A4_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "A4";
            Page_Load(null, EventArgs.Empty);
        }

        protected void A5_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "A5";
            Page_Load(null, EventArgs.Empty);
        }

        protected void A6_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "A6";
            Page_Load(null, EventArgs.Empty);
        }

        protected void B1_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "B1";
            Page_Load(null, EventArgs.Empty);
        }

        protected void B2_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "B2";
            Page_Load(null, EventArgs.Empty);
        }

        protected void B3_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "B3";
            Page_Load(null, EventArgs.Empty);
        }

        protected void B4_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "B4";
            Page_Load(null, EventArgs.Empty);
        }

        protected void B5_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "B5";
            Page_Load(null, EventArgs.Empty);
        }

        protected void B6_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "B6";
            Page_Load(null, EventArgs.Empty);
        }

        protected void C1_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "C1";
            Page_Load(null, EventArgs.Empty);
        }

        protected void C2_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "C2";
            Page_Load(null, EventArgs.Empty);
        }

        protected void C3_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "C3";
            Page_Load(null, EventArgs.Empty);
        }

        protected void C4_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "C4";
            Page_Load(null, EventArgs.Empty);
        }

        protected void C5_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "C5";
            Page_Load(null, EventArgs.Empty);
        }

        protected void C6_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "C6";
            Page_Load(null, EventArgs.Empty);
        }

        protected void D1_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "D1";
            Page_Load(null, EventArgs.Empty);
        }

        protected void D2_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "D2";
            Page_Load(null, EventArgs.Empty);
        }

        protected void D3_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "D3";
            Page_Load(null, EventArgs.Empty);
        }

        protected void D4_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "D4";
            Page_Load(null, EventArgs.Empty);
        }

        protected void D5_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "D5";
            Page_Load(null, EventArgs.Empty);
        }

        protected void D6_Click(object sender, EventArgs e)
        {
            Session["Seat"] = "D6";
            Page_Load(null, EventArgs.Empty);
        }



    }
}