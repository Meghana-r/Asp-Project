<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorCheckIn.Master" AutoEventWireup="true" CodeBehind="CheckOut.aspx.cs" Inherits="VisitorCheckIn.CheckOut" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
        .auto-style13 {
            width: 821px;
        }
        .auto-style14 {
            width: 925px;
        }
        .auto-style15 {
            width: 1019px;
            height: 34px;
        }
    .auto-style16 {
        width: 1019px;
    }
        .auto-style17 {
            width: 1160px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style17">
        <tr>
            <td style="background-color: #CCCCFF" class="auto-style15">
                <asp:Label ID="Label4" runat="server" Text="Visitor Check In"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="txtSearch" runat="server" Width="153px"></asp:TextBox>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnIDSearch" runat="server" OnClick="btnIDSearch_Click" Text="Search By ID" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:Button ID="btnNameSearch" runat="server" Text="Search By Name" OnClick="btnNameSearch_Click" />
            </td>
        </tr>
        <tr>
            <td class="auto-style16">
                <asp:GridView ID="GridView1" runat="server" Width="914px">
                    <Columns>
                        <asp:TemplateField>
                            <ItemTemplate>
                                <asp:Button ID="b1" runat="server" OnClick="b1_Click" Text="Signed In"/>
                            </ItemTemplate>
                        </asp:TemplateField>
                    </Columns>
                </asp:GridView>
            </td>
        </tr>
    </table>
</asp:Content>
