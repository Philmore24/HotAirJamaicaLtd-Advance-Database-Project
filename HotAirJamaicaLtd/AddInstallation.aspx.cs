using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotAirJamaicaLtd
{
    public partial class AddInstallation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }



        protected void Addinstall_Click(object sender, EventArgs e)
        {
            SqlDataSource1.Select(DataSourceSelectArguments.Empty);
            TRN.Text = string.Empty;
            bill.Text = string.Empty;
            AccNum.Text = string.Empty;
            PackageID.Text = string.Empty;
            date.Text = string.Empty;
            notes.Text = string.Empty;
            emp.Text = string.Empty;
        }


    }
}