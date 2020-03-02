<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Resort.aspx.cs" Inherits="Resort" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Untitled Page</title>
      <style type="text/css">
       .content
       {
            width:150px;
            padding:20px;
            margin:20px;	
            margin:auto;
       } 
       form div
       {
       	    padding:10px;
       	}
      </style>
</head>
<body>
    <div class="content">
    <form id="form1" runat="server">
    <div>
        <asp:TextBox ID="txtname" runat="server" placeholder="Name"></asp:TextBox>
    </div>
    <div>
        <asp:RadioButton ID="rdomale" runat="server" GroupName="gender" Text="Male"/>
        <asp:RadioButton ID="rdofemale" runat="server" GroupName="gender" Text="Female" />
    </div>
    <div>
        <asp:TextBox ID="txtage" runat="server" placeholder="Age"></asp:TextBox>
    </div>
    <div>
        <asp:TextBox ID="txtocu" runat="server" placeholder="Ocupation"></asp:TextBox>
    </div>
    <div>
        <asp:TextBox ID="txtperson" runat="server" placeholder="Number Of Person"></asp:TextBox>
    </div>
    <div>
        <asp:DropDownList ID="drptype" runat="server" AutoPostBack="true" 
            onselectedindexchanged="drptype_SelectedIndexChanged">
            <asp:ListItem Text="-- Select Accomodation --"></asp:ListItem>
            <asp:ListItem Text="Basic"></asp:ListItem>
            <asp:ListItem Text="Delux"></asp:ListItem>
            <asp:ListItem Text="Special"></asp:ListItem>
            <asp:ListItem Text="Maharaja"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div>
        <asp:DropDownList ID="drpprice" runat="server">
            <asp:ListItem Text="-- Price --"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div>
        <asp:DropDownList ID="drprtype" runat="server">
            <asp:ListItem Text="-- Resort Type --"></asp:ListItem>
            <asp:ListItem Text="HillStation"></asp:ListItem>
            <asp:ListItem Text="Desert"></asp:ListItem>
            <asp:ListItem Text="Forest"></asp:ListItem>
            <asp:ListItem Text="Beach"></asp:ListItem>
        </asp:DropDownList>
    </div>
    <div>
        <asp:Button ID="btnbook" runat="server" Text="Book Resort" 
            onclick="btnbook_Click" />
    </div>
    </form>
    </div>
</body>
</html>
