using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Text.RegularExpressions;

namespace AirGo
{
    public partial class Cacc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
                con.Open();
                string CheckUser = "select count(*) from Entry where UserName='" + TextBox1.Text + "'";
                SqlCommand com = new SqlCommand(CheckUser, con);
                int temp = Convert.ToInt32(com.ExecuteScalar().ToString().Replace(" ", ""));
                if (temp == 1)
                {
                    Label1.Text = "*User Already Exist";
                }
                con.Close();
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
                con.Open();

                string CheckUser = "select count(*) from Entry where UserName='" + TextBox1.Text + "'";
                SqlCommand comm = new SqlCommand(CheckUser, con);
                int temp = Convert.ToInt32(comm.ExecuteScalar().ToString().Replace(" ", ""));

                string val = TextBox2.Text;
                string pattern = @"^[a-z][a-z|0-9|]*([_][a-z|0-9]+)*([.][a-z|0-9]+([_][a-z|0-9]+)*)?@[a-z][a-z|0-9|]*\.([a-z][a-z|0-9]*(\.[a-z][a-z|0-9]*)?)$";
                Match match = Regex.Match(val.Trim(), pattern, RegexOptions.IgnoreCase);


                if (TextBox1.Text == String.Empty || TextBox2.Text == String.Empty || TextBox3.Text == String.Empty || TextBox4.Text == String.Empty || TextBox5.Text == String.Empty)
                {
                    Label1.Text = "*Please fill all the blocks";
                }
                else if (temp == 1)
                {
                    Label1.Text = "*User Already Exist";
                }
                else if (!match.Success)
                {
                    Label1.Text = "*Invalid email address";
                }
                else if (TextBox3.Text.Length < 5)
                {
                    Label1.Text = "*Chose at least 5 character password";
                }
                else if (TextBox3.Text != TextBox4.Text)
                {
                    Label1.Text = "*Password doesn't match";
                }
                else
                {
                    string InsertUser = "insert into Entry (UserName, Email, Password, MobileNo, AccType) values (@username, @email, @password, @mobileno, @type)";
                    SqlCommand com = new SqlCommand(InsertUser, con);
                    com.Parameters.AddWithValue("@username", TextBox1.Text);
                    com.Parameters.AddWithValue("@email", TextBox2.Text);
                    com.Parameters.AddWithValue("@password", TextBox3.Text);
                    com.Parameters.AddWithValue("@mobileno", TextBox5.Text);
                    com.Parameters.AddWithValue("@type", "user");
                    com.ExecuteNonQuery();
                    Label1.Text = "Account created successfully";
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