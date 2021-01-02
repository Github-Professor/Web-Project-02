<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Web_Project_02.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <p>
        <br />
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
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:farmer %>" SelectCommand="SELECT * FROM [harvest_detail]"></asp:SqlDataSource>
</p>
    <p>
        &nbsp;</p>
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="3" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="fname" HeaderText="fname" SortExpression="fname" />
                <asp:BoundField DataField="details" HeaderText="details" SortExpression="details" />
                <asp:BoundField DataField="location" HeaderText="location" SortExpression="location" />
                <asp:ImageField DataImageUrlField="image" HeaderText="Images">
                </asp:ImageField>
            </Columns>
            <FooterStyle BackColor="White" ForeColor="#000066" />
            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
            <RowStyle ForeColor="#000066" />
            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F1F1F1" />
            <SortedAscendingHeaderStyle BackColor="#007DBB" />
            <SortedDescendingCellStyle BackColor="#CAC9C9" />
            <SortedDescendingHeaderStyle BackColor="#00547E" />
        </asp:GridView>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    
</asp:Content>


