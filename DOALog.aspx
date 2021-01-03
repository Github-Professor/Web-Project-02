<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DOALog.aspx.cs" Inherits="Web_Project_02.DOALog" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

  * {
    color: #000 !important;
    text-shadow: none !important;
    background: transparent !important;
    -webkit-box-shadow: none !important;
    box-shadow: none !important;
  }
  * {
  -webkit-box-sizing: border-box;
  -moz-box-sizing: border-box;
  box-sizing: border-box;
}
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label4" runat="server" Font-Names="Consolas" Font-Size="30px" ForeColor="#412F6F" Text="Login DOA Staff" Font-Bold="True"></asp:Label>
        </div>
        <p>
            <asp:Label ID="Label6" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Username :"></asp:Label>
            <asp:TextBox ID="txtUname" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Label ID="Label7" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Password :"></asp:Label>
            <asp:TextBox ID="txtPass" runat="server"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="Button1" runat="server" Font-Size="20px" OnClick="Button1_Click" Text="Login" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Font-Size="20px" OnClick="Button2_Click" Text="Reset" />
        </p>
        <p>
            <asp:Label ID="lblError" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="Red" BackColor="White"></asp:Label>
        </p>
    </form>
</body>
</html>
