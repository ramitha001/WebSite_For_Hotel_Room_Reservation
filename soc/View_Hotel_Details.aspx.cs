using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace soc
{
    public partial class View_Hotel_Details : System.Web.UI.Page
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
            if (!IsPostBack)
            {
                GVbind();
            }
        }
        protected void GVbind()
        {
            SqlCommand cmd = new SqlCommand("select * from Room_Details");
            cmd.Connection = sqlCon;
            SqlDataReader dr = cmd.ExecuteReader();
            if (dr.HasRows == true)
            {
                GridView12.DataSource = dr;
                GridView12.DataBind();
            }
        }

        protected void btnSearch_Click(object sender, EventArgs e)
        {

            {

                SqlCommand sqlcomm = new SqlCommand();
                string sqlquery = "select * from [dbo].[Room_Details] where Country like '%'+@Country+'%'  ";
                sqlcomm.CommandText = sqlquery;
                sqlcomm.Connection = sqlCon;
                sqlcomm.Parameters.AddWithValue("Country", txtSearch.Text);
                DataTable dt = new DataTable();
                SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
                sda.Fill(dt);
                GridView12.DataSource = dt;
                GridView12.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            SqlCommand sqlcomm = new SqlCommand();
            string sqlquery = "select * from [dbo].[Room_Details] where City like '%'+@City+'%'  ";
            sqlcomm.CommandText = sqlquery;
            sqlcomm.Connection = sqlCon;
            sqlcomm.Parameters.AddWithValue("City", TextBox2.Text);
            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter(sqlcomm);
            sda.Fill(dt);
            GridView12.DataSource = dt;
            GridView12.DataBind();
        }

    }
    }


