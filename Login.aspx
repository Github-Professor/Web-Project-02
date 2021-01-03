<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Web_Project_02.Login" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">




    <p>
</p>
<p class="text-center">
            <asp:Label ID="Label4" runat="server" Font-Names="Consolas" Font-Size="30px" ForeColor="#412F6F" Text="Login" Font-Bold="True"></asp:Label>
    </p>
<p class="text-center">
            <asp:Label ID="Label5" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="National ID Number :"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtID" runat="server" TextMode="Number"></asp:TextBox>
</p>
<p class="text-center">
            <asp:Label ID="Label6" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Password :"></asp:Label>
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
</p>
<p class="text-center">
&nbsp;<asp:Button ID="Button2" runat="server" Font-Size="20px" OnClick="Button2_Click" Text="Login" />
&nbsp;&nbsp;&nbsp;
    <asp:Button ID="Button3" runat="server" Font-Size="20px" OnClick="Button3_Click" Text="Reset" />
</p>
<p class="text-center">
            <asp:Label ID="lblError" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="Red"></asp:Label>
    </p>
    <p class="text-center">
            &nbsp;</p>
    <p class="text-center">
            &nbsp;</p>
    <p class="text-center">
            &nbsp;</p>





</asp:Content>
