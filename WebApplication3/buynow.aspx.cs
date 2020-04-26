using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace WebApplication3
{
    public partial class buynow : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            /*
            String SQL = "SELECT product_name,product_price FROM Product where id=16";
            SqlDataAdapter Adpt = new SqlDataAdapter(SQL, con);
            DataSet login = new DataSet();
            Adpt.Fill(login);

            foreach (DataRow dr2 in login.Tables[0].Rows)
            {
                Label16.Text = login.Tables[0].Rows[0]["product_name"].ToString();
                //  Label3.Text = login.Tables[0].Rows[0]["product_price"].ToString() + "<br />";
            }*/
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
                        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where id=" + Request.QueryString["id"];
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.CommandText = myquery;
                        cmd1.Connection = scon;
                        SqlDataAdapter da1 = new SqlDataAdapter();
                        da1.SelectCommand = cmd1;
                        DataSet ds = new DataSet();
                        da1.Fill(ds);

                        // dr["sno"] = 1;
                        dr["productimage"] = ds.Tables[0].Rows[0]["product_images"];
                        dr["productname"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                        //Label16.Text = ds.Tables[0].Rows[0]["product_name"].ToString();
                        //Label1.Text = ds.Tables[0].Rows[0]["product_name"].ToString(); 
                        // dr["productimage"] = ds.Tables[0].Rows[0]["product_images"].ToString();
                        //dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["product_price"].ToString();
                        //Label17.Text = ds.Tables[0].Rows[0]["product_price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["product_price"].ToString());
                        //int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price;// *quantity;
                                               // dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        // GridView1.FooterRow.Cells[4].Text = "      Total Amount";
                        //GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("buynow.aspx");

                    }


                    else {
                        dr = dt.NewRow();
                        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where id=" + Request.QueryString["id"];
                        SqlCommand cmd1 = new SqlCommand();
                        cmd1.CommandText = myquery;
                        cmd1.Connection = scon;
                        SqlDataAdapter da1 = new SqlDataAdapter();
                        da1.SelectCommand = cmd1;
                        DataSet ds = new DataSet();
                        da1.Fill(ds);

                        // dr["sno"] = 1;
                        dr["productimage"] = ds.Tables[0].Rows[0]["product_images"];
                        dr["productname"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                        //Label16.Text = ds.Tables[0].Rows[0]["product_name"].ToString();
                        // dr["productimage"] = ds.Tables[0].Rows[0]["product_images"].ToString();
                        //dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["product_price"].ToString();
                        //Label17.Text = ds.Tables[0].Rows[0]["product_price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["product_price"].ToString());
                        //int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price;// *quantity;
                                               // dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                        //Label16.Text=GridView1.Columns("product_name").Value;
                        Session["buyitems"] = dt;
                        // GridView1.FooterRow.Cells[4].Text = "      Total Amount";
                        //GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("buynow.aspx");
                    }
                }
                else
                {
                    Label8.Text=Request.QueryString["id"];
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();
                }
            }
            /*
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            //cmd1.CommandText = "select * from Product where Username =Session['"+Username+"']";
            cmd2.CommandText = "select product_name,product_price from Product where id='" + Label8.Text + "'";
            cmd2.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter Adpt5 = new SqlDataAdapter(cmd2);
            DataSet login5 = new DataSet();
            Adpt5.Fill(login5);

            foreach (DataRow dr1 in login.Tables[0].Rows)
            {
                
                Label16.Text = login.Tables[0].Rows[0]["product_name"].ToString();
                Label17.Text = login.Tables[0].Rows[0]["product_price"].ToString();
            }*/
        }

            protected void D1_ItemCommand(object source, RepeaterCommandEventArgs e)
            {

            }

            protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
            {
                
            }

            protected void GridView1_SelectedIndexChanged1(object sender, EventArgs e)
            {
              
                GridViewRow gr = GridView1.SelectedRow;
                Label8.Text = gr.Cells[2].Text;
                Label16.Text = gr.Cells[3].Text;
            }

        protected void Next1(object sender, EventArgs e)
        {
            SqlCommand cmd2 = con.CreateCommand();
            cmd2.CommandType = CommandType.Text;
            //cmd1.CommandText = "select * from Product where Username =Session['"+Username+"']";
            cmd2.CommandText = "select * from Registration where Username='" + Session["Username"] + "'";
            cmd2.ExecuteNonQuery();
            DataTable dt1 = new DataTable();
            SqlDataAdapter Adpt = new SqlDataAdapter(cmd2);
            DataSet login = new DataSet();
            Adpt.Fill(login);

            foreach (DataRow dr1 in login.Tables[0].Rows)
            {
                Label5.Text = login.Tables[0].Rows[0]["fname"].ToString();
                Label6.Text = login.Tables[0].Rows[0]["Address"].ToString();
                Label7.Text = login.Tables[0].Rows[0]["Mobile"].ToString();

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {         
            Label18.Text="Cash On Delivery";
            

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "insert into BuyNow1 values('" + Session["Username"] + "','" + Label8.Text + "','" + Label16.Text + "','" + Label5.Text + "','" + Label6.Text + "','" + txtadd.Text + "','" + Label7.Text + "','" + Label18.Text + "')";
            cmd.ExecuteNonQuery();
            Response.Redirect("home.aspx");
            con.Close();

        
        }

    }
    }
