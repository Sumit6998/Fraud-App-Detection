<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Admin-Rating.aspx.cs" Inherits="Admin_Rating" %>
<asp:Content ID="he" ContentPlaceHolderID="head" runat="server">
    <style>
    .pa
    {
       padding-left:40px; 
    }
    </style>
</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

       <center>
    <table width="80%">
        <tr><td ><br /></td></tr>
        <tr><td align="center" class="td_head">
            <asp:Label ID="Label1" runat="server" Text="View Apps And Declare Fake" CssClass="heading"></asp:Label></td></tr>
        <tr><td><hr /><br /></td></tr>
        </table>
           <table width="80%">
               <tr><td rowspan="4">
                   <asp:Image ID="app_img" runat="server" Height="200px" Width="200px" />
                   </td><td colspan="2"><asp:Label ID="name" runat="server" CssClass="h2"></asp:Label></td></tr>
               <tr><td colspan="2"><br /></td></tr>
                 <tr><td class="auto-style1"><asp:Label ID="user_rate" runat="server" Text="User Rating" CssClass="h4"></asp:Label></td><td class="auto-style1"><asp:Label ID="admin_rate" runat="server" Text="Admin Rating" CssClass="h4"></asp:Label></td></tr>
               <tr><td><asp:Image ID="urate" runat="server" Height="50px" Width="200px"></asp:Image></td><td><asp:Image ID="arate" runat="server" Height="50px" Width="200px"></asp:Image></td></tr>
                <tr><td colspan="3" class="auto-style1"><br /></td></tr>
                 <tr><td colspan="3" class="td_lab"><asp:Label ID="Label5" runat="server" Text="Description" CssClass="h4"></asp:Label></td></tr>
               <tr><td colspan="3" style="width:50%" class="td_lab"><asp:Label ID="des" runat="server"></asp:Label></td></tr>
                <tr><td colspan="3" class="auto-style1"><br /></td></tr>
               <tr><td colspan="3" class="td_lab"><asp:Label ID="Label8" runat="server" Text="Offered By" CssClass="h4"></asp:Label></td></tr>
              
                 <tr><td colspan="3" class="td_lab"><asp:Label ID="cname" runat="server"></asp:Label></td></tr>
                <tr><td colspan="3"><br /></td></tr>
                 <tr><td colspan="3" class="td_lab"><asp:Label ID="Label10" runat="server" Text="Downloads" CssClass="h4"></asp:Label></td></tr>
                 <tr><td colspan="3" class="td_lab"><asp:Label ID="downloads" runat="server"></asp:Label></td></tr>
                <tr><td colspan="3"></td></tr>
              <tr> <td colspan="3" style="padding:10px;text-align:left"><asp:Label ID="Label6" runat="server" Text="Comments" CssClass="h4" ForeColor="#33CCFF"></asp:Label></td></tr>
               <tr><td colspan="3"><asp:Table ID="Table1" runat="server"></asp:Table></td></tr>
               <tr><td colspan="3"><br /></td></tr>
                  <tr><td colspan="3" style="text-align:center"><asp:Button ID="fraud" runat="server" Text="FRAUD" OnClick="Button1_Click" CssClass="button"></asp:Button>&nbsp;<asp:Button ID="genuine" runat="server" Text="GENUINE" OnClick="Button2_Click" CssClass="button" />
                      </td></tr>
                  <tr><td colspan="3"><br /></td></tr>
           </table>


           </center>

</asp:Content>


