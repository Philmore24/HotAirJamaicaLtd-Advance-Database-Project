using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotAirJamaicaLtd
{
    public partial class AddTechnician : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            empid.Text = string.Empty;
            email.Text = string.Empty;
            name.Text = string.Empty;
            address.Text = string.Empty;
            phone.Text = string.Empty;

        }
    }
}