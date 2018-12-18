using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetMax
{
    public partial class accueil : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["nom"].Value != null)
            {
                LabelNom.Text = Request.Cookies["nom"].Value;
                LabelEmail.Text = Request.Cookies["email"].Value;
            }    
        }
    }
}