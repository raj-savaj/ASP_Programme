<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Validation_Demo.aspx.cs" Inherits="Validation_Demo" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox1" 
            ValidationExpression="\d{6}"></asp:RegularExpressionValidator>
    </div>
    <div>
    
        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" 
            ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox2" 
            ValidationExpression="[A-Z a-z 0-9]{5,}"></asp:RegularExpressionValidator>
    </div>
    <div>
    
        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox3" 
            ValidationExpression="\+\d{2}-\d{10}"></asp:RegularExpressionValidator>
    </div>
    <div>
    
        <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" 
            ErrorMessage="RegularExpressionValidator" ControlToValidate="TextBox4" 
            ValidationExpression="\w{8,}"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
    </div>
    
    <div>
        <asp:Button ID="Button1" runat="server" Text="Loged" />
    </div>
    </form>
</body>
</html>
