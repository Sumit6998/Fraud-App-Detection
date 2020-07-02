<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Add- Feedback.aspx.cs" Inherits="Add__Feedback" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <table width="80%">
        <tr><td colspan="2"><br /></td></tr>
        <tr><td colspan="2" align="center" class="td_head">
            <asp:Label ID="Label1" runat="server" Text="Add Feedback" CssClass="heading"></asp:Label></td></tr>
        <tr><td colspan="2"><hr /><br /></td></tr>
        <tr><td class="td_lab "><asp:Label ID="Label2" runat="server" Text="Message" CssClass="lab_head"></asp:Label></td><td class="td_txt"><asp:TextBox ID="msg" runat="server" Height="150px" TextMode="MultiLine" Width="80%"></asp:TextBox></td></tr>
         <tr><td colspan="2"><br /></td></tr>
         <tr><td colspan="2" align="center"><asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" CssClass="button"></asp:Button></td></tr>
         <tr><td colspan="2"><br /></td></tr>
    </table>
    </center>
</asp:Content>