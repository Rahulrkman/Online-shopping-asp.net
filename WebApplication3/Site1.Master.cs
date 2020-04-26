using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication3
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Username"] != null)
            {
                Session.Remove("Username");
                Session.RemoveAll();
                Response.Write("<script>alert('Log out successfully')</script> ");
            }
            else
            {
                Response.Write("<script>alert('Please! Make sure Logged In to Log Out')</script> ");
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("privacy.aspx");
        }
        
        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            if (TextBox2.Text != "")
            {
                if ((TextBox2.Text == "mobile") || (TextBox2.Text == "mi") || (TextBox2.Text == "redmi") || (TextBox2.Text == "Redmi Note 6 Pro") || (TextBox2.Text == "Mi a2") || (TextBox2.Text == "redmi 4") || (TextBox2.Text == "redmi note  pro") || (TextBox2.Text == "redmi y2") || (TextBox2.Text == "One plus 6t"))
                {
                    Response.Redirect("Mobiles.aspx");
                }
                else if ((TextBox2.Text == "laptop") || (TextBox2.Text == "hp") || (TextBox2.Text == "dell") || (TextBox2.Text == "lenovo") || (TextBox2.Text == "acer"))
                {
                    Response.Redirect("WebForm3.aspx");
                }
                else if ((TextBox2.Text == "hard disk") || (TextBox2.Text == "ram") || (TextBox2.Text == "pendrive"))
                {
                    Response.Redirect("WebForm2.aspx");
                }

            }
        }

        protected void ImageButton2_Click1(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("addtocart.aspx");
        }

        
    }
}