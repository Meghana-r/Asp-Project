<%@ Page Title="" Language="C#" MasterPageFile="~/VisitorCheckIn.Master" AutoEventWireup="true" CodeBehind="VisitorInfo.aspx.cs" Inherits="VisitorCheckIn.VisitorInfo" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">

        .auto-style1 {
            width: 100%;
            border: 4px solid #FF0066;
            background-color: #FF9999;
        }
        .auto-style2 {
            width: 239px;
        }
        .auto-style3 {
            width: 444px;
        }
        .auto-style4 {
            width: 239px;
            height: 23px;
        }
        .auto-style5 {
            width: 444px;
            height: 23px;
        }
        .auto-style6 {
            height: 23px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table class="auto-style1" style="border: thin dashed #FFFFFF; color: #000000; background-color: #CCCCFF">
    <tr>
        <td colspan="3" style="color: #FFFFFF; background-color: #CCCCFF">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;<asp:Label ID="Label2" runat="server" Font-Bold="True" Font-Italic="True" Font-Names="Arial Rounded MT Bold" Font-Size="XX-Large" ForeColor="White" Text="VISITOR INFORMATION"></asp:Label>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">First Name:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Name cannot be empty!!" ControlToValidate="txtFirstName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Last Name:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtLastName" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="This Field cannot be empty!!" ControlToValidate="txtLastName" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Company:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtCompany" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="This Field cannot be empty!!" ControlToValidate="txtCompany" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Visiting:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtVisiting" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="This Field cannot be empty!!" ControlToValidate="txtVisiting" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">ID type:</td>
        <td class="auto-style3">
            <asp:DropDownList ID="ddlID" runat="server" OnSelectedIndexChanged="ddlID_SelectedIndexChanged">
                <asp:ListItem Selected="True">Select</asp:ListItem>
                <asp:ListItem>PAN Card</asp:ListItem>
                <asp:ListItem>Voter ID</asp:ListItem>
                <asp:ListItem>Driving License</asp:ListItem>
                <asp:ListItem>Aadhar Card</asp:ListItem>
            </asp:DropDownList>
            <asp:Label ID="Label1" runat="server" Text="ID Number"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:TextBox ID="txtID" runat="server" OnTextChanged="txtID_TextChanged"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="This Field cannot be empty!!" ControlToValidate="ddlID" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Vehicle Number:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtVehicleNum" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="txtVehicleNum" Display="Dynamic" ErrorMessage="Enter the correct Format!!" ValidationExpression="^[A-Z]{2}\s[0-9]{2}\s[A-Z]{2}\s[0-9]{4}$" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style4">Contact Number:</td>
        <td class="auto-style5">
            <asp:TextBox ID="txtContact" runat="server"></asp:TextBox>
        </td>
        <td class="auto-style6">
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="This Field cannot be empty!!" ControlToValidate="txtContact" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="txtContact" Display="Dynamic" ErrorMessage="Number not in correct format" ValidationExpression="^\d{10}$" ForeColor="Red"></asp:RegularExpressionValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">Purpose Of Visit:</td>
        <td class="auto-style3">
            <asp:TextBox ID="txtPurpose" runat="server"></asp:TextBox>
        </td>
        <td>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="This Field cannot be empty!!" ControlToValidate="txtPurpose" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
        </td>
    </tr>
    <tr>
        <td class="auto-style2">&nbsp;</td>
        <td class="auto-style3">
            &nbsp;</td>
        <td>&nbsp;</td>
    </tr>
    <tr>
        <td class="auto-style2">
            <asp:Button ID="btnCancel" CausesValidation="false" runat="server" Text="Cancel" OnClick="btnCancel_Click" />
        </td>
        <td class="auto-style3">
            <asp:Button ID="btnSave" runat="server" Text="Save" OnClick="btnSave_Click" />
        </td>
        <td>&nbsp;</td>
    </tr>
</table>
</asp:Content>
