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

    <%-- GridView of the Data --%>
   <asp:GridView id="gvtwo" runat="server" cssclass="table table-responsive" AutoGenerateColumns="False" OnRowDataBound="gvtwo_RowDataBound" OnSelectedIndexChanged="gvtwo_SelectedIndexChanged">
       <columns>
            <asp:templatefield HeaderText="Room Number">
                <headertemplate>
                    Room Number
                </headertemplate>
                <itemtemplate>
                   <%-- Here is where the data of room number will appear --%>
                     <asp:label text='<%# Eval("RoomName") %>' runat="server" />
                </itemtemplate>
            </asp:templatefield>
            <asp:templatefield HeaderText="Room Status">
                <headertemplate>
                    Room Status
                </headertemplate>
                <itemtemplate>
                <%-- Here is where the data of room status will appear --%>
                    <asp:label text='<%# (Boolean.Parse(Eval("Occupied").ToString())) ? "Occupied" : "Available" %>' runat="server" />
                </itemtemplate>
            </asp:templatefield>
           <asp:templatefield HeaderText="Reserve">
                <headertemplate>
                    Reserve
                </headertemplate>
                <itemtemplate>
                <%-- Here is where the data of the room reservation will appear --%>

                <%--  <asp:label text='<%# Eval("Occupied") %>' runat="server" />--%>

                <asp:Button ID="ReserveButton" runat="server" Text="Reserve" />
                </itemtemplate>
            </asp:templatefield>
        </columns>
    </asp:GridView>

</asp:Content>

