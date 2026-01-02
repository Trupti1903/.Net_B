<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="validation.aspx.cs" Inherits="Tutorials_website.validation" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            1) Required field validation<br />
            <asp:Label ID="Label1" runat="server" Text="NAME"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="RequiredFieldValidator" ForeColor="Red">*</asp:RequiredFieldValidator>
            <br />
            <br />
            2) Range validation<br />
            <asp:Label ID="Label2" runat="server" Text="AGE"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="RangeValidator" ForeColor="Red" MaximumValue="50" MinimumValue="5">*</asp:RangeValidator>
            <br />
            <br />
            3) Regularexpression validatin<br />
            <asp:Label ID="Label3" runat="server" Text="EMAIL"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="RegularExpressionValidator" ForeColor="Red" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*">*</asp:RegularExpressionValidator>
            <br />
            <br />
            4) Compare validation<br />
            <asp:Label ID="Label4" runat="server" Text="Password"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox4" ControlToValidate="TextBox5" ErrorMessage="CompareValidator" ForeColor="Red">*</asp:CompareValidator>
            <br />
            <asp:Label ID="Label5" runat="server" Text="Confirm Password"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
            <br />
            <br />
            5)Custom validation<br />
            <asp:Label ID="Label6" runat="server" Text="Number"></asp:Label>
&nbsp;<asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox6" ErrorMessage="CustomValidator" ForeColor="Red">*</asp:CustomValidator>
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
            <asp:Button ID="Button1" runat="server" Text="SUBMIIT" />
            <br />
            <br />
            <br />
        </div>
    </form>
</body>
</html>
