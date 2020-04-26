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
    public partial class buynowaspx : System.Web.UI.Page
    {

        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        protected void Page_Load(object sender, EventArgs e)
        {
            //v1 = Session["Username"];
            con.Open();
            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select * from Product where id= 17";
            //cmd.CommandText = "select * from Registration where Username= Session[Username]";
            cmd.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd);
            DataSet login = new DataSet();
            Adpt.Fill(login);

            foreach (DataRow dr in login.Tables[0].Rows)
            {
                Label2.Text = login.Tables[0].Rows[0]["product_name"].ToString();
                Label3.Text = login.Tables[0].Rows[0]["product_price"].ToString();
            }

            con.Close();

            div1.Visible = true;

            if (Session["Username"] != null)
            {
                div1.Visible = false;
            }
            else
            {
                div1.Visible = true;
            }

        }
        protected void D13_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void D14_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("crazyLogin.aspx");
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into BuyNow values('" + Label2.Text + "','" + Label3.Text + "','" + Session["Username"] + "')";
            //cmd.Parameters.AddWithValue("@mac",amacaddress);
            cmd.ExecuteNonQuery();
            con.Close();

        }
    }
}