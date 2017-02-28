<%@ Page Title="" Language="C#" MasterPageFile="~/Login.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="WebApplication2.Login1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <%--CSS stylesheet for the login form only--%>
    <link rel="stylesheet" type="text/css" href="login/style.css" />
    <style type="text/css">
        .img-responsive {
            text-align: center;
        }
    </style>

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
                    <asp:Button Text="LOGIN" runat="server" ID="loginbutton"
                        BackColor="#005DAA" ForeColor="White" Font-Bold="true"
                        CausesValidation="true" OnClick="loginbutton_Click" />
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
