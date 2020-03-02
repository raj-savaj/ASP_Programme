<%@ Page Language="C#" AutoEventWireup="true" CodeFile="5_mark.aspx.cs" Inherits="_5_mark" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtfname" runat="server" placeholder="First Name"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvname" runat="server" 
            ErrorMessage="Please Enter Name" ControlToValidate="txtfname"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="rgname" runat="server" 
            ErrorMessage="Enter Only Character" ControlToValidate="txtfname" 
            ValidationExpression="\D+"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="txtsname" runat="server" placeholder="sirname"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvsname" runat="server" 
            ErrorMessage="Please Enter Name" ControlToValidate="txtsname"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="regsname" runat="server" 
            ErrorMessage="Enter Only Character" ControlToValidate="txtsname" 
            ValidationExpression="\D+"></asp:RegularExpressionValidator>
    </div>
    <div>
        <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
        <asp:RangeValidator ID="rngage" runat="server" 
            ErrorMessage="Please Enetr Age up to 18" Type="Integer" MaximumValue="18" 
            MinimumValue="1" ControlToValidate="txtage"></asp:RangeValidator>
    </div>
    <div>
        <asp:TextBox ID="txtbdate" runat="server" ></asp:TextBox>
        <asp:Calendar ID="Calendar1" runat="server" Visible="False"></asp:Calendar>
    </div>
    <div>
        <asp:DropDownList ID="drpcity" runat="server">
        </asp:DropDownList>
    </div>
    <div>
        <asp:DropDownList ID="drpstate" runat="server">
        </asp:DropDownList>
    </div>
    <div>
         <asp:TextBox ID="txtadd" runat="server" TextMode="MultiLine"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvadd" runat="server" 
             ErrorMessage="Empty Address" ControlToValidate="txtadd"></asp:RequiredFieldValidator>
    </div>
    <div>
        <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvmail" runat="server" 
            ErrorMessage="Empty Email" ControlToValidate="txtemail"></asp:RequiredFieldValidator>
        <asp:RegularExpressionValidator ID="egmail" runat="server" 
            ErrorMessage="Invalid Email" ValidationExpression="\S+\@\S+\.\S+" 
            ControlToValidate="txtemail"></asp:RegularExpressionValidator>
    </div>
    <div>
    <asp:TextBox ID="txtpass" runat="server"></asp:TextBox>
        <asp:RegularExpressionValidator ID="regpass" runat="server" 
            ErrorMessage="Password must be 8 to 10" ValidationExpression="\S{8,10}" 
            ControlToValidate="txtpass"></asp:RegularExpressionValidator>
    </div>
    <div>
    <asp:TextBox ID="txtcpass" runat="server"></asp:TextBox>
        <asp:CompareValidator ID="cmppass" runat="server" 
            ErrorMessage="CompareValidator" ControlToCompare="txtpass" 
            ControlToValidate="txtcpass"></asp:CompareValidator>
    </div>
    <div>
        <asp:FileUpload ID="FileUpload1" runat="server" /> 
    </div>
    <div>
        <asp:Button ID="Button1" runat="server" Text="Button" onclick="Button1_Click" />
    </div>
    </form>
</body>
</html>
