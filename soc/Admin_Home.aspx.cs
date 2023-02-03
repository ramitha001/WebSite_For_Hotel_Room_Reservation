using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace soc
{
    public partial class Admin_Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInsertHotel_Click(object sender, EventArgs e)
        {

            Response.Redirect("Adding_Hotel.aspx");
        }

        protected void btnInsertRoom_Click(object sender, EventArgs e)
        {
            Response.Redirect("Room_Details.aspx");
        }

        protected void btnManageDetails_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Hotel.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Manage_Rooms.aspx");
        }
    }
}