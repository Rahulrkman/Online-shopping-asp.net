using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace WebApplication3
{
    public partial class external_storage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string str1;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            str1 = "select product_webform from storage_devices";
            com = new SqlCommand(str1, con);
            SqlDataReader reader = com.ExecuteReader();

        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            //Response.Redirect("buylogin.aspx");
            if (Session["username"] == null)
            {
                Response.Redirect("crazylogin.aspx");
            }
            else
            {
                //Response.Redirect("buylogin.aspx");
            }
        }
        protected void D2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "buynow")
            {
                Response.Redirect("buynow2.aspx?id=" + e.CommandArgument.ToString());
            }
            else
            {

                Response.Redirect("addtoCart2.aspx?id=" + e.CommandArgument.ToString());
            }
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("buylogin.aspx");
            if (Session["username"] == null)
            {
                Response.Redirect("crazylogin.aspx");
            }
            else
            {
                //Response.Redirect("buylogin.aspx");
            }
        }
        public string str { get; set; }
    }
}
