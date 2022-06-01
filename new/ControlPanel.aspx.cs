using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace new1
{
    public partial class ControlPanel : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Danusha\Documents\RDA.mdf;Integrated Security=True;Connect Timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
           if(!IsPostBack)
            {
                LoadData();
            }
            if (Session["Email"] != null)
            {
                Email.Text = Session["Email"].ToString();
            }
            else
            {
                Response.Redirect("OtherPartiesLogin.aspx");
            }

        }

        protected void LoadData()
        {
            SqlDataAdapter sda = new SqlDataAdapter("Select * From RepoerterTBL2", con);
            DataTable dt = new DataTable();

            sda.Fill(dt);
            ListView1.DataSource = dt;
            GridView1.DataSource = dt;
            GridView1.DataBind();
            ListView1.DataBind();

      

        }

  

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {
          
           
        }

        protected void ListView1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            Label Id = (Label)GridView1.Rows[e.RowIndex].FindControl("Id");

            con.Open();
            SqlCommand cmd = new SqlCommand(@"Delete from RepoerterTBL2 where (Id = '" + Id.Text + "') ", con);
            cmd.ExecuteNonQuery();
            con.Close();

            GridView1.EditIndex = -1;
            LoadData();

        }

        protected void piechartbtn_Click(object sender, EventArgs e)
        {
            Response.Redirect("PieChartaspx.aspx");
        }
    }
}