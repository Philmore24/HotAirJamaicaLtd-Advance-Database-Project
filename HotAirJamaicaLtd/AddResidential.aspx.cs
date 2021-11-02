using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotAirJamaicaLtd
{
    public partial class AddResidential : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }





        protected void addres_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            trn.Text = string.Empty;
            Address.Text = string.Empty;
            Mac.Text = string.Empty;
            Username.Text = string.Empty;
            IP.Text = string.Empty;
            dob.Text = string.Empty;
            Fname.Text = string.Empty;
            Lname.Text = string.Empty;

        }
    }
}