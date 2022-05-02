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
using System.IO;

namespace ISA___Makeup.ISA_master2
{
    public partial class Formulario_web16 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(); //creates new object of type SqlConnection called <<conn>>.
        SqlCommand cm = new SqlCommand(); //Creates new object of type SqlCommand called <<cm>>.
        SqlDataAdapter adapterN = new SqlDataAdapter(); //Creates new object of type SqlDataAdapter caller <<adapterN>>.
        DataTable nDT = new DataTable(); //Creates new object of type DataTable called <<nDT>>.
        DataSet nDS = new DataSet(); 
        protected void Page_Load(object sender, EventArgs e)
        {
            conn.ConnectionString = ConfigurationManager.ConnectionStrings["ISA_Makeup"].ConnectionString; //Assign a ne
            conn.Open();
        }

        protected void btnSaveReg_Click(object sender, EventArgs e)
        {
            String isAvailable = " "; int price =0;
            if (available.Checked) isAvailable = "Available"; else if (notAvailable.Checked) isAvailable = "notAvailable"; else Response.Write("<script> alert('All fields are required') </script>");
            price = Convert.ToInt32(priceP.Text.Trim().ToString());
            nDT = new DataTable(); cm.CommandText = "insert into InventoryReg (productId, productName, price,ivaSelect,chkProduct,registryDate,comments) values('"+ productID.Text.ToString().Trim() + "','"+ productName.Text.ToString() + "',"+price+",'"+ ivaSelect.SelectedValue.ToString() + "','"+isAvailable+"','"+ registryDate_.SelectedDate +"','"+ textAreaCommments.Text.ToString() + "')";
            cm.Connection = conn; cm.ExecuteNonQuery();
        }

        protected void btnAttach_Click(object sender, EventArgs e)
        {
            String fileName = this.fileAttach.FileName; 
            String ext = System.IO.Path.GetExtension(fileName); 
                if (this.fileAttach.HasFile) 
            {
                    this.fileAttach.SaveAs(Server.MapPath("../ISA_master2/ProductImg/" + this.fileAttach.FileName));
                    this.resultLabel.Text = "The file  " + this.fileAttach.FileName + " was uploaded successfully";
            } else { 
            this.resultLabel.Text = "You must upload an image";
            } 
 
        }
    }
}