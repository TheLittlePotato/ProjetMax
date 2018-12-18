using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using System.Data;
using System.Configuration;
using System.Data.SqlClient;


namespace ProjetMax
{
    public partial class Elmo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            
            System.Data.SqlClient.SqlConnection sqlConnection3 =
    new System.Data.SqlClient.SqlConnection("Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=" + "C:\\Users\\Cédric Vibert\\source\\repos\\ProjetMax\\ProjetMax\\App_Data\\elmos.mdf" + ";Integrated Security=True;Connect Timeout=30");

            System.Data.SqlClient.SqlCommand cmd = new System.Data.SqlClient.SqlCommand();
            cmd.CommandType = System.Data.CommandType.Text;
            cmd.CommandText = "INSERT INTO Table(Id, Nom, Marque, Cout) VALUES(12, 'Jean', 'Pauluaulue', 15)";
            cmd.Connection = sqlConnection3;

            sqlConnection3.Open();
            cmd.ExecuteNonQuery();
            sqlConnection3.Close();
        }
    }
}