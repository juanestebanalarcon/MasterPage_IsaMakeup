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
    public class shopcart_class: SqlServerConnection
    {
        protected string ProductID; protected string productName; protected string login; protected int total;
        //constructor
        public shopcart_class(string ProductID, string productName, string login) {
            this.ProductID = ProductID; this.productName = productName; this.login = login;
        }
        public shopcart_class() {
            this.login = null;
            this.productName = null;
            this.ProductID = null;
        }
        //Getters and setters
        public string productID {
            set { ProductID = value; }
            get  { return ProductID; }
        }
        public string ProductName { 
        set { productName = value; }
        get { return productName; }
        }
        public string Login
        {
            set { login = value; }
            get { return login; }
        }
    }
}