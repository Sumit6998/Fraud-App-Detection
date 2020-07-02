<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="View-Feedback.aspx.cs" Inherits="View_Feedback" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <div>
        <center>
<table width="80%">
    <tr><td colspan="2"><br /></td></tr>
     <tr><td colspan="2" align="center" class="td_head">
         <asp:Label ID="Label1" runat="server" Text="View Feedback" CssClass="heading"></asp:Label></td></tr>
     <tr><td colspan="2"><hr /><br /></td></tr>
    <tr><td colspan="2" align="center">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" OnRowCommand="GridView1_RowCommand" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" Width="80%" ForeColor="Black" GridLines="Horizontal">
            <Columns>
             
                <asp:BoundField HeaderText="Name" DataField="name"/>
                <asp:BoundField HeaderText="Email ID" DataField="email"/>

              

          <asp:TemplateField HeaderText ="">
         <ItemTemplate>

        <asp:LinkButton ID="yes" runat ="server" CommandArgument='<%#Eval("fid")%>' Text ="View" CommandName ="yes" ></asp:LinkButton>
      </ItemTemplate>
    </asp:TemplateField>
        </Columns>

            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
            <HeaderStyle BackColor=" #48CFC1" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
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
                    <tr><td class="td_lab" style="vertical-align:top"><asp:Label ID="Label2" runat="server" Text="Message" CssClass="lab_head"></asp:Label></td><td class="td_txt"><asp:TextBox ID="msg" runat="server" TextMode="MultiLine" Width="80%" CssClass="textarea"></asp:TextBox></td></tr>
                      <tr><td colspan="2"><br /></td></tr>

                </table>

            </asp:Panel>
</center>
    </div>

</asp:Content>
