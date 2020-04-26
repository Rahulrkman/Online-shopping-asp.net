using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace otp
{
    public partial class popup : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                SqlCommand cmd = new SqlCommand("Select count(*) from pin where Username='" + Session["Username"] + "' and pin ='" + TextBox1.Text + "'", con);
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);
                cmd.ExecuteNonQuery();
                if (dt.Rows[0][0].ToString() == "1")
                {
                    Session["Pin"] = TextBox1.Text;
                    //Response.Write("<script>alert('Welcome')</script> ");
                    Response.Write("<script>window.close('Popup.aspx','mywindow','width=400,height=400,left=300,top=150')</script> ");
                }
                else
                {
                    Response.Write("<script>alert('error correct Pin')</script> ");
                }
            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }

    }
}