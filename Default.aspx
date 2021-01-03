<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Web_Project_02._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

   
    <p>
        <br />
    </p>
    <p>
            <asp:Label ID="Label7" runat="server" Font-Names="Consolas" Font-Size="40px" ForeColor="#412F6F" Text="Home"></asp:Label>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" Font-Size="20px" NavigateUrl="~/Registration_Page.aspx">Farmer Registration</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink2" runat="server" Font-Size="20px" NavigateUrl="~/kells.aspx">Kells Staff Registration</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink3" runat="server" Font-Size="20px" NavigateUrl="~/DOA.aspx">DOA Registration</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink4" runat="server" Font-Size="20px" NavigateUrl="~/Login.aspx">Log as a Farmer</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink5" runat="server" Font-Size="20px" NavigateUrl="~/Registration_Page.aspx">Log as a Kells Staff Member</asp:HyperLink>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink6" runat="server" Font-Size="20px" NavigateUrl="~/Registration_Page.aspx">Log as a DOA Staff Member</asp:HyperLink>
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
    <p>
    </p>

   
</asp:Content>
