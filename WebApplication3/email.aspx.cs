using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;
using System.Net.Mail;

namespace WebApplication1
{
    public partial class email : System.Web.UI.Page
    {
        private const string Password = "beingcrazy";

        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Button1_Click(object sender, EventArgs e)
        {

                SendMail();
           
        }
        public void SendMail()
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(TextBox1.Text);

            mail.From = new MailAddress("Wecrazy40@gmail.com");
            mail.Subject = "Thanks for giving Review..!";
            string text = TextBox2.Text;
            string Body = text;
            mail.Body = Body;
            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com"; //Or Your SMTP Server Address
            smtp.Port = 587;
            smtp.UseDefaultCredentials = false;
            smtp.Credentials = new System.Net.NetworkCredential
            ("Wecrazy40@gmail.com", Password);

            //Or your Smtp Email ID and Password
            smtp.EnableSsl = true;
            smtp.Send(mail);
            
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }
    }
}