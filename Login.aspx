<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label Text="Username" runat="server" />&nbsp &nbsp &nbsp<asp:TextBox ID="userName" runat="server" /><br />
    <asp:Label Text="Password" runat="server" />&nbsp &nbsp &nbsp<asp:TextBox ID="password" runat="server" OnTextChanged="password_TextChanged" /> <br /><br />
    &nbsp &nbsp &nbsp<asp:Button ID="submit" runat="server" Text="login" PostBackUrl="~/Home.aspx" />


    </div>
    </form>
</body>
</html>
