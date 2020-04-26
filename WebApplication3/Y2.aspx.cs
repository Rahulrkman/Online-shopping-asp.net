using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication3
{
    public partial class Y2 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Product where id= 20";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);
            D5.DataSource = dt;
            D5.DataBind();

            con.Close();
        }

        protected void D5_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            //Response.Write("<script>window.open('REVIEWMCQ.aspx','mywindow','width=380,height=400,left=300,top=150')</script> ");
            Response.Redirect("WebForm10.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("buynow.aspx?id=20");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
           // Response.Write("<script>window.open('REVIEWMCQ.aspx','mywindow','width=380,height=400,left=300,top=150')</script> ");
            Response.Redirect("otp4.aspx");
        }
    }
}