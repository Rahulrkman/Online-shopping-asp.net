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
    public partial class AddLaptops : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string a, b,c,d;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void TextBox12_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            F1.SaveAs(Request.PhysicalApplicationPath + "./Product_img/" + F1.FileName.ToString());
            F2.SaveAs(Request.PhysicalApplicationPath + "./Product_img/" + F2.FileName.ToString());
            F3.SaveAs(Request.PhysicalApplicationPath + "./Product_img/" + F3.FileName.ToString());
            F4.SaveAs(Request.PhysicalApplicationPath + ".//" + F4.FileName.ToString());            
            a = "Product_img/" + F1.FileName.ToString();
            b = "Product_img/" + F2.FileName.ToString();
            c = "Product_img/" + F3.FileName.ToString();
            d = "" + F4.FileName.ToString();
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into laptop values('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "','" + TextBox12.Text + "','" + b.ToString() + "','" + c.ToString() + "','" + a.ToString() + "','" + d.ToString() + "')";
            cmd.ExecuteNonQuery();
            con.Close();
        }
    }
}