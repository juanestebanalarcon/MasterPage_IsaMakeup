using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Text;
using System.Configuration; //read App.config
using System.Data; //Generic data
using System.Data.SqlClient; //SQL Server

namespace ISA___Makeup.Classes
{
    public class product_structure: SqlServerConnection
    {
        //Parametters
        protected string productID_; protected string description; protected int Id; protected int price_; protected string image;
       //Constructor
        public product_structure(string productID, string description, int Id, int price, string image)
        {
            this.productID_ = productID; this.description = description; this.Id = Id; this.price_ = price; this.image = image;
        }
        public product_structure()
        {
            this.Id = -1; this.description = null; this.productID_ = null; this.price_ = -1; this.image = null; 
        }
        //Getters and setters
        public int id { set { Id = value; } get { return id; } } 
        public string Description { set { description = value;} get { return description; } }
        public string ProductID { set { productID_ = value;} get { return productID_; } }
        public string Image { set { image = value;} get{return image;} }
        public int Price { set { price_ = value; } get { return price_; } }
    }
}