<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="login/style.css"> <%--CSS stylesheet for the login form only--%>
    <style type="text/css">
        .img-responsive {
            text-align: center;
        }
    </style>

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-page">  
    <div class="container-fluid"> 
        <center>  
     <img class="img-responsive" src="img/guttman_logo_leftbar_top.png" alt="Guttman Logo"/>
     <p></p>
</center>
  <div class="form">
    <form class="login-form">
      <input type="text" placeholder="Username"/>
      <input type="password" placeholder="Password"/>
      <button>login</button>
      <p class="message"><a href="#">Forgot Username/Password?</a></p>
    </form>
  </div>
 </div>
</div>

</asp:Content>
