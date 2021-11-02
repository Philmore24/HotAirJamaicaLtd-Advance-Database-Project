using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace HotAirJamaicaLtd
{
    public partial class AdminPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void addcus_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddComercial.aspx");
        }

        protected void addres_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddResidential.aspx");
        }

        protected void addpac_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddPackage.aspx");
        }

        protected void addtec_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddTechnician.aspx");
        }
    }
}