using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data;
using System.Data.SqlClient;
using System.Data.SqlTypes;


namespace HotAirJamaicaLtd
{
    public partial class AddCommercialPhil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                GetCommercialList();
            }
        }
        SqlConnection con = new SqlConnection(@"Data Source=SQL5063.site4now.net;Initial Catalog=db_a7c046_philmoread;User ID=db_a7c046_philmoread_admin;Password=Tengo54321");

        protected void AddCommercial_Click(object sender, EventArgs e)
        {
            String TRN = trn.Text, Address = address.Text, MAC = mac.Text, Username = username.Text, IP = ip.Text, Company = company.Text, Phone_Type = phonetype.SelectedValue, PhoneNumber = phonenumber.Text;
            con.Open();
            SqlCommand co = new SqlCommand("exec AddCommercialCus '" + TRN + "','" + Company + "','" + Address + "','" + MAC + "','" + Username + "','" + IP + "','" + Phone_Type + "','" + PhoneNumber + "'", con);
            co.ExecuteNonQuery();
            con.Close();
            ScriptManager.RegisterStartupScript(this, this.GetType(), "script", "alert('Successfully inserted.');", true);
            GetCommercialList();

        }

        void GetCommercialList()
        {
            SqlCommand co = new SqlCommand("exec CommercialProcedureView", con);
            SqlDataAdapter sd = new SqlDataAdapter(co);
            DataTable dt = new DataTable();
            sd.Fill(dt);
            GridView1.DataSource = dt;
            GridView1.DataBind();
        }


    }
}