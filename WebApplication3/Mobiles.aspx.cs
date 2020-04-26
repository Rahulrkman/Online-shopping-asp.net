using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace WebApplication3
{
    public partial class Mobiles : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
        string str1;
        String myquery;
        SqlCommand com;
        SqlDataReader reader;
        protected void Page_Load(object sender, EventArgs e)
        {
            con.Open();            
            str1 = "select PRODUCT_WEBFORM from Product";
            com = new SqlCommand(str1, con);
             reader = com.ExecuteReader();            
        }
        protected void Button2_Click(object sender, EventArgs e)
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
            //Response.Redirect("popup.aspx");

        }
        protected void D2_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            //<asp:ImageButton ID="Button2" runat="server" CommandArgument='<%# Eval("productid")%>' CommandName="addtocart" Height="37px" ImageUrl="~/images/addtocart.jpg" Width="165px" />

            /*if (e.CommandName == "addtocart")
            {

                DropDownList dlist = (DropDownList)(e.Item.FindControl("DropDownList1"));
                Response.Redirect("AddtoCart.aspx?id=" + e.CommandArgument.ToString() + "&quantity=" + dlist.SelectedItem.ToString());

            }*/

            /*if (e.CommandName == "addtocart")
            {
                Response.Redirect("Mobiles.aspx?id=" + e.CommandArgument.ToString());

            }*/
            if(e.CommandName == "buynow"){
                Response.Redirect("buynow.aspx?id="+e.CommandArgument.ToString());                
            }
            else{

            Response.Redirect("addtoCart.aspx?id=" + e.CommandArgument.ToString());
            }
        }
        
        protected void Button1_Click(object sender, EventArgs e)
        {
            //Response.Redirect("buylogin.aspx");
            if (Session["username"] == null)
            {
                Response.Redirect("crazylogin.aspx");
            }
            else
            {
                //Response.Redirect("buylogin.aspx");
            }
        }
        
        private Boolean checkuser()
        {
            Boolean useravailable = false;
            myquery = ("Select Username from pin where Username='" + Session["Username"] + "'");
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = myquery;
            cmd.Connection = con;
            SqlDataAdapter da = new SqlDataAdapter();
            da.SelectCommand = cmd;
            DataSet ds = new DataSet();
            
                reader.Close();
                da.Fill(ds);
            
            //da.Fill(ds);
            if (ds.Tables[0].Rows.Count > 0)
            {
                useravailable = true;

            }
            return useravailable;
        }
        public string str { get; set; }
    }
}
