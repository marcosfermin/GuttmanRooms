<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="WebApplication2._default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
    .auto-style1 {
        color: #005DAA;
    }
</style>
    </asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
        <h1 class="auto-style1">Reserve a Room</h1>
    <br />
    </center>

    <%-- GridView of the Data --%>
   <asp:GridView id="gvtwo" runat="server" cssclass="table table-responsive" AutoGenerateColumns="False" 
        OnRowCommand="gvtwo_RowCommand">
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
                <%-- The ternary operator translates the boolean responses from True/False to Occupied/Available --%>
                 <asp:label text='<%# (Boolean.Parse(Eval("Occupied").ToString())) ? "Occupied" : "Available" %>' runat="server" />
                </itemtemplate>
            </asp:templatefield>
           <asp:templatefield HeaderText="Reserve">
                <headertemplate>
                    Reserve
                </headertemplate>
                <itemtemplate>
                <%-- Here is where the data of the room reservation will appear --%>
                <%-- If the boolean value "Occupied" is false (Meaning that the Room is available), the ReserveButton will appear --%>
                <asp:Button ID="ReserveButton" runat="server" Text="Reserve" CommandName="Reserve" CommandArgument='<%# Eval("RoomID") %>' Visible='<%# !(bool)(Eval("Occupied")) %>' />
                </itemtemplate>
            </asp:templatefield>
        </columns>
    </asp:GridView>
    <asp:Label ID="Label1" runat="server"></asp:Label>
</asp:Content>



