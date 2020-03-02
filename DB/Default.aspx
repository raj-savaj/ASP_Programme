<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:TextBox ID="txtfname" runat="server"></asp:TextBox>
    </div>
        <div>
    <asp:TextBox ID="txtlname" runat="server"></asp:TextBox>
    </div>
        <div>
    <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
    </div>
    <div>   
        <asp:Button ID="btnsave" runat="server" Text="Save" OnClick="btnsave_Click" />
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
    </div>
    </form>
</body>
</html>
