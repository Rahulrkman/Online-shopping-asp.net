using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace WebApplication3
{
    public partial class admindataentry : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string a, b;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            f1.SaveAs(Request.PhysicalApplicationPath+"./Product_img/" +f1.FileName.ToString());
            f2.SaveAs(Request.PhysicalApplicationPath + ".//" + f2.FileName.ToString());
            b = "Product_img/" + f1.FileName.ToString();
            a = "" + f2.FileName.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into storage_devices values('" + TextBox5.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + b.ToString() + "','" + a.ToString() + "')";

            cmd.ExecuteNonQuery();
            con.Close();
                   }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("AddLaptops.aspx");
        }

        
    }
}