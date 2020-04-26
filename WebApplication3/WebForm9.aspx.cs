using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Net;

namespace WebApplication3
{
    public partial class WebForm9 : System.Web.UI.Page
    {

        string sb = '_'.ToString();
        Random rn = new Random();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sid = TextBox1.Text;
            int i, x;
            for (i = 0; i < 6; i++)
            {
                x = rn.Next(0, 25);
                char let = (char)('a' + x);
                sb += let.ToString();
            }
            sb = sb.Substring(1);
            int num = rn.Next(0000, 9999);
            string y = num.ToString();
            sb = string.Concat(sb, y);
            Label1.Text = sb.ToString();

            using (System.Net.WebClient Client = new System.Net.WebClient())
            {
                try
                {
                    string m = sb.ToString();
                    string p = TextBox1.Text.ToString();
                    string url = "https://www.smsgatewayhub.com/api/mt/SendSMS?APIKey=yourapicode&senderid=TESTIN&channel=2&DCS=0&flashsms=0&number=91989xxxxxxx&text=test message&route=1" + p + "&text=" + m + "&route=1";
                    string result = Client.DownloadString(url);
                    TextBox1.Text = "";
                }
                catch (Exception ex)
                {
                    Response.Write(ex.Message.ToString());
                }




            }
        }
    }
}