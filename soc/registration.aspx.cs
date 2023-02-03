using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace soc
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection sqlCon;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                sqlCon = new SqlConnection("data source=DESKTOP-K04TR38;database=CSE5013-Service_Oriented_Computing;user id=sa; password=ramitha");
                sqlCon.Open();
                lblMsg.Text = "Connection Done..!!";
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error Connecting db" + ex;
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("insert into user_registration values('" + txtUserName.Text + "','" + txtEmail.Text + "','" + txtPassword.Text + "','" + txtMobileNumber.Text + "','" + txtNic.Text + "','" + txtAddress.Text + "','" + DropDownList1.Text + "')");

                cmd.Connection = sqlCon;
                int temp = cmd.ExecuteNonQuery();

                if (temp > 0)
                    lblMsg.Text = "Record Successfuly Added";

                else
                {
                    lblMsg.Text = "Record fail to added";
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error inserting data"+ex;
            }
        }
    }
}