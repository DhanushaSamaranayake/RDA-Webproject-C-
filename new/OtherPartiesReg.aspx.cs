using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace new1
{
    public partial class OtherPartiesReg : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Email"] != null)
            {
                Email.Text = Session["Email"].ToString();
            }
            else
            {
                Response.Redirect("WebMaster.aspx");
            }
        }

        protected void partiesreg(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Danusha\Documents\RDA.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO OtherPartiesReg (Username,Password) VALUES ('" + username.Text + "','" + password.Text + "')", con);
            cmd.ExecuteNonQuery();
            con.Close();
            Clear();

            error.Text = "Add Successful";
            error.ForeColor = System.Drawing.Color.Green;


        }

        private void Clear()
        {
            username.Text = password.Text = "";
        }
    }
}