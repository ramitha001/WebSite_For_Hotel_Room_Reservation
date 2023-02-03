using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace soc
{
    public partial class Manage_Rooms : System.Web.UI.Page
    {

        SqlConnection sqlCon;
        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                sqlCon = new SqlConnection("data source=DESKTOP-K04TR38;database=CSE5013-Service_Oriented_Computing;user id=sa; password=ramitha");
                sqlCon.Open();

                Label1.Text = "Connection Done";

            }
            catch (Exception ex)
            {
                Label1.Text = "Error Connecting db" + ex;
            }
        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            txtRoomID.Text = "";
            DropDownList1.Text = "";
            txtPrice.Text = "";
            dlHotel.Text = "";
            txtCounrty.Text = "";
            txtCity.Text = "";
            txtDescription.Text = "";



        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Select * from Room_Details where RoomID ='" + txtRoomID.Text + "'", sqlCon);


                SqlDataReader dr = cmd.ExecuteReader();

                if (dr.Read())
                {
                    Response.Write("<script>alert('Data Founded');</script>");

                    DropDownList1.Text = dr[1].ToString();
                    txtPrice.Text = dr[2].ToString();
                    dlHotel.Text = dr[3].ToString();
                    txtCounrty.Text = dr[4].ToString();
                    txtCity.Text = dr[5].ToString();
                    txtDescription.Text = dr[6].ToString();

                }
                else
                {
                    Response.Write("<script>alert('Data Nit Founded!!');</script>");
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                Label1.Text = "Can't Found" + ex;
            }
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Update Room_Details set Room_Type='" + DropDownList1.Text + "' ,price='" + txtPrice.Text + "',Country='" + txtCounrty.Text + "',City='" + txtCity.Text + "',Description='" + txtDescription.Text + "' where RoomID='" + txtRoomID.Text + "'", sqlCon);


                int numberOfRecords = cmd.ExecuteNonQuery();
                if (numberOfRecords > 0)
                {
                    Response.Write("<script>alert('Hotel Room detail's Successfully Updated');</script>");
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Hotel Room detail's Not Updated');</script>");
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd1 = new SqlCommand("DELETE FROM Room_Details WHERE RoomID = '" + txtRoomID.Text + "'", sqlCon);
                int nor = cmd1.ExecuteNonQuery();

                if (nor > 0)
                {
                    Response.Write("<script>alert('Successfully Deleted');</script>");
                }
                else
                {
                    Label1.Text = "Rechord update Fail";
                }

            }
            catch (Exception ex)
            {
                Label1.Text = "Error inserting data" + ex;
            }
        }
    }
}