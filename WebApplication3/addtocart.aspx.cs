using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace EXAMPLEatc
{
    public partial class addtocart : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        protected void Page_Load(object sender, EventArgs e)
        {
            if (checkuser() == true)
            {

                Response.Write("<script>window.open('Popup.aspx','mywindow','width=380,height=400,left=300,top=150')</script> ");
                //Response.Redirect("Privacy.aspx");
                //Panel2.Enabled = true;

            }
            else if (checkuser() == false)
            {
                //Response.Redirect("Privacy.aspx");
                //Panel2.Enabled = false;
                //Response.Write("<script>alert('You Want to Add Privacy')</script>");
                //con.Close();
            }
            else
            {
                Response.Redirect("addtocart.aspx");
            }
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                DataRow dr;
                dt.Columns.Add("sno");
                dt.Columns.Add("productid");
                dt.Columns.Add("productname");
                dt.Columns.Add("quantity");
                dt.Columns.Add("price");
                dt.Columns.Add("totalprice");
                dt.Columns.Add("productimage");
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
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = 1;
                        //dr["productid"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["product_images"].ToString();
                        //dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["product_price"].ToString();
                        int price = Convert.ToInt32(ds.Tables[0].Rows[0]["product_price"].ToString());
                        //int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price;// *quantity;
                        dr["totalprice"] = totalprice;

                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[4].Text = "      Total Amount";
                        GridView1.FooterRow.Cells[5].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");

                    }
                    else
                    {

                        dt = (DataTable)Session["buyitems"];
                        int sr;
                        sr = dt.Rows.Count;

                        dr = dt.NewRow();
                        String mycon = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\Database1.mdf;Integrated Security=True;User Instance=True";
                        SqlConnection scon = new SqlConnection(mycon);
                        String myquery = "select * from Product where id=" + Request.QueryString["id"];
                        SqlCommand cmd = new SqlCommand();
                        cmd.CommandText = myquery;
                        cmd.Connection = scon;
                        SqlDataAdapter da = new SqlDataAdapter();
                        da.SelectCommand = cmd;
                        DataSet ds = new DataSet();
                        da.Fill(ds);
                        dr["sno"] = sr + 1;
                        //dr["productid"] = ds.Tables[0].Rows[0]["id"].ToString();
                        dr["productname"] = ds.Tables[0].Rows[0]["product_name"].ToString();
                        dr["productimage"] = ds.Tables[0].Rows[0]["product_images"].ToString();
                        //dr["quantity"] = Request.QueryString["quantity"];
                        dr["price"] = ds.Tables[0].Rows[0]["product_price"].ToString();
                        int price = Convert.ToInt16(ds.Tables[0].Rows[0]["product_price"].ToString());
                        //int quantity = Convert.ToInt16(Request.QueryString["quantity"].ToString());
                        int totalprice = price;// * quantity;
                        dr["totalprice"] = totalprice;
                        dt.Rows.Add(dr);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();

                        Session["buyitems"] = dt;
                        GridView1.FooterRow.Cells[3].Text = "    Total Amount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();
                        Response.Redirect("addtocart.aspx");

                    }
                }
                else
                {
                    dt = (DataTable)Session["buyitems"];
                    GridView1.DataSource = dt;
                   // GridView1.DataSource = null;
                    GridView1.DataBind();
                    
                    if (GridView1.Rows.Count > 0)
                    {  
                        GridView1.FooterRow.Cells[3].Text = "      Total Amount";
                        GridView1.FooterRow.Cells[4].Text = grandtotal().ToString();

                    }


                }
                Label4.Text = GridView1.Rows.Count.ToString();

            }

            
        }


        public int grandtotal()
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];
            int nrow = dt.Rows.Count;
            int i = 0;
            int gtotal = 0;
            while (i < nrow)
            {
                gtotal = gtotal + Convert.ToInt32(dt.Rows[i]["totalprice"].ToString());

                i = i + 1;
            }
            return gtotal;
        }
        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }





        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            DataTable dt = new DataTable();
            dt = (DataTable)Session["buyitems"];


            for (int i = 0; i <= dt.Rows.Count - 1; i++)
            {
                int sr;
                int sr1;
                string qdata;
                string dtdata;
                sr = Convert.ToInt32(dt.Rows[i]["sno"].ToString());
                TableCell cell = GridView1.Rows[e.RowIndex].Cells[0];
                qdata = cell.Text;
                dtdata = sr.ToString();
                sr1 = Convert.ToInt32(qdata);

                if (sr == sr1)
                {
                    dt.Rows[i].Delete();
                    dt.AcceptChanges();
                    //Label1.Text = "Item Has Been Deleted From Shopping Cart";
                    break;

                }
            }

            for (int i = 1; i <= dt.Rows.Count; i++)
            {
                dt.Rows[i - 1]["sno"] = i;
                dt.AcceptChanges();
            }

            Session["buyitems"] = dt;
            Response.Redirect("addtocart.aspx");

        }
        private Boolean checkuser()
        {
            Boolean useravailable = false;
            String myquery = ("Select Username from pin where Username='" + Session["Username"] + "'");
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
        protected void Button2_Click(object sender, EventArgs e)
        {
            con.Open();
            if (checkuser() == true)
            {

                Response.Write("<script>window.open('Popup.aspx','mywindow','width=400,height=400,left=300,top=150')</script> ");
                //Response.Redirect("Privacy.aspx");
                //Panel2.Enabled = true;

            }
            else
            {
                //Panel2.Enabled = false;
                Response.Write("<script>alert('You Want to Add Privacy')</script>");
                con.Close();
            }
        }
}
}