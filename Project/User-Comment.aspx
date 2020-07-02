<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="User-Comment.aspx.cs" Inherits="User_Comment" %>
<asp:Content ID="he" ContentPlaceHolderID="head" runat="server">
    <style>
    .pa
    {
       padding-left:40px; 
    }
    </style>
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
    <center>
    <table width="80%">
        <tr><td colspan="2"><br /></td></tr>
        <tr><td colspan="2" class="td_head">
            <asp:Label ID="Label1" runat="server" Text="Appication Details" CssClass="heading"></asp:Label></td></tr>
         <tr><td colspan="2"><hr /><br /></td></tr>
        
    </table>
        <table width="80%">
        <tr><td rowspan="7"><asp:Image ID="Image1" runat="server" Height="200px" Width="200px"></asp:Image></td><td colspan="3" style="text-align:left;padding-left:40px"><asp:Label ID="name" runat="server" CssClass="h2"></asp:Label></td></tr>
        <tr><td  colspan="3"><br /></td></tr>
            <tr><td  style="text-align:left;padding-left:40px"><asp:Image ID="Image2" runat="server" Height="50px" Width="200px"></asp:Image></td><td  style="text-align:left;padding-left:40px"><asp:Label ID="Label3" runat="server" Text="Downloads" CssClass="h4"></asp:Label></td><td style="text-align:left;padding-left:10px"><asp:Label ID="download" runat="server"></asp:Label></td></tr>
               <tr><td  colspan="3"><br /></td></tr>
            <tr><td style="text-align:left;padding-left:40px;width:40%"><asp:Label ID="Label5" runat="server" Text="Description" CssClass="h4"></asp:Label></td><td  style="text-align:left;width:30%"><asp:Label ID="des" runat="server"></asp:Label></td><td></td></tr>
            <tr><td  colspan="3"><br /></td></tr>
            <tr><td style="text-align:left;padding-left:40px;width:40%"><asp:Label ID="Label7" runat="server" Text="Company Name" CssClass="h4"></asp:Label></td><td  style="text-align:left;width:30%"><asp:Label ID="cname" runat="server"></asp:Label></td><td></td></tr>
            <tr><td  colspan="4"><br /></td></tr>
             <tr><td  colspan="4" style="padding:10px;text-align:left"><asp:Label ID="Label6" runat="server" Text="Comments" CssClass="h4" ForeColor="#33CCFF"></asp:Label></td></tr>
             <tr><td  colspan="4"><br /></td></tr>
            <tr><td  colspan="4" style="text-align:center"><asp:Table ID="Table1" Width="100%" runat="server"></asp:Table></td></tr>
        <tr><td  colspan="4"><br /></td></tr>
            <tr><td colspan="3" style="text-align:center"><asp:TextBox ID="comment" runat="server" CssClass="txt" TextMode="MultiLine" Width="80%" Height="150px"></asp:TextBox></td><td><asp:Button ID="com" runat="server" Text="Comment" OnClick="com_Click" CssClass="button"></asp:Button></td></tr>
            <tr><td  colspan="4"><br /></td></tr>
               <tr><td align="right" colspan="2"><asp:ImageButton ID="google_play" runat="server" ImageUrl="~/images/google.png" Width="50%"></asp:ImageButton></td><td align="left" colspan="2">&nbsp;&nbsp;&nbsp;&nbsp; <asp:ImageButton ID="ios_play" runat="server" ImageUrl="~/images/app-store.jpg" Width="50%"></asp:ImageButton></td></tr>

        </table>
    </center>
</div>

</asp:Content>
