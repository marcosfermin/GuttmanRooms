<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style2 {
            height: 38px;
        }

        .auto-style3 {
            height: 35px;
        }

        .auto-style4 {
            height: 37px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center><h1 class="auto-style1">Guttman Rooms</h1></center>
    <center><table class="table">
  <thead>
    <tr>
      <th class="auto-style2">Room Number</th>
      <th class="auto-style2">Room Status</th>
    </tr>
  </thead>
  <tbody>
    <tr>
      <th scope="row" class="auto-style3">509</th>
      <td class="auto-style3">Occupied</td>
    </tr>
      <tr>
      <th scope="row" class="auto-style4">509A</th>
      <td class="auto-style4">Reserved</td>
    </tr>
      <tr>
      <th scope="row" class="auto-style4">509B</th>
      <td class="auto-style4">Available</td>
    </tr>
  </tbody>
</table>
</center>
   <asp:gridview id="gvone" runat="server" cssclass="table table-responsive" autogeneratecolumns="true">
       <columns>
            <asp:templatefield>
                <headertemplate>
                    room number
                </headertemplate>
                <itemtemplate>
                    <asp:label text='<%#  %>' runat="server" />
                </itemtemplate>
            </asp:templatefield>
            <asp:templatefield>
                <headertemplate>
                    room status
                </headertemplate>
                <itemtemplate>
                    <asp:label text='<%#  %>' runat="server" />
                </itemtemplate>
            </asp:templatefield>
        </columns>
    </asp:GridView>


</asp:Content>

