using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotAirJamaicaLtd
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegAcc_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            username.Text = string.Empty;
            usertpe.Text = string.Empty;
            email.Text = string.Empty;
            password.Text = string.Empty;
        }
    }
}