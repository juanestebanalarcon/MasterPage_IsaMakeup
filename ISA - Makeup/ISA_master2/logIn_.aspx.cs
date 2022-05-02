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
    public partial class Formulario_web17 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cm = new SqlCommand();
        SqlDataAdapter adapterN = new SqlDataAdapter();
        DataTable nDT = new DataTable();
        DataSet nDS = new DataSet();
        protected void Page_Load(object sender, EventArgs e)
        {
            /* conn.ConnectionString = ConfigurationManager.ConnectionStrings["ISA_Makeup"].ConnectionString;
             conn.Open(); */
        }
        protected void btnLog_Click(object sender, EventArgs e)
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ISA_Makeup"].ConnectionString;
            conn.Open();
            cm.Connection = conn;
            cm.CommandText = ("select userName, password from users_reg where userName = @userName and password = @password");
            cm.Parameters.AddWithValue("userName",usrname.Text.ToString().Trim()); cm.Parameters.AddWithValue("password", password_.Text.ToString().Trim());
            SqlDataReader readerLog = cm.ExecuteReader();
            if (readerLog.Read()) { 
            if(readerLog["userName"].ToString().Trim() != null && readerLog["password"].ToString().Trim() != null)
                {
                    Session["userName"] = usrname.Text.ToString().Trim();
                    if (usrname.Text.Trim().ToString().Equals("admon"))
                    {
                        Response.Redirect("Inventario.aspx");
                    }
                    else
                    {
                        Response.Redirect("../Home-ISA/default.aspx");
                    }
                } else
                {
                    Session["userName"] = null;
                    Response.Write("<script>alert('The username or password is incorrect');</script>");
                }
            }
        }
    }
}