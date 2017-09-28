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
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                HttpCookie usercookie = Request.Cookies["info"];
                if (usercookie != null)
                {
                    TextBox1.Text = usercookie["username"].ToString();
                    TextBox2.Text = usercookie["password"].ToString();

                }
                else
                {
                    TextBox1.Text = "";
                    TextBox2.Text = "";

                }


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
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["MainConnectionString"].ConnectionString);
            con.Open();
            string CheckUser = "select count(*) from Entry where UserName='" + TextBox1.Text + "'";
            SqlCommand commm = new SqlCommand(CheckUser, con);
            int temp = Convert.ToInt32(commm.ExecuteScalar().ToString().Replace(" ", ""));
            if (TextBox1.Text == String.Empty || TextBox2.Text == String.Empty)
            {
                Label1.Text = "*Please enter username and password";
            }
            else if (temp == 1)
            {
                string CheckPassword = "select Password from Entry where UserName='" + TextBox1.Text + "'";
                SqlCommand Upass = new SqlCommand(CheckPassword, con);
                string pass = Upass.ExecuteScalar().ToString().Replace(" ", "");
                if (pass == TextBox2.Text)
                {
                    Session["new"] = TextBox1.Text;


                    HttpCookie userData = new HttpCookie("info");
                    userData["username"] = TextBox1.Text;
                    userData["password"] = TextBox2.Text;
                    userData.Expires = System.DateTime.Now.AddSeconds(30);
                    Response.Cookies.Add(userData);
                    Response.Redirect("HomePage.aspx");


                    
                }
                else
                {
                    Label1.Text = "*Incorrect Password";
                }
            }
            else
            {
                Label1.Text = "*Incorrect Username";
            }
            con.Close();
        }
    }
}