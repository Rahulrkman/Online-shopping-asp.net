using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;

namespace WebApplication3
{
    public partial class macadd : System.Web.UI.Page
    {
        private object lblname;
        string amacaddress = "";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1submit_Click1(object sender, EventArgs e)
        {
            try
            {
                NetworkInterface[] anics = NetworkInterface.GetAllNetworkInterfaces();
                foreach (NetworkInterface adapter in anics)
                {
                    if (amacaddress == String.Empty)
                    {
                        IPInterfaceProperties properties = adapter.GetIPProperties();
                        amacaddress = adapter.GetPhysicalAddress().ToString();

                        Label lblname = this.FindControl("lblname") as Label;
                        lblname.Visible = true;
                        lblname.Text = "MAC Address is :- " + amacaddress;
                    }
                }
            }
            catch (Exception ex) { }
        }
    }
}