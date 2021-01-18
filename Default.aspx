<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Project_02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   
    <p>
        <br />
    </p>
    <p>
            <asp:Label ID="Label7" runat="server" Font-Names="Consolas" Font-Size="40px" ForeColor="#990033" Text="Home" Font-Bold="True"></asp:Label>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="20px" NavigateUrl="~/Registration_Page.aspx" Font-Bold="True">Farmer Registration</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="20px" NavigateUrl="~/kells.aspx" Font-Bold="True">Kells Staff Registration</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="20px" NavigateUrl="~/DOA.aspx" Font-Bold="True">DOA Registration</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="20px" NavigateUrl="~/Login.aspx" Font-Bold="True">Log as a Farmer</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="20px" NavigateUrl="~/LogKells.aspx" Font-Bold="True">Log as a Kells Staff Member</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink6" runat="server" Font-Size="20px" NavigateUrl="~/DOALog.aspx" Font-Bold="True">Log as a DOA Staff Member</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink7" runat="server" Font-Size="20px" NavigateUrl="~/ChatwithUs.html" Font-Bold="True">Chat with Us</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink8" runat="server" Font-Size="20px" NavigateUrl="~/Graphs.aspx" Font-Bold="True">Harvest Analysis</asp:HyperLink>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

   
</asp:Content>
