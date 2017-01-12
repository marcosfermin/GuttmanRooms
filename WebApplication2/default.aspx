<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2._default" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <center><p><h1 class="auto-style1">Guttman Rooms</h1></p></center>
   <center><table class="table">
  <thead>
    <tr>
      <th>Room Number</th>
      <th>Room Status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row">509</th>
      <td>Occupied</td>
    </tr>
      <tr>
      <th scope="row">509A</th>
      <td>Reserved</td>
    </tr>
      <tr>
      <th scope="row">509B</th>
      <td>Available</td>
    </tr>
  </tbody>
</table>
</center>
</asp:Content>

