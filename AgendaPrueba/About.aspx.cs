using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AgendaPrueba
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            yourIframe.Attributes.Add("src", "~/files/texto_alternativo4.pdf");
            yourIframe.DataBind();
        }
    }
}