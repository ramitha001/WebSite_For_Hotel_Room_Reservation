using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace soc
{
    public partial class Login_Page : System.Web.UI.Page
    {
        SqlConnection sqlCon;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                sqlCon = new SqlConnection("data source=DESKTOP-K04TR38;database=CSE5013-Service_Oriented_Computing;user id=sa; password=ramitha");
                sqlCon.Open();

               

            }
            catch (Exception ex)
            {
                
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            SqlCommand cmd = new SqlCommand("select * from user_registration where UserName = '" + txtUser.Text + "' and Password = '" + txtPass.Text + "' and UserType='" + DropDownList1.SelectedItem.ToString() + "'");
            cmd.Connection = sqlCon;
            SqlDataAdapter sda = new SqlDataAdapter(cmd);

            DataTable dt = new DataTable();

            sda.Fill(dt);
            if (dt.Rows.Count > 0)
{
                
                if (DropDownList1.SelectedIndex == 0)
                {
                    Response.Write("<script>alert('Login success as admin');</script>");
                    Server.Transfer("Admin_Home.aspx");
                }
                else if (DropDownList1.SelectedIndex == 1)
                {

                    Response.Write("<script>alert('Login success as user');</script>");
                    Server.Transfer("User_Home.aspx");
                }

            }
else
{
                Response.Write("<script>alert('Login Error');</script>");
            }



        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Write("<script>alert('welcome to DEBi registration page');</script>");
            Response.Redirect("registration.aspx");
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home_Page.aspx");
        }
    }
    }
