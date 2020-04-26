using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class pin1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load1(object sender, EventArgs e)
        {
            con.Open();
        }



        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("Select count(*) from Table3 where ActivationCode='" + TextBox3.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    cmd = new SqlCommand("DELETE FROM Table3 WHERE ActivationCode = @ActivationCode");
                    Session["Username"] = TextBox3.Text;
                    Response.Write("<script>alert('Welcome')</script> ");
                    Response.Redirect("Home.aspx");
                }
                else
                {
                    Response.Write("<script>alert('error in login')</script> ");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }

}
