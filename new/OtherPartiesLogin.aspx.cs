using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace new1
{
    public partial class OtherPartiesLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void OtherPartieslogin(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Danusha\Documents\RDA.mdf;Integrated Security=True;Connect Timeout=30");
            SqlDataAdapter sda = new SqlDataAdapter("Select * From OtherPartiesReg Where Username='" + username.Text + "' and Password='" + password.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);

            if (dt.Rows.Count.ToString() == "1")
            {
                Session["Email"] = username.Text;
                Response.Redirect("ControlPanel.aspx");

            }
            else
            {
                error.Text = "Please check your email or password is correct*";
                error.ForeColor = System.Drawing.Color.Red;
            }

        }
    }
}