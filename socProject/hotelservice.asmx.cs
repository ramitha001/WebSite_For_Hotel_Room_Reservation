using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Services;

namespace socProject
{
    /// <summary>
    /// Summary description for hotelservice
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    [System.ComponentModel.ToolboxItem(false)]
    // To allow this Web Service to be called from script, using ASP.NET AJAX, uncomment the following line. 
    // [System.Web.Script.Services.ScriptService]
    public class hotelservice : System.Web.Services.WebService
    {
        SqlConnection sqlCon;

        public SqlConnection getConnection()
        {
            try
            {
                sqlCon = new SqlConnection("data source=DESKTOP-K04TR38;database=CSE5013-Service_Oriented_Computing;user id=sa; password=ramitha");
                sqlCon.Open();
            }
            catch (Exception ex)
            {
                Console.WriteLine("Error connecting to Db" + ex);

            }
            return sqlCon;
        }


        


    }
}
