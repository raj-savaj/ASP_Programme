<%@ Page Language="C#" AutoEventWireup="true" CodeFile="register.aspx.cs" Inherits="register" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="fname" runat="server" placeholder="Firstname"></asp:TextBox>
        <asp:RequiredFieldValidator
            ID="fval" runat="server" ErrorMessage="enter fname" ControlToValidate="fname"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" 
            ErrorMessage="enter only char" ValidationExpression="\D+" ControlToValidate="fname"></asp:RegularExpressionValidator>
            
    </div>
    <div>
        <asp:TextBox ID="sname" runat="server" placeholder="Surname"></asp:TextBox>
        <asp:RequiredFieldValidator
            ID="sval" runat="server" ErrorMessage="enter sirname" ControlToValidate="sname"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="enter only char" ControlToValidate="sname" va ValidationExpression="\D+"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="age" runat="server" placeholder="Age"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1"
            runat="server" ErrorMessage="enter age" ControlToValidate="age"></asp:RequiredFieldValidator>
        <asp:RangeValidator ID="aval" runat="server" ErrorMessage="age below 18" ControlToValidate="age" MinimumValue="1" MaximumValue="18" Type="Integer"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" 
            ErrorMessage="enter digit only" ValidationExpression="\d+" ControlToValidate="age"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="date" runat="server" ontextchanged="date_TextChanged"></asp:TextBox>
        <asp:RequiredFieldValidator ID="dval" runat="server" ErrorMessage="select date" ControlToValidate="date"></asp:RequiredFieldValidator>
        <asp:Calendar ID="Calendar1" runat="server" Visible="false"></asp:Calendar>
    </div>
    <div>
        <asp:DropDownList ID="DropDownList1" runat="server">
        </asp:DropDownList>
    </div>
    <div>
        <asp:DropDownList ID="DropDownList2" runat="server">
        </asp:DropDownList>
    </div>
    <div>
        <asp:TextBox ID="address" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="enter address" ControlToValidate="address"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:TextBox ID="email" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="enter email" ControlToValidate="email"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator4" runat="server" ErrorMessage="Email is not valid" ControlToValidate="email" ValidationExpression="\S+\@\S+\.\S+"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="pass" runat="server" TextMode="Password"> </asp:TextBox>
        <asp:RequiredFieldValidator
            ID="RequiredFieldValidator4" runat="server" ErrorMessage="enter password" ControlToValidate="pass"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator5" runat="server" ErrorMessage="must be 8 to 10" ValidationExpression="\S{8,10}" ControlToValidate="pass"></asp:RegularExpressionValidator>
    </div>
     <div>
        <asp:TextBox ID="cpass" runat="server" TextMode="Password"> </asp:TextBox>
         <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="must be password" ControlToCompare="pass" ControlToValidate="cpass"></asp:CompareValidator>
    </div>
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" />
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" />
    </div>
    </form>
</body>
</html>
