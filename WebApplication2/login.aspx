<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs"%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="login/style.css"> <%--CSS stylesheet for the login form only--%>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="login-page">  
    <div class="container-fluid"> <%-- Bootstrap container class that makes the login form responsive--%>
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
