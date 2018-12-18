using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ProjetMax
{
    public partial class Calendrier : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Request.Cookies["choix"] != null)
            {
                if (Request.Cookies["choix"].Value == "1")
                {
                    Calendar1.BackColor = System.Drawing.Color.LightGray;
                    Calendar1.ForeColor = System.Drawing.Color.Maroon;
                }
                else
                {
                    Calendar1.BackColor = System.Drawing.Color.Red;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            HttpCookie choix = new HttpCookie("choix");
            choix.Value = RadioButtonList1.SelectedValue;
            choix.Expires = DateTime.Now.AddDays(1);
            Response.Cookies.Add(choix);
        }
    }
}