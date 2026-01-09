<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="Tutorials_website.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label3" runat="server" ForeColor="#3399FF" Text="LOGIN"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" ForeColor="Black" Text="Username"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox1" runat="server" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" ForeColor="#660066" OnClick="Button1_Click" Text="Login" />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
