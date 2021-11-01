using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace HotAirJamaicaLtd
{
    public partial class Packages : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataSet ds = GetData();
            Repeater1.DataSource = ds;
            Repeater1.DataBind();
        }


        private DataSet GetData()
        {
            String CS = ConfigurationManager.ConnectionStrings["AD_PROJECTConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlDataAdapter da = new SqlDataAdapter("Select * from Package", con);
                DataSet ds = new DataSet();
                da.Fill(ds);
                return ds;


            }

        }
    }
}