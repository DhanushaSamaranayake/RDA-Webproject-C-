using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace new1
{
    public partial class UserRegister : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Danusha\Documents\RDA.mdf;Integrated Security=True;Connect Timeout=30");
            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO UserRegister (Fname,Lname,NIC,Date,Pnumber,Inumber,Lnumber,Iname,Email,Password) VALUES ('"+Fname.Text+"','"+Lname.Text+"','"+NIC.Text+"','"+Date.Text+"','"+Pnumber.Text+"','"+Inumber.Text+"','"+Lnumber.Text+"','"+Iname.Text+"','"+Email.Text+"','"+Password.Text+"')",con);
            cmd.ExecuteNonQuery();
            con.Close();
            Clear();
            
            Error.Text = "Add Successful";
            Error.ForeColor = System.Drawing.Color.Green;
                
            
        }

        private void Clear()
        {
            Fname.Text = Lname.Text = NIC.Text = Date.Text = Pnumber.Text = Lnumber.Text = Lname.Text = Iname.Text = Email.Text = Inumber.Text = Cpassword.Text = Password.Text = "";
        }
    }
}