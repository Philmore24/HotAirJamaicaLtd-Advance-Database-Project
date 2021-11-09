using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotAirJamaicaLtd
{
    public partial class AddInstallation1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void InstallSubmit_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);

            trn.Text = string.Empty;
            notes.Text = string.Empty;
            emp.Text = string.Empty;
            acc.Text = string.Empty;
            dateinstall.Text = string.Empty;
            pid.Text = string.Empty;
            charge.Text = string.Empty;


        }
    }
}