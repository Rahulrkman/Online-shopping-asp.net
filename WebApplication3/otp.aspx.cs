using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Collections.Specialized;

namespace WebApplication3
{
    public partial class otp : System.Web.UI.Page
    {
        string sb = '_'.ToString();
        Random rn = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            //Panel1.Visible = false;
            //Panel2.Visible = true;
            Random random = new Random();
            int value = random.Next(1001, 9999);
            string destinationaddr = "91" + TextBox1.Text;
            string message = "Your OTP is " + value + " ( Sent By : CZMart )";
            //Label3.Text = message;
            String message1 = HttpUtility.UrlEncode(message);
            //Label1.Text = message;
            using (var wb = new WebClient())
            {
                byte[] response = wb.UploadValues("https://api.textlocal.in/send/", new NameValueCollection()
                {
                {"apikey" , "3NDMpGQ2z/I-zGuTp8QfFqaMDD4cIMGbcvcnawAiXX"},
                {"numbers" , destinationaddr},
                {"message" , message1},
                {"sender" , "TXTLCL"}
                });
                string result = System.Text.Encoding.UTF8.GetString(response);
                Session["otp"] = value;


            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox2.Text == Session["otp"].ToString())
            {
                //Panel2.Visible = false;                
                Response.Redirect("oneplus6tReview.aspx");
            }
            else
            {
               
                //Panel2.Visible = true;
            }

        }
    }
}