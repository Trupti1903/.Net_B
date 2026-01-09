using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Tutorials_website
{
    public partial class LoginPage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=C:\\ASP.net_Bhoomi_maam\\Tutorials_website\\App_Data\\Database1.mdf;Integrated Security=True");
        private readonly object Label4;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["userinfo1"]!=null)
                {
                    string user = Request.Cookies["usercookie"]["Username"];
                    
                }
            }
        }

        private void NewMethod(string user)
        {
            Label4.Text = "Welcome" + user;
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd= new SqlCommand("SELECT username, password FROM Login WHERE username='" + TextBox1.Text + "' AND password='" + TextBox2.Text + "'", con);
            //"SELECT username FROM login1 WHERE username=@u AND password=@pass"
            cmd.Parameters.AddWithValue("@Username", TextBox1.Text);
            cmd.Parameters.AddWithValue("@Pwd", TextBox2.Text);
            con.Open();

            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Session["Username"] = TextBox1.Text;

                //SET COOKIE
                HttpCookie cookie = new HttpCookie("usercookie");
                cookie.Value = TextBox1.Text;
                cookie.Expires = DateTime.Now.AddMinutes(1);
                Response.Redirect("WebForm2");
            }
            else
            {
                Response.Write("Username and Password doen't match");
            }
        }
    }
}