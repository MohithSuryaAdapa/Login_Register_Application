<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RegistrationWebForm.aspx.cs" Inherits="Capium.RegistrationWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 52%;
            height: 398px;
            margin-left: 350px;
        }
        .auto-style2 {
            width: 222px;
        }
        .auto-style3 {
            width: 222px;
            height: 29px;
        }
        .auto-style4 {
            height: 29px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style2">First Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td>
                    <asp:TextBox ID="txtfirstname" runat="server" Height="28px" Width="195px" OnTextChanged="txtfirstname_TextChanged" ViewStateMode="Enabled"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtfirstname" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Last Name&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td>
                    <asp:TextBox ID="txtlastname" runat="server" Height="28px" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Gender&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td class="auto-style4">
                    <asp:RadioButtonList ID="RadioButtonList1" runat="server">
                    <asp:ListItem Text="MALE" Value="MALE"></asp:ListItem>  <asp:ListItem Text="FEMALE" Value="FEMALE"></asp:ListItem>
                   </asp:RadioButtonList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Courses&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td>
                    <asp:DropDownList ID="DropDownList1" runat="server" Height="28px" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
                        <asp:ListItem>SELECT COURSES</asp:ListItem>
                        <asp:ListItem>JAVA</asp:ListItem>
                        <asp:ListItem>DOTNET</asp:ListItem>
                        <asp:ListItem>AWS</asp:ListItem>
                    </asp:DropDownList>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Email ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td>
                    <asp:TextBox ID="txtemailid" runat="server" Height="28px" Width="195px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtemailid" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td>
                    <asp:TextBox ID="txtpassword" runat="server" Height="29px" Width="195px"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Confirm Password&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td>
                    <asp:TextBox ID="txtconfirmpwd" runat="server" Height="28px" Width="195px"></asp:TextBox>
                    <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Invalid" ForeColor="Red" ControlToCompare="txtpassword" ControlToValidate="txtconfirmpwd"></asp:CompareValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">Phone Number&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; :-</td>
                <td>
                    <asp:TextBox ID="txtnumber" runat="server" Height="28px" Width="195px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtnumber" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style2">
                    &nbsp;</td>
                <td>
                    <asp:Button ID="btnregister" runat="server" Height="39px" Text="Register" Width="172px" OnClick="btnregister_Click1" />
                </td>
            </tr>
        </table>
        <div>
        </div>
    </form>
</body>
</html>
