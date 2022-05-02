<%@ Page Title="ISA - Log In" Language="C#" MasterPageFile="~/ISA_master2/IsaSite2.Master" AutoEventWireup="true" CodeBehind="logIn_.aspx.cs" Inherits="ISA___Makeup.ISA_master2.Formulario_web17" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../Login-signUp/styleLogSig.css">

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <section style="width: 40%;height: 500px;background-color: #fdbaf8;border-radius: 10px;box-shadow: 0px 1px 10px #d800c6; float:left">
        <br />
        <br />
        <br />
<center><img src="../source_img_video_extra/01.png" style="width:700px;height:425px; padding-top:25px;" />
    </section>
    <section id="logIn" style="width: 60%;height: 500px;background-color: #fdbaf8;border-radius: 10px;box-shadow: 0px 1px 10px #d800c6; float:right">
    <center><form  id="logInform" name="logInform" runat="server" >
    <br>
    <br>    
    <br>
  <h6 id="register">Log In</h6>
  <br>
  <div class="input-container">
   <i class="fa fa-user icon"></i>
      <asp:TextBox runat="server" CssClass="input-field" placeholder="Username" ID="usrname"></asp:TextBox> <br />
      <asp:RequiredFieldValidator runat="server" ID="usernameVal" ControlToValidate="usrname" ForeColor="Red" ErrorMessage="This field is required"></asp:RequiredFieldValidator>
  </div>
  <div class="input-container">
  <i class="fa fa-key icon"></i>
      <asp:TextBox runat="server" CssClass="input-field" placeholder="Password" ID="password_" TextMode="Password"></asp:TextBox> <br />
      <asp:RequiredFieldValidator runat="server" ID="password_R" ControlToValidate="password_" ForeColor="Red" ErrorMessage="This field is required"></asp:RequiredFieldValidator>
  </div>
  <asp:Button runat="server" CssClass="btn" OnClick="btnLog_Click" ID="btnLogIn" Text="Log In" />
        <br/>
 <h1 style="font-size:25px; font-family:Verdana; color:white; text-align:center; font-weight:bold;">OR</h1>
</form>
 <br/>      
<a href="Login.aspx" style="text-align:center; color:white; font-family:Arial; font-size:18px;">Sign Up</a>
        <br/>
        <br />
        <br />
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="footer" runat="server">
</asp:Content>
