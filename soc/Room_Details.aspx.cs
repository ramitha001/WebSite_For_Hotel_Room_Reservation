using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.IO;

namespace soc
{
    public partial class Room_Details : System.Web.UI.Page
    {
        SqlConnection sqlCon;

        protected void Page_Load(object sender, EventArgs e)
        {
            try
            {
                sqlCon = new SqlConnection("data source=DESKTOP-K04TR38;database=CSE5013-Service_Oriented_Computing;user id=sa; password=ramitha");
                sqlCon.Open();
                lblTxt.Text = "Successfuly Connected";
            }
            catch (Exception ex)
            {
                lblTxt.Text = "Error Connecting db" + ex;
            }
            if (!IsPostBack)
            {
                try
                {
                    SqlCommand cmd = new SqlCommand("Select HotelName from Hotel_Details", sqlCon);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    DataSet ds = new DataSet();

                    da.Fill(ds, "Hotel_Details");

                    dlHotel.DataSource = ds;
                    dlHotel.DataBind();

                    dlHotel.DataValueField = "HotelName";
                    dlHotel.DataBind();
                }
                catch (Exception ex)
                {
                    lblTxt.Text = "error" + ex;
                }
            }
        }

        String getHotelId()
        {
            string HotelID = "";
            try
            {
                SqlCommand cmd = new SqlCommand("Select HotelID from Hotel_Details where HotelName = '" + dlHotel.Text + "'", sqlCon);
                SqlDataReader dr = cmd.ExecuteReader();

                Boolean records = dr.HasRows;
                if (records)
                {
                    while (dr.Read())
                    {
                        HotelID = dr[0].ToString();
                    }
                }
                dr.Close();
            }
            catch (Exception ex)
            {
                lblTxt.Text = "error Display Category Name" + ex;
            }
            return HotelID;
        }


        protected void btnsubmit_Click(object sender, EventArgs e)
        {
            if (imgRoom.HasFiles)
            {
                try
                {
                    string fname = Path.GetFileName(imgRoom.FileName);
                    imgRoom.SaveAs(Server.MapPath("Images/") + fname);

                    SqlCommand cmd = new SqlCommand("insert into Room_Details values('" + txtRoomID.Text + "','" + DropDownList1.Text + "','" + txtPrice.Text + "','" + getHotelId() + "','" + txtCounrty.Text + "','" + txtCity.Text + "','" + txtDescription.Text + "','"+ imgRoom.FileName + "');");

                    cmd.Connection = sqlCon;
                    int temp = cmd.ExecuteNonQuery();

                    if (temp > 0)
                    {
                        Response.Write("<script>alert('Room Successfully Added');</script>");
                    }
                    else
                    {
                        lblTxt.Text = "Room fail to Added";
                    }
                }
                catch (Exception ex)
                {
                    lblTxt.Text = "Error inserting data" + ex;
                }
            }
        }
    }
}