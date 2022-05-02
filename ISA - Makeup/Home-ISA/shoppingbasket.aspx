<%@ Page Title="" Language="C#" MasterPageFile="~/Home-ISA/Isa - Makeup.Master" AutoEventWireup="true" CodeBehind="shoppingbasket.aspx.cs" Inherits="ISA___Makeup.Home_ISA.Formulario_web11" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../Login-signUp/admin/styleAdmin.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <%
        if (Session["userName"] != null) { String username_ = Session["userName"].ToString().Trim(); }
    %>
    <section id="shoppingCart_zone" style="float:left; width: 100%;height: 600px;background-color:#ea85c7;box-shadow: 0px 1px 10px #ffffff;border-radius:10px;">
        <br />
        <br />
        <br />
        <br />
        <div style="width:800px; background-color:#ea85c7; border-radius:10px;">
        <form id="productView" runat="server">
        <asp:GridView ID="tableViewCart" runat="server" AutoGenerateColumns="False" DataKeyNames="productIdC" DataSourceID="shopping_cart" EnableModelValidation="True" CssClass="inputField">
                <Columns>
                    <asp:BoundField DataField="productIdC" HeaderText="Product ID" ReadOnly="True" SortExpression="productIdC" />
                    <asp:BoundField DataField="productname" HeaderText="Product Name" SortExpression="productname" />
                    <asp:BoundField DataField="price_" HeaderText="Price (COP)" SortExpression="price_" />
                    <asp:BoundField DataField="cant" HeaderText="Quantity" SortExpression="cant" />
                    <asp:BoundField DataField="total" HeaderText="Subtotal" SortExpression="total" />
                    <asp:CommandField CancelText="Cancel" DeleteText="Delete" EditText="Edit" UpdateText="Update" ShowDeleteButton="True" ShowEditButton="True" HeaderText="Actions" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="shopping_cart" runat="server" ConnectionString="<%$ ConnectionStrings:ISA_Makeup %>" SelectCommand="SELECT * FROM [shopCart] where sessionName = <%=username_ %>" DeleteCommand="delete from [shopCart] where productIdC = @productIdC" UpdateCommand="update inventory set [cant] = [cant] where productIdC = @prouctIdC"></asp:SqlDataSource>
            <br />
            <% int total_ = 0; 
               
                %>
            <h2 style="color: green; font-family:Verdana;font-size:22px; text-align:left;">Total: </h2>
        </form>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
