<%@ Page Title="ISA-Inventory-view" Language="C#" MasterPageFile="~/ISA_master2/IsaSite2.Master" AutoEventWireup="true" CodeBehind="InventoryView.aspx.cs" Inherits="ISA___Makeup.ISA_master2.Formulario_web18" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link href="../Login-signUp/admin/styleAdmin.css"  rel="stylesheet" />
    <script type="text/javascript" src="../Login-signUp/admin/scriptAdmin.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section id="productForm" style="float: left;width: 100%;height: 750px;background-color:#343434;;box-shadow: 0px 1px 10px #ffffff;border-radius:10px;">
        <br />
        <br />
        <br />
        <br />
        <h1 style="font-size:25px; font-family:Verdana; color:white; text-align:left; font-weight:bold;">Do you have a new product?</h1> &nbsp;&nbsp;<a href="Inventario.aspx" style="text-align:left; color:white; font-family:Arial; font-size:18px;">Register now</a>
     <br />
        <div style="width:800px; background-color:white; border-radius:10px;">
            <form id="productView" runat="server">
        <asp:GridView ID="regViewTable" runat="server" AutoGenerateColumns="False" DataKeyNames="productId" DataSourceID="inventoryDataSource" EnableModelValidation="True" CssClass="inputField" OnSelectedIndexChanged="regViewTable_SelectedIndexChanged">
        <Columns>
            <asp:BoundField DataField="productId" HeaderText="Product ID" ReadOnly="True" SortExpression="productId" ControlStyle-BackColor="#a5a5a5" ControlStyle-ForeColor="White"  />
            <asp:BoundField DataField="productName" HeaderText="Product Name" SortExpression="productName" />
            <asp:BoundField DataField="price" HeaderText="Price" SortExpression="price" />
            <asp:BoundField DataField="ivaSelect" HeaderText="% IVA" SortExpression="ivaSelect" />
            <asp:BoundField DataField="chkProduct" HeaderText="Availability" SortExpression="chkProduct" />
            <asp:BoundField DataField="registryDate" HeaderText="Registry Date" SortExpression="registryDate" />
            <asp:BoundField DataField="comments" HeaderText="Comments" SortExpression="comments" />
            <asp:CommandField CancelText="Cancel" DeleteText="Delete" EditText="Edit" UpdateText="Update" ShowDeleteButton="True" ShowEditButton="True" HeaderText="Actions" />
            </Columns>       
    </asp:GridView>
    <asp:SqlDataSource ID="inventoryDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ISA_Makeup %>" SelectCommand="SELECT * FROM [InventoryReg]" DeleteCommand="delete from [inventoryReg] where [productId] = @productId" UpdateCommand="update [inventory] set [productName] = @productName, [price] = @price, [ivaSelect] = @ivaSelect, [chkProduct] = @chkproduct, [registryDate] = @registryDate, [comments] = @comments where productId = @productId "></asp:SqlDataSource>
       </form>
        </div>
        <div style="width:800px;text-align:center; background-color: #151515; color: dimgray; font-size: 25px; font-family: Arial; border-radius: 10px;">
            CRUD System
        </div>
           <br />
            <br />
        <br />
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
