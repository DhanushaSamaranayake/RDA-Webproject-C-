using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;

namespace new1
{
    public partial class reporter : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["Email"] != null)
            {
                Email.Text = Session["Email"].ToString();
            }
            else
            {
                Response.Redirect("ClientLogin.aspx");
            }

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session.RemoveAll();
        }

        protected void reportsend_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Danusha\Documents\RDA.mdf;Integrated Security=True;Connect Timeout=30");

            string path = Server.MapPath("Images/");

            if(FileUpload1.HasFile)
            {
                string ext = Path.GetExtension(FileUpload1.FileName);
                if(ext == ".jpg" || ext == ".png")
                {
                    FileUpload1.SaveAs(path + FileUpload1.FileName);
                    string name = "Images/" + FileUpload1.FileName;
                    string ss = "INSERT INTO RepoerterTBL2(email,city,province,severity,type,description,FileUpload1) VALUES('"+Email.Text+"','"+city.Text+"','"+province.Text+"','"+severity.Text+"','"+type.Text+"','"+desc.Text+"','"+name+"')";

                    SqlCommand cmd = new SqlCommand(ss, con);
                    con.Open();
                    cmd.ExecuteNonQuery();
                    con.Close();

                    error.Text = "Your Report Has been Created Successfully..";
                    error.ForeColor = System.Drawing.Color.Green;
                }
                else
                {
                    error.Text = "You Have To Upload JPG Or PNG File Format Only!";
                }
            }
            else
            {
                error.Text = "Please select file!";
            }

        }
    }
}