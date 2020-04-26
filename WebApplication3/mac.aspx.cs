using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.NetworkInformation;

namespace WebApplication3
{
    public partial class mac : System.Web.UI.Page
    {
        private object lblname;
        string amacaddress = "";
        protected void Page_Load(object sender, EventArgs e)
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
                        Label1.Text = "Mac" + amacaddress;
                        
                    }
                }
            }
            catch (Exception ex) { }
        }
    }
}