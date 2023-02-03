using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace soc
{
    public partial class Manage_Hotel : System.Web.UI.Page
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
            

        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtHotelId.Text = "";
            txtHotelName.Text = "";
            txtLocation.Text = "";
            txtContactInfo.Text = "";
            txtEmail.Text = "";
            txtType.Text = "";
            txtAvailableRooms.Text = "";

        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Select * from Hotel_Details where HotelID ='" + txtHotelId.Text + "'", sqlCon);


                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Response.Write("<script>alert('Data Funded !!');</script>");

                    txtHotelName.Text = dr[1].ToString();
                    txtLocation.Text = dr[2].ToString();
                    txtContactInfo.Text = dr[3].ToString();
                    txtEmail.Text = dr[4].ToString();
                    txtType.Text = dr[5].ToString();
                    txtAvailableRooms.Text = dr[6].ToString();
                    
                }
                else
                {
                    lblMsg.Text = "Data not Founded";
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Can't Found" + ex;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Update Hotel_Details set HotelName='" + txtHotelName.Text + "' ,location='" + txtLocation.Text + "',ContactNumber='" + txtContactInfo.Text + "',Email='" + txtEmail.Text + "',HotelType='" + txtType.Text + "',HotelRooms='" + txtAvailableRooms.Text + "' where HotelID='" + txtHotelId.Text + "'", sqlCon);


                int numberOfRecords = cmd.ExecuteNonQuery();
                if (numberOfRecords > 0)
                {
                    Response.Write("<script>alert('Hotel detail's Successfully Updated');</script>");
                }
            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error Updating data" + ex;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd1 = new SqlCommand("DELETE FROM Hotel_Details WHERE HotelID = '" + txtHotelId.Text + "'", sqlCon);
                int nor = cmd1.ExecuteNonQuery();

                if (nor > 0)
                {
                    Response.Write("<script>alert('Record Successfully Deleted!!');</script>");
                }
                else
                {
                    lblMsg.Text = "Rechord Delete Fail";
                }

            }
            catch (Exception ex)
            {
                lblMsg.Text = "Error inserting data" + ex;
            }
        }
    }
}