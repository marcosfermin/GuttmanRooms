<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login1"  %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="login/style.css" /> <%--CSS stylesheet for the login form only--%>
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
    <div class="login-form">
        <asp:TextBox ID="txtUsername" placeholder="Username" runat="server"  />
        <asp:TextBox ID="txtPassword" placeholder="Password" runat="server"  TextMode="Password" />
      <%--<input type="password" placeholder="Password" id="password" runat="server"/>--%>
        <asp:Button Text="LOGIN" runat="server" id="loginbutton" OnClick="loginbutton_Click" />
      <p class="message"><a href="#">Forgot Username/Password?</a></p>
    </div>
      <tr>
    <td>
        <asp:RequiredFieldValidator runat="server" 
            ControlToValidate="txtUsername"
            ErrorMessage="User ID is required." ForeColor="Red"> 
            
        </asp:RequiredFieldValidator>
    </td>

          <td>
        <asp:RequiredFieldValidator runat="server" 
            ControlToValidate="txtPassword"
            ErrorMessage="<p>Password is required.</p>" ForeColor="Red"> 
        </asp:RequiredFieldValidator>
    </td>
<%--    <td>User ID:</td>
    <td><input type=text runat=server id=username></td>--%>
  </tr>

  </div>
 </div>
</div>

</asp:Content>
