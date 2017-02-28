<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--CSS stylesheet for the login form only--%>
    <link rel="stylesheet" type="text/css" href="login/style.css" />
    <style type="text/css">
        .img-responsive {
            text-align: center;
        }
    </style>

<%--This JavaScript function adds the hover effect to the login button--%>
    <script type="text/javascript">
        function OnHover(val) {
            val.style.backgroundColor = "Blue";
        }
        function OnOut(val) {
            val.style.backgroundColor = "#005DAA";
        }
    </script>
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="login-page">
        <div class="container-fluid">
            <div class="form">
                <div class="logo">
                    <center>  
            <img class="img-responsive" src="img/guttman_logo_login.png" width="250" alt="Guttman Logo"/>
            </center>
                    <p></p>
                </div>
                <div class="login-form">
                    <asp:TextBox ID="txtUsername" placeholder="Username" runat="server" />
                    <asp:TextBox ID="txtPassword" placeholder="Password" runat="server" TextMode="Password" />
                    <asp:Button Text="LOG IN" runat="server" ID="loginbutton"
                        CausesValidation="true" OnClick="loginbutton_Click" onmouseover="OnHover(this);" onmouseout="OnOut(this);" BackColor="#005DAA" ForeColor="White" Font-Bold="true" />
                </div>
                <asp:RequiredFieldValidator runat="server" ID="usrValidator"
                    Display="Dynamic" ControlToValidate="txtUsername"
                    ErrorMessage="User ID is required." ForeColor="Red"> </asp:RequiredFieldValidator>
                <asp:RequiredFieldValidator runat="server" ID="pwdValidator"
                    ControlToValidate="txtPassword" Display="Dynamic"
                    ErrorMessage="Password is required." ForeColor="Red"> </asp:RequiredFieldValidator>
                <asp:CustomValidator ID="ADValidator" runat="server" ControlToValidate="txtPassword"
                    Display="Dynamic" ErrorMessage="Login Failure" ForeColor="Red" OnServerValidate="ADValidator_ServerValidate"></asp:CustomValidator>
            </div>
        </div>
    </div>
</asp:Content>
