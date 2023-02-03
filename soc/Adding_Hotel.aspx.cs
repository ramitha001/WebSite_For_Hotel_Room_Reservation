using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.IO;

namespace soc
{
    public partial class Adding_Hotel : System.Web.UI.Page
    {
        SqlConnection sqlCon;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                sqlCon = new SqlConnection("data source=DESKTOP-K04TR38;database=CSE5013-Service_Oriented_Computing;user id=sa; password=ramitha");
                sqlCon.Open();

                lblMsg.Text = "Connection Done";

            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error Connecting db" + ex;
            }
            if (!IsPostBack)
            {
                GVbind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (imgHotel.HasFiles)
            {
                try
                {

                    string fname = Path.GetFileName(imgHotel.FileName);
                    imgHotel.SaveAs(Server.MapPath("Images/") + fname);

                    SqlCommand cmd = new SqlCommand("insert into Hotel_Details values('" + txtHotelId.Text + "','" + txtHotelName.Text + "','" + txtLocation.Text + "','" + txtContactInfo.Text + "','" + txtEmail.Text + "','" + txtType.Text + "','" + txtAvailableRooms.Text + "','" + imgHotel.FileName + "')");

                    cmd.Connection = sqlCon;
                    int temp = cmd.ExecuteNonQuery();

                    if (temp > 0)
                        Response.Write("<script>alert('Record Successfully Added');</script>");

                    else
                    {
                        lblMsg.Text = "Record fail to added";
                    }
                }
                catch (Exception ex)
                {
                    lblMsg.Text = "Error inserting data" + ex;
                }
            }
        }
        protected void GVbind()
        {
            SqlCommand cmd = new SqlCommand("select * from Hotel_Details");
            cmd.Connection = sqlCon;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView1.DataSource = dr;
                GridView1.DataBind();
            }
        }

        
    }
}