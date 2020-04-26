using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication3
{
    public partial class WebForm8 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        private const string Password = "beingcrazy";
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            String SQL = "SELECT UserName FROM buyNow";
            SqlDataAdapter Adpt = new SqlDataAdapter(SQL, con);
            DataSet login = new DataSet();
            Adpt.Fill(login);

            foreach (DataRow dr in login.Tables[0].Rows)
            {
                Label2.Text = login.Tables[0].Rows[0]["USerName"].ToString() + "<br />";

            }

            con.Close();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Home.aspx");
        }
        public void SendMail()
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(txtemail.Text);

            mail.From = new MailAddress("Wecrazy40@gmail.com");
            mail.Subject = "Thanks for giving Review..!";
            string text = "Your Review is:"+TextBox2.Text;
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            SendMail();
        }
    }
}