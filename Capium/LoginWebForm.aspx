<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginWebForm.aspx.cs" Inherits="Capium.LoginWebForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 99%;
            height: 180px;
        }
        .auto-style2 {
            width: 526px;
        }
        .auto-style3 {
            width: 316px;
        }
    </style>
</head>
<body style="width: 465px; margin-left: 575px">
    <form id="form1" runat="server">
        <table class="auto-style1">
            <tr>
                <td class="auto-style3">Username:-</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtusername" runat="server" Height="28px" Width="207px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtusername" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">Password:-</td>
                <td class="auto-style2">
                    <asp:TextBox ID="txtpassword" runat="server" Height="28px" Width="200px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpassword" ErrorMessage="*" ForeColor="Red"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:LinkButton ID="NewRegistrationLink" runat="server" CausesValidation="False" OnClick="NewRegistrationLinl_Click">New Registration</asp:LinkButton>
                </td>
                <td class="auto-style2">
                    <asp:Button ID="btnlogin" runat="server" BorderStyle="Solid" Text="Login" Width="111px" OnClick="btnlogin_Click" />
                    <asp:Label ID="lblres" runat="server" ForeColor="Red"></asp:Label>
                </td>
            </tr>
        </table>
    </form>
</body>
</html>
