using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
using System.Net.Mail;
using System.Net;

namespace WebApplication3
{
    public partial class Registrationaspx : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

        int userId = 0;
        string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            //int userId = 0;
            //string constr = ConfigurationManager.ConnectionStrings["ConnectionString;Connection Timeout=1000"].ConnectionString;

            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("Insert_User"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.StoredProcedure;
                        cmd.Parameters.AddWithValue("@Username", txtUsername.Text.Trim());
                        cmd.Parameters.AddWithValue("@Password", txtpass.Text.Trim());
                        cmd.Parameters.AddWithValue("@Email", txtemail.Text.Trim());
                        cmd.Connection = con;

                        con.Open();
                        userId = Convert.ToInt32(cmd.ExecuteScalar());
                        con.Close();
                    }
                }
                string message = string.Empty;
                switch (userId)
                {
                    case -1:
                        message = "Username already exists.\\nPlease choose a different username.";
                        break;
                    case -2:
                        message = "Supplied email address has already been used.";
                        break;
                    default:
                        message = "Registration successful. Activation email has been sent.";
                        SendActivationEmail(userId);
                        break;
                }
                Random random = new Random();
                int value = random.Next(1001, 9999);
                //ClientScript.RegisterStartupScript(GetType(), "alert", "alert('" + message + "');", true);
            }
        }

        private void SendActivationEmail(int userId)
        {
            Random random = new Random();
            int value = random.Next(1001, 9999);
            string constr = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            //string value = ToString();
            using (SqlConnection con = new SqlConnection(constr))
            {
                using (SqlCommand cmd = new SqlCommand("INSERT INTO Table3 VALUES(@UserId, @ActivationCode)"))
                {
                    using (SqlDataAdapter sda = new SqlDataAdapter())
                    {
                        cmd.CommandType = CommandType.Text;
                        cmd.Parameters.AddWithValue("@UserId", userId);
                        cmd.Parameters.AddWithValue("@ActivationCode", value);
                        cmd.Connection = con;
                        con.Open();
                        cmd.ExecuteNonQuery();
                        con.Close();
                    }
                }
            }
            using (MailMessage mm = new MailMessage("wecrazy40@gmail.com", txtemail.Text))
            {
                mm.Subject = "Account Activation";
                string body = "Hello " + txtUsername.Text.Trim() + ",";
                body += "<br /><br />Pin for Activation Email:" + value;
                body += "<br /><br />Thanks";
                mm.Body = body;
                mm.IsBodyHtml = true;
                SmtpClient smtp = new SmtpClient();
                smtp.Host = "smtp.gmail.com";
                smtp.EnableSsl = true;
                NetworkCredential NetworkCred = new NetworkCredential("wecrazy40@gmail.com", "beingcrazy");
                smtp.UseDefaultCredentials = true;
                smtp.Credentials = NetworkCred;
                smtp.Port = 587;
                smtp.Send(mm);

            }
        }



        protected void Button3_Click(object sender, EventArgs e)
        {
            if (checkuser() == true)
            {
                Label1.Text = "Your Username Already Registered with Us";
                txtUsername.BackColor = System.Drawing.Color.PaleGreen;


            }
            else
            {

                SqlCommand cmd = new SqlCommand("insert into Registration" + "(fName,IName,Address,city,Pincode,Gender,Mobile,Email,Username,Password,cPassword) values (@fName,@lName,@Address,@City,@Pincode,@Gender,@Mobile,@Email,@Username,@Password,@cPassword)", con);
                con.Open();

                cmd.Parameters.AddWithValue("@fName", txtname.Text);
                cmd.Parameters.AddWithValue("@lName", txtsname.Text);
                cmd.Parameters.AddWithValue("@Address", txtadd.Text);
                cmd.Parameters.AddWithValue("@City", txtcity.Text);
                cmd.Parameters.AddWithValue("@Pincode", txtppin.Text);
                cmd.Parameters.AddWithValue("@Gender", DropDownList1.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@Mobile", txtmo.Text);
                cmd.Parameters.AddWithValue("@Email", txtemail.Text);
                cmd.Parameters.AddWithValue("@Username", txtUsername.Text);
                cmd.Parameters.AddWithValue("@Password", txtpass.Text);
                cmd.Parameters.AddWithValue("@cPassword", txtcpass.Text);
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Redirect("pin1.aspx");

            }
        }
        private Boolean checkuser()
        {
            Boolean useravailable = false;
            String myquery = "Select * from Registration where Username='" + txtUsername.Text + "'";
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                useravailable = true;

            }
            con.Close();

            return useravailable;
        }
    }
}