<%@ Page Title="ISA - Sign Up" Language="C#" MasterPageFile="~/ISA_master2/IsaSite2.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ISA___Makeup.ISA_master2.Formulario_web1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
     <link rel="stylesheet" href="../Login-signUp/styleLogSig.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <!-- Sign up section -->
    <section style="width: 40%;height: 750px;background-color: #fdbaf8;border-radius: 10px;box-shadow: 0px 1px 10px #d800c6; float:left">
        <br />
        <br />
        <br />
<center><img src="../source_img_video_extra/02.png" style="width:700px;height:425px; padding-top:25px;" />
    <br />
    <br />
    <span style="color:white; text-align:center; font-family:Verdana; font-size:30px; font-weight:bold; background-color:hotpink; border-radius:10px;">Stay in style</span>
    <br />
    <br />
        <p style="text-align:center;color:white;font-size:18px;font-family:Arial;">Join us and gain more benefits and discounts</p>
    </section>
<section id="registerSection" style=" width: 60%;height: 750px;background-color: #fdbaf8;box-shadow: 0px 1px 10px #d800c6;border-radius: 10px; float:right;">
   <center><form  id="signUp" runat="server" name="signUp" >
    <br>
    <br>    
   <br />
  <h6 id="register">Register Now</h6>
  <br>
  <div class="input-container">
   <i class="fa fa-user icon"></i>
 <asp:TextBox runat="server" placeholder="Username" CssClass="input-field" ID="username"></asp:TextBox> <br />
      <asp:RequiredFieldValidator runat="server" ID="usernameVal" ControlToValidate="username" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
      </div>
  <div class="input-container">
    <i class="fa fa-envelope icon"></i>
 <asp:TextBox runat="server" placeholder="Email" CssClass="input-field" ID="email"></asp:TextBox> <br />
 <asp:RequiredFieldValidator runat="server" ID="emailValidator" ControlToValidate="email" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
  <br />
<asp:RegularExpressionValidator ID="EmailRegularExpression" runat="server" ErrorMessage="Email format is not valid" ControlToValidate="email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
  </div>
  <div class="input-container">
  <i class="fa fa-key icon"></i>
 <asp:TextBox runat="server" placeholder="Password" CssClass="input-field" ID="password" TextMode="Password"></asp:TextBox> <br />
       <asp:RequiredFieldValidator runat="server" ID="password_" ControlToValidate="password" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
  <div class="input-container">
  <i class="fa fa-key icon"></i>
 <asp:TextBox runat="server" placeholder="Confirm password" CssClass="input-field" ID="passwordconfirm" TextMode="Password"></asp:TextBox> <br />
       <asp:RequiredFieldValidator runat="server" ID="passwordConfirm_val" ControlToValidate="passwordconfirm" ErrorMessage="This field is required" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>
 <asp:CompareValidator runat="server" ID="passCompare" ControlToValidate="password" ControlToCompare="passwordconfirm" Operator="Equal" Type="String" ErrorMessage="passwords do not match, please try again"></asp:CompareValidator>
       <br />
       <asp:Button runat="server" CssClass="btn" OnClick="btnSend_Click" ID="btnSendReg" Text="Register" />
</form>
 <br/>
 <h1 style="font-size:25px; font-family:Verdana; color:white; text-align:center; font-weight:bold;">OR</h1>
 <br/>      
<a href="logIn_.aspx" style="text-align:center; color:white; font-family:Arial; font-size:18px;">Log in</a>
    <br/>
    <br />
       <br />
       <br />
       <br />
       <br />
</section>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>