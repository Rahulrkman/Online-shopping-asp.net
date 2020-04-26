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
    public partial class Privacy : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            //con.Open();
        }

        

        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into pin values('" + Session["Username"] + "','" +pin.Text + "','" + cpin.Text + "')";
            //cmd.CommandText = "update pin,confirm_pin into Review1 values('" + TextBox1.Text + "','" + TextBox2.Text + "') where Username= '" + Session["Username"] + "'";
            cmd.ExecuteNonQuery();
            con.Close();
        }
        }
        
    }
