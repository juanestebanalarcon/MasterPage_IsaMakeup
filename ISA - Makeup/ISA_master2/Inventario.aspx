<%@ Page Title="ISA - Inventory" Language="C#" MasterPageFile="~/ISA_master2/IsaSite2.Master" AutoEventWireup="true" CodeBehind="Inventario.aspx.cs" Inherits="ISA___Makeup.ISA_master2.Formulario_web16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../Login-signUp/admin/styleAdmin.css"  rel="stylesheet" />
    <script type="text/javascript" src="../Login-signUp/admin/scriptAdmin.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Product form -->
<section id="productForm" style="float: left;width: 60%;height: 900px;background-color:#ea85c7;box-shadow: 0px 1px 10px #ffffff;border-radius:10px;">
   <br>
   <br>
    <h2 style="text-align: center; color:white; font-size: 20px; font-family: Verdana; font-weight: bold;">Register new Product</h2>
    <form id="formAdmin" name="adminForm" runat="server">
        <center><table id="table_adminForm" border="0" width="auto" style="border-radius: 10px; background-color: deeppink; height: 250px">
            <tr>
                <td> <label for="productName">Product Name: </label> </td>
                <td><asp:TextBox runat="server" placeholder="Product ID..." CssClass="inputField" ID="productID" MaxLength="5"></asp:TextBox> <br /> 
                    <asp:RequiredFieldValidator runat="server" ID="productID_val" ControlToValidate="productID" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
            <td> <label for="productName">Product Name: </label> </td>
            <td>
                <asp:TextBox runat="server" placeholder="Product name..." CssClass="inputField" ID="productName" MaxLength="20"></asp:TextBox> <br />
                <asp:RequiredFieldValidator runat="server" ID="productName_val" ControlToValidate="productName" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
            </td>
            </tr>
            <tr>
                <td> <label for="productPrice">Price (COP): </label></td>
            <td>  
        <asp:TextBox runat="server" placeholder="Price..." CssClass="inputField" ID="priceP" MaxLength="6"></asp:TextBox>
            </td>
            </tr>
            <tr>
                <td> <label for="iva">IVA %:</label> </td>
                <td> 
        <asp:ListBox ID="ivaSelect" runat="server" CssClass="inputField" Width="100px">
        <asp:ListItem>0</asp:ListItem>
        <asp:ListItem>16%</asp:ListItem>
        <asp:ListItem>19%</asp:ListItem>
    </asp:ListBox>
                </td>
            </tr>
            <tr>
                <td> <label for="stateProduct">Available?:</label> </td>
            <td> 
            <asp:RadioButton runat="server" Text="notAvailable" ForeColor="Blue" ID="notAvailable" value="notAvailable" /> &nbsp;&nbsp;&nbsp;
            <asp:RadioButton runat="server" Text="Available"  ForeColor="Blue" ID="available" value="Available"/>
            </td>
            </tr>
            <tr>
                <td> <label for="registryDate">Registry date: </label> </td>
            <td> 
                <asp:Calendar ID="registryDate_" runat="server" CssClass="inputField"></asp:Calendar>
            </td>
            </tr>
            <tr>
                <td>
                    <label for="fileUpload">Upload a product image:</label>
                </td>
                <td>
                    <asp:FileUpload runat="server" ID="fileAttach" CssClass="submitBtn" /> &nbsp;&nbsp;<asp:Button ID="btnAttach" runat="server" CssClass="submitBtn" Text="Attach" BackColor="DodgerBlue" ForeColor="White" Width="70px" OnClick="btnAttach_Click" /> <br />
                  &nbsp;<asp:Label runat="server" ID="resultLabel" Text="." ForeColor="ForestGreen" Font-Size="16px"></asp:Label>
                </td>
            </tr>
            <tr>
                <td>
                    <label for="comments">Add a comment:</label>
                </td>
                <td>
                <asp:TextBox runat="server" ID="textAreaCommments" TextMode="MultiLine" placeholder="Write a comment..." Width="400px" Height="200px" CssClass="inputField"></asp:TextBox>
                 &nbsp;&nbsp;<asp:Button ID="btnSaveReg" runat="server" CssClass="submitBtn" Text="Save" OnClick="btnSaveReg_Click" BackColor="Black" ForeColor="White" Width="70px" />
                </td>
            </tr>
        </table>
    </form>
    <br />
    <br />
</section>
<!-- Image section -->
<section id="registryView" style="float: right;width: 40%;height: 900px;background-color: #ea85c7;box-shadow: 0px 1px 10px #ffffff;border-radius:10px;">
   <br>
   <br>
   <br>
   <br>
    <br />
 <center><img src="../source_img_video_extra/09.png" style="width:700px;height:425px; padding-top:25px;" id="nineInventory" />
        <br />
        <br />
     <br />
     <h1 style="font-size:25px; font-family:Verdana; color:white; text-align:center; font-weight:bold;">OR</h1>
 <br/>      
<a href="InventoryView.aspx" style="text-align:center; color:white; font-family:Arial; font-size:18px;">Go to <b>Inventory</b></a>
     <br />
     <br />
     <br />
</section>
<!-- <script>
</script> -->
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
    
</asp:Content>
