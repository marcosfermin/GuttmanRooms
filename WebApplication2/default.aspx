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
    <div class="gvoutside">
        <asp:GridView ID="gvtwo" runat="server" CssClass="table table-responsive grid" AutoGenerateColumns="False"
            OnRowCommand="gvtwo_RowCommand">
            <Columns>
                <asp:TemplateField HeaderText="Room Number">
                    <HeaderTemplate>
                        Room Number
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%-- Here is where the data of room number will appear --%>
                        <asp:Label Text='<%# Eval("RoomName") %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Room Status">
                    <HeaderTemplate>
                        Room Status
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%-- Here is where the data of room status will appear --%>
                        <%-- The ternary operator translates the boolean responses from True/False to Occupied/Available --%>
                        <asp:Label Text='<%# (Boolean.Parse(Eval("Occupied").ToString())) ? "Occupied" : "Available" %>' runat="server" />
                    </ItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="Reserve">
                    <HeaderTemplate>
                        Reserve
                    </HeaderTemplate>
                    <ItemTemplate>
                        <%-- Here is where the data of the room reservation will appear --%>
                        <%-- If the boolean value "Occupied" is false (Meaning that the Room is available), the ReserveButton will appear --%>
                        <asp:Button ID="ReserveButton" runat="server" Text="Reserve" CommandName="Reserve" CommandArgument='<%# Eval("RoomID") %>' Visible='<%# !(bool)(Eval("Occupied")) %>' />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
</asp:Content>



