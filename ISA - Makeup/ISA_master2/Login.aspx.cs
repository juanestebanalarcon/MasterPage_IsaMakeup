using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Configuration; //read App.config
using System.Data; //Generic data
using System.Data.SqlClient; //SQL Server

namespace ISA___Makeup.ISA_master2
{
    public partial class Formulario_web1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cm = new SqlCommand();
        SqlDataAdapter adapterN = new SqlDataAdapter();
        DataTable nDT = new DataTable();
        DataSet nDS = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ISA_Makeup"].ConnectionString;
            conn.Open();
        }

        protected void btnSend_Click(object sender, EventArgs e)
        {
            nDT = new DataTable(); cm.CommandText = "insert into users_reg (userName, email, password) values('" + username.Text.ToString().Trim()+"','"+email.Text.Trim().ToString()+"','"+password.Text.ToString().Trim()+"')";
            cm.Connection = conn; cm.ExecuteNonQuery();
            Response.Write("<script>alert('Your registration was successful');</script>");

        }
    }
}