<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <asp:Label Text="Username" runat="server" />&nbsp &nbsp &nbsp
        <asp:TextBox ID="userName" runat="server" /><br />
    <asp:Label Text="Password"  runat="server" />&nbsp &nbsp &nbsp
        <asp:TextBox TextMode="Password" ID="password" runat="server" OnTextChanged="password_TextChanged" /> <br /><br />
    &nbsp &nbsp &nbsp<asp:Button ID="submit" runat="server" Text="login" OnClick="submit_Click" /><br />
        <asp:Label ID="testlbl" runat="server"  />


    </div>
    </form>
</body>
</html>
