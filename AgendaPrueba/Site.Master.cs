using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgendaPrueba
{
    public partial class SiteMaster : MasterPage
    {                
     
        protected void Inicio_Click(object sender, EventArgs e)
        {
            // String[] sc = HttpContext.Current.Request.Url.Host.ToString().Split('/');
            Response.Redirect("Default.aspx");
        }
        protected void Rep_Todo_Click(object sender, EventArgs e)
        {
            // String[] sc = HttpContext.Current.Request.Url.Host.ToString().Split('/');
            Response.Redirect("Contact.aspx");
        }

    }
}
