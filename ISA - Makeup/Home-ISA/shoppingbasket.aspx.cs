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

namespace ISA___Makeup.Home_ISA
{
    public partial class Formulario_web11 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection();
        SqlCommand cm = new SqlCommand();
        SqlDataAdapter adapterN = new SqlDataAdapter();
        DataTable nDT = new DataTable();
        DataSet nDS = new DataSet();
        int totalValue = 0; 
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ISA_Makeup"].ConnectionString;
            conn.Open();
        }
        public int valuet() {
            if (Session["userName"] != null) { 
            
            
            }

            return totalValue;
        }
    }
}