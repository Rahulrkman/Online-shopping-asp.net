using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication3
{
    public partial class hpSD : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from storage_devices where id= 6";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            D1.DataSource = dt;
            D1.DataBind();

            con.Close();

        }

        protected void D1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();
            Response.Redirect("xiomi_review.aspx");
            //SqlCommand cmd = new SqlCommand("Select count(*) from buyNow where Username='" + TextBox1.Text + "' and Password ='" + TextBox2.Text + "'", con);
            //SqlCommand cmd = new SqlCommand("Select count(*) from buyNow where Username= '" + (string)Session["getUsername"] + "'");

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("hpSDReview.aspx");
        }
    }
}