using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication3
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string str1;
        SqlCommand com;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            str1 = "select PRODUCT_WEBFORM from Product";
            com = new SqlCommand(str1, con);
            SqlDataReader reader = com.ExecuteReader();
            
        }
        protected void D2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.CommandName == "buynow")
            {
                Response.Redirect("buynow1.aspx?id=" + e.CommandArgument.ToString());
            }
            else
            {

                Response.Redirect("addtoCart1.aspx?id=" + e.CommandArgument.ToString());
            }
            //Response.Redirect("addtoCart1.aspx?id=" + e.CommandArgument.ToString());
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if(Session["username"]==null){
                Response.Redirect("crazylogin.aspx");
            }
            else{//Response.Redirect("buylogin.aspx");
            }
        }
        public string str { get; set; }
    }
}