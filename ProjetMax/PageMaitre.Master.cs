using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetMax
{
    public partial class PageMaitre : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            LabelCarte.Text = (string)Session["carte"];
        }

        protected void ElmoBouton_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/accueil.aspx");
        }

        protected void bouton1_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Elmo.aspx");
        }

        protected void bouton2_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Histoire.aspx");
        }

        protected void bouton3_Click(object sender, ImageClickEventArgs e)
        {
            Response.Redirect("/Calendrier.aspx");
        }

        protected void ButtonCarte_Click(object sender, EventArgs e)
        {
            Session["carte"] = TextBoxCarte.Text;
        }
    }
}