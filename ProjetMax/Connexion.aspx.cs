using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetMax
{
    public partial class Connexion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie nom = new HttpCookie("nom");
            nom = Request.Cookies["nom"];

            HttpCookie email = new HttpCookie("email");
            email = Request.Cookies["email"];

            if(nom != null)
            {
                if(email != null)
                {
                    Response.Redirect("/accueil.aspx");
                }
            }
        }

        protected void ButtonEnvoyer_Click(object sender, EventArgs e)
        {
            HttpCookie nom = new HttpCookie("nom");
            nom.Value = TextBoxNom.Text;
            nom.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(nom);

            HttpCookie email = new HttpCookie("email");
            email.Value = TextBoxEmail.Text;
            email.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(email);

            Response.Redirect("/accueil.aspx");
        }
    }
}