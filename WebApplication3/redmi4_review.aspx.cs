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
using System.Net.NetworkInformation;

namespace WebApplication3
{
    public partial class redmi4_review : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        private const string Password = "beingcrazy";
        string amacaddress = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();
            try
            {
                NetworkInterface[] anics = NetworkInterface.GetAllNetworkInterfaces();
                foreach (NetworkInterface adapter in anics)
                {
                    if (amacaddress == String.Empty)
                    {
                        IPInterfaceProperties properties = adapter.GetIPProperties();
                        amacaddress = adapter.GetPhysicalAddress().ToString();
                        //Label8.Text = amacaddress;

                    }
                }
            }
            catch (Exception ex) { }
            String SQL = "SELECT product_name,product_price FROM Product where id=18";
            SqlDataAdapter Adpt = new SqlDataAdapter(SQL, con);
            DataSet login = new DataSet();
            Adpt.Fill(login);

            foreach (DataRow dr2 in login.Tables[0].Rows)
            {
                Label12.Text = login.Tables[0].Rows[0]["product_name"].ToString();
                //  Label3.Text = login.Tables[0].Rows[0]["product_price"].ToString() + "<br />";
            }
            DataTable dt = new DataTable();
            DataRow dr;
            if (!IsPostBack)
            {
                // dt.Columns.Add("sno");
                dt.Columns.Add("productimage");
                dt.Columns.Add("productname");

                dt.Columns.Add("price");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        // String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True";
                        // SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = con;
                        SqlDataAdapter da1 = new SqlDataAdapter();
                        da1.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da1.Fill(ds);

                        // dr["sno"] = 1;
                        //dr["productimage"] = ds.Tables[0].Rows[0]["product_images"];
                        dr["productname"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                        // dr["productimage"] = ds.Tables[0].Rows[0]["product_images"].ToString();
                        //dr["quantity"] = Request.QueryString["quantity"];
                        //dr["price"] = ds.Tables[0].Rows[0]["product_price"].ToString();
                        //int price = Convert.ToInt16(ds.Tables[0].Rows[0]["product_price"].ToString());
                        //int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        //int totalprice = price;// *quantity;
                        // dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        //GridView1.DataSource = dt;
                        //GridView1.DataBind();

                        Session["buyitems"] = dt;
                        // GridView1.FooterRow.Cells[4].Text = "      Total Amount";
                        //GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("REVIEWNCQ.aspx");

                    }

                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    //GridView1.DataSource = dt;
                    //GridView1.DataBind();



                }

            }
        }
        protected void D2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //Response.Redirect("REVIEWMCQ.aspx?id=" + e.CommandArgument.ToString());
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlCommand cmd1 = con.CreateCommand();
            cmd1.CommandType = CommandType.Text;
            cmd1.CommandText = "select Email from Registration where Username= '" + Session["Username"] + "'";
            //cmd1.CommandText = "select * from Product where id='" + Label11.Text + "'";
            cmd1.ExecuteNonQuery();
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd1);
            DataSet login = new DataSet();
            Adpt.Fill(login);

            foreach (DataRow dr1 in login.Tables[0].Rows)
            {
                Label8.Text += login.Tables[0].Rows[0]["Email"].ToString();
                //  Label12.Text += login.Tables[0].Rows[1]["product_name"].ToString() + "<br />";

            }



            /*DataTable dt = new DataTable();
            DataRow dr;
            if (!IsPostBack)
            {
                // dt.Columns.Add("sno");
                dt.Columns.Add("productimage");
                dt.Columns.Add("productname");

                dt.Columns.Add("price");

                if (Request.QueryString["id"] != null)
                {
                    if (Session["Buyitems"] == null)
                    {
                        dr = dt.NewRow();
                        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da1 = new SqlDataAdapter();
                        da1.SelectCommand = cmd1;
                        DataSet ds = new DataSet();
                        da1.Fill(ds);

                        // dr["sno"] = 1;
                        //dr["productimage"] = ds.Tables[0].Rows[0]["product_images"];
                        dr["productname"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                        // dr["productimage"] = ds.Tables[0].Rows[0]["product_images"].ToString();
                        //dr["quantity"] = Request.QueryString["quantity"];
                        //dr["price"] = ds.Tables[0].Rows[0]["product_price"].ToString();
                        //int price = Convert.ToInt16(ds.Tables[0].Rows[0]["product_price"].ToString());
                        //int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        //int totalprice = price;// *quantity;
                        // dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        // GridView1.FooterRow.Cells[4].Text = "      Total Amount";
                        //GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("REVIEWNCQ.aspx");

                    }

                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();



                }*/



            string Q1 = string.Empty;
            string Q2 = string.Empty;
            string Q3 = string.Empty;
            string Q4 = string.Empty;
            string Q5 = string.Empty;
            int Count = 0;
            if (RadioButton1.Checked)
            {
                Q1 = "1";
                Count++;
            }
            else if (RadioButton2.Checked)
            {
                Q1 = "2";
            }
            else if (RadioButton3.Checked)
            {
                Q1 = "3";
            }
            if (RadioButton4.Checked)
            {
                Q2 = "1";
                Count++;
            }
            else if (RadioButton5.Checked)
            {
                Q2 = "2";
            }
            else if (RadioButton6.Checked)
            {
                Q2 = "3";
            }
            if (RadioButton7.Checked)
            {
                Q3 = "1";
                Count++;
            }
            else if (RadioButton8.Checked)
            {
                Q3 = "2";
            }
            else if (RadioButton9.Checked)
            {
                Q3 = "3";
            }
            if (RadioButton10.Checked)
            {
                Q4 = "1";
                Count++;
            }
            else if (RadioButton11.Checked)
            {
                Q4 = "2";
            }
            else if (RadioButton12.Checked)
            {
                Q4 = "3";

            }
            if (RadioButton13.Checked)
            {
                Q5 = "1";
                Count++;
            }
            else if (RadioButton14.Checked)
            {
                Q5 = "2";
            }
            else if (RadioButton15.Checked)
            {
                Q5 = "3";
            }
            if (checkuser() == true)
            {
                Response.Write("<script>alert('You are already Submitted Review..!')</script> ");
                //TextBox2.BackColor = System.Drawing.Color.Red;

            }
            else
            {
                if (Count >= 3)
                {
                    Label10.Text = "Review given with Good intend";
                }
                else
                {
                    Label10.Text = "Review given with Bad intend";
                }
                if (checkuser() == true)
                {
                    Response.Write("Thanks For Submitting " + Label10.Text);


                }
                else
                {
                    SqlCommand cmd5 = con.CreateCommand();
                    cmd5.CommandType = CommandType.Text;
                    cmd5.CommandText = "INSERT INTO Product_Review(Username,Product_name,E_mail,mac_add,Q1,Q2,Q3,Q4,Q5,Review,Review_Status,Pro_id) VALUES('" + Session["username"] + "','" + Label12.Text + "','" + Label8.Text + "',@mac,@Q1,@Q2,@Q3,@Q4,@Q5,@review,'" + Label10.Text + "','" + 16 + "')";
                    cmd5.Parameters.AddWithValue("@mac", amacaddress);
                    cmd5.Parameters.AddWithValue("@Q1", Q1);
                    cmd5.Parameters.AddWithValue("@Q2", Q2);
                    cmd5.Parameters.AddWithValue("@Q3", Q3);
                    cmd5.Parameters.AddWithValue("@Q4", Q4);
                    cmd5.Parameters.AddWithValue("@Q5", Q5);
                    cmd5.Parameters.AddWithValue("@review", TextBox1.Text);
                    cmd5.ExecuteNonQuery();
                    con.Close();
                    SendMail();
                    Response.Write("<script>REVIEW IS ALREADY SUBMITTED< script >  ");
                    // Response.Write("<script>window.close('REVIEWMCQ.aspx','mywindow','width=380,height=400,left=300,top=150')</script> ");

                }

            }
        }


        public void SendMail()
        {
            MailMessage mail = new MailMessage();
            mail.To.Add(Label8.Text);
            mail.From = new MailAddress("Wecrazy40@gmail.com");
            mail.Subject = "Thanks for giving Review..!";
            string text = "Your Review is:" + TextBox1.Text;
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
        private Boolean checkuser()
        {
            Boolean useravailable = false;
            String myquery = ("Select E_mail,product_name,Username from Product_Review where E_mail='" + Label8.Text + "' and product_name='" + Label12.Text + "'and Username='" + Session["Username"] + "'");
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


            return useravailable;
        }

        protected void GridView1_PageIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {

        }

        protected void RadioButton5_CheckedChanged(object sender, EventArgs e)
        {

        }
        protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
        {

        }



    }
}

