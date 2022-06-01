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
    public partial class PieChartaspx : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            LoadData();
        }

        private void LoadData()
        {
            Chart1.DataSource = GetData();
            Chart1.Series["Series1"].XValueMember = "Type";
            Chart1.Series["Series1"].YValueMembers = "Total";
            Chart1.DataBind();

            Chart2.DataSource = GetData1();
            Chart2.Series["Series2"].XValueMember = "Type1";
            Chart2.Series["Series2"].YValueMembers = "Total1";
            Chart2.DataBind();
        }

        private DataTable GetData()
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Danusha\Documents\RDA.mdf;Integrated Security=True;Connect Timeout=30"))
            {
                using(SqlCommand cmd = new SqlCommand("SELECT Count(Id) AS  'Total', severity AS 'Type' FROM RepoerterTBL2 GROUP BY severity",con))

                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    return dt;
                }
                
            }
        }
        private DataTable GetData1()
        {
            using (SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=C:\Users\Danusha\Documents\RDA.mdf;Integrated Security=True;Connect Timeout=30"))
            {
                using (SqlCommand cmd = new SqlCommand("SELECT Count(Id) AS  'Total1', type AS 'Type1' FROM RepoerterTBL2 GROUP BY type", con))
                {
                    con.Open();
                    SqlDataReader dr = cmd.ExecuteReader();
                    DataTable dt = new DataTable();
                    dt.Load(dr);

                    return dt;
                }

            }
        }
    }
}