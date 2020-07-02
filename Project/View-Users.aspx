<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="View-Users.aspx.cs" Inherits="View_Users" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div>
        <center>
<table width="80%">
    <tr><td colspan="2"><br /></td></tr>
     <tr><td colspan="2" align="center" class="td_head">
         <asp:Label ID="Label1" runat="server" Text="View User" CssClass="heading"></asp:Label></td></tr>
     <tr><td colspan="2"><hr /><br /></td></tr>
    <tr><td colspan="2" align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Horizontal" Width="80%">
            <Columns>
             
                <asp:BoundField HeaderText="User ID" DataField="user_id"/>
                <asp:BoundField HeaderText="Name" DataField="name"/>
            
              

          <asp:TemplateField HeaderText ="">
         <ItemTemplate>

        <asp:LinkButton ID="yes" runat ="server" CommandArgument='<%#Eval("user_id")%>' Text ="View" CommandName ="yes" ></asp:LinkButton>
      </ItemTemplate>
    </asp:TemplateField>
        </Columns>

            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor=" #48CFC1" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
            <SortedAscendingCellStyle BackColor="#F7F7F7" />
            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
            <SortedDescendingCellStyle BackColor="#E5E5E5" />
            <SortedDescendingHeaderStyle BackColor="#242121" />

        </asp:GridView>
    </td></tr>
    <tr><td colspan="2"><br /></td></tr>

</table>
            <asp:Panel ID="Panel1" runat="server">
                <table width="80%">
                    <tr><td colspan="2"><br /></td></tr>
                    <tr><td class="td_lab"><asp:Label ID="Label2" runat="server" Text="Mobile Number" CssClass="lab_head"></asp:Label></td><td class="td_txt"><asp:TextBox ID="mobile" runat="server" CssClass="txt"></asp:TextBox></td></tr>
                      <tr><td colspan="2"><br /></td></tr>
                     <tr><td class="td_lab"><asp:Label ID="Label3" runat="server" Text="E-Mail ID" CssClass="lab_head"></asp:Label></td><td class="td_txt"><asp:TextBox ID="email" runat="server" CssClass="txt"></asp:TextBox></td></tr>
                      <tr><td colspan="2"><br /></td></tr>
                     <tr><td class="td_lab"><asp:Label ID="Label4" runat="server" Text="User Name" CssClass="lab_head"></asp:Label></td><td class="td_txt"><asp:TextBox ID="uname" runat="server" CssClass="txt"></asp:TextBox></td></tr>
                      <tr><td colspan="2"><br /></td></tr>
                </table>

            </asp:Panel>
</center>
    </div>


</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
    .auto-style1 {
        height: 21px;
    }
</style>
</asp:Content>

