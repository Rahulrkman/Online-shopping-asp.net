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
    public partial class WebForm4 : System.Web.UI.Page
    {
    SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {

            con.Open();
            

            DataTable dt = new DataTable();
            DataRow dr;
            if (!IsPostBack)
            {
                dt.Columns.Add("sno");
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

                        dr["sno"] = 1;
                        dr["productimage"] = ds.Tables[0].Rows[0]["product_images"];
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
                        Response.Redirect("WebForm4.aspx");

                    }


                    else
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

                        dr["sno"] = 1;
                        dr["productimage"] = ds.Tables[0].Rows[0]["product_images"];
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
                        Response.Redirect("WebForm4.aspx");
                    }
                }



                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                    GridView1.DataBind();



                }
            }


            
            

        }

        protected void GridView1_RowDeleted(object sender, GridViewDeletedEventArgs e)
        {

        }
    }
}