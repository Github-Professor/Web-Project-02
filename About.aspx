<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Web_Project_02.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <p>
        <br />
    </p>
<p>
            <asp:Label ID="Label7" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Tell us something about your harvest,"></asp:Label>
    </p>
    <p>
            <asp:Label ID="Label3" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Firstname :"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtfname" runat="server" Height="22px" Width="166px"></asp:TextBox>
    </p>
    <p>
            <asp:Label ID="Label4" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Details about Harvest :"></asp:Label>
    </p>
    <p>
        <asp:TextBox ID="txtDetails" runat="server" Height="160px" TextMode="MultiLine" Width="628px"></asp:TextBox>
    </p>
    <p>
            <asp:Label ID="Label8" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Vegetables,"></asp:Label>
    </p>
    <p>
            <asp:Label ID="Label9" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Pumpkin :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtVeg1" runat="server" TextMode="Number"></asp:TextBox>
    </p>
    <p>
            <asp:Label ID="Label10" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Green Chilli :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtVeg2" runat="server" TextMode="Number"></asp:TextBox>
    </p>
    <p>
            <asp:Label ID="Label11" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Carrot :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtVeg3" runat="server" TextMode="Number"></asp:TextBox>
    </p>
    <p>
            <asp:Label ID="Label12" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Onion :"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtVeg4" runat="server" TextMode="Number"></asp:TextBox>
    </p>
    <p>
        &nbsp;</p>
    <p>
            <asp:Label ID="Label6" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Location :"></asp:Label>
        <asp:TextBox ID="txtLocation" runat="server" Height="22px" Width="166px"></asp:TextBox>
    </p>
    <p>
            <asp:Label ID="Label5" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="#412F6F" Text="Upload Your Images :"></asp:Label>
    </p>
    <p>
        <asp:FileUpload ID="imageUpload" runat="server" Font-Names="Consolas" ForeColor="#412F6F" Height="34px" Width="289px" />
    </p>
    <p>
        <asp:Button ID="Button1" runat="server" BackColor="#22AA25" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="20px" ForeColor="White" Height="35px" OnClick="Button1_Click" Text="Post" Width="84px" />
&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" BackColor="#22AA25" BorderStyle="Groove" Font-Bold="True" Font-Names="Rockwell" Font-Size="20px" ForeColor="White" Height="35px" OnClick="Button2_Click" Text="Clear" Width="84px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Label ID="lblError" runat="server" Font-Names="Consolas" Font-Size="20px" ForeColor="Red"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    
</asp:Content>


