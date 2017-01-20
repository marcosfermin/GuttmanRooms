<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="login.aspx.cs"%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<link rel="stylesheet" type="text/css" href="login/style.css">
<link href="Content/bootstrap.css" rel="stylesheet" />
<script type="text/javascript" src="login/js.js"></script>
<div class="login-page">
    <div class="container-fluid"> <%-- Bootstrap container class--%>
  <div class="form">
       <%--Just in case you want to register  --%>
       <%--<form class="register-form">
      <input type="text" placeholder="name"/>
      <input type="password" placeholder="password"/>
      <input type="text" placeholder="email address"/>
      <button>create</button>
      <p class="message">Already registered? <a href="#">Sign In</a></p>
    </form>--%>

    <form class="login-form">
      <input type="text" placeholder="username"/>
      <input type="password" placeholder="password"/>
      <button>login</button>
      <p class="message">Forgot Username/Password? <a href="#">Click here</a></p>
    </form>
  </div>
 </div>
</div>

</asp:Content>
