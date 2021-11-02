using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotAirJamaicaLtd
{
    public partial class AddComercial : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            trn.Text = string.Empty;
            address.Text = string.Empty;
            company.Text = string.Empty;
            mac.Text = string.Empty;
            username.Text = string.Empty;
            ip.Text = string.Empty;
        }
    }
}