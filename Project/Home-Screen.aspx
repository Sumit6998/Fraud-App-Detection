<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Home-Screen.aspx.cs" Inherits="Home_Screen" %>

<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <center>
    <table width="80%">
        <tr><td colspan="3"><br /></td></tr>
        <tr><td colspan="3" align="center" class="td_head">
            <asp:Label ID="Label1" runat="server" Text="View Apps And Declare Fake" CssClass="heading"></asp:Label></td></tr>
        <tr><td colspan="3"><hr /><br /></td></tr>
       
        </table>
        <asp:Panel ID="Panel1" runat="server">
        <table width="80%">
        <tr><td class="img_td">
            <asp:ImageButton ID="I1" runat="server" OnClick="I1_Click"  CssClass="mimg" /></td><td class="img_td">
                <asp:ImageButton ID="I2" runat="server" OnClick="I2_Click" CssClass="mimg" /></td><td class="img_td">
                    <asp:ImageButton ID="I3" runat="server" OnClick="I3_Click" CssClass="mimg" /></td></tr>
            <tr><td class="img_td"><asp:Image ID="f1" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f2" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f3" runat="server"></asp:Image></td>

            </tr>
               <tr><td class="img_td">
           <asp:LinkButton ID="L1" runat="server" OnClick="L1_Click"></asp:LinkButton>
                   <asp:HiddenField ID="h1" runat="server" />
                   </td><td class="img_td">
                <asp:LinkButton ID="L2" runat="server" OnClick="L2_Click"></asp:LinkButton>
                       <asp:HiddenField ID="h2" runat="server" />
                   </td><td class="img_td">
                <asp:LinkButton ID="L3" runat="server" OnClick="L3_Click"></asp:LinkButton>   
                       <asp:HiddenField ID="h3" runat="server" />
                   </td></tr>
          <tr><td colspan="3"><br /></td></tr>
        <tr><td class="img_td">
            <asp:ImageButton ID="I4" runat="server"  OnClick="I4_Click" CssClass="mimg" /></td><td class="img_td">
                <asp:ImageButton ID="I5" runat="server" OnClick="I5_Click" CssClass="mimg" /></td><td class="img_td">
                    <asp:ImageButton ID="I6" runat="server" OnClick="I6_Click" CssClass="mimg" /></td></tr>
             <tr><td class="img_td"><asp:Image ID="f4" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f5" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f6" runat="server"></asp:Image></td>

            </tr>
           <tr><td class="img_td">
           <asp:LinkButton ID="L4" runat="server" OnClick="L4_Click"></asp:LinkButton>
               <asp:HiddenField ID="h4" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L5" runat="server" OnClick="L5_Click"></asp:LinkButton>
                   <asp:HiddenField ID="h5" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L6" runat="server" OnClick="L6_Click"></asp:LinkButton>   
                   <asp:HiddenField ID="h6" runat="server" />
               </td></tr>
          <tr><td colspan="3"><br /></td></tr>
        <tr><td class="img_td">
            <asp:ImageButton ID="I7" runat="server" OnClick="I7_Click" CssClass="mimg" /></td><td class="img_td">
                <asp:ImageButton ID="I8" runat="server" OnClick="I8_Click" CssClass="mimg" /></td><td class="img_td">
                    <asp:ImageButton ID="I9" runat="server" OnClick="I9_Click" CssClass="mimg" /></td></tr>
             <tr><td class="img_td"><asp:Image ID="f7" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f8" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f9" runat="server"></asp:Image></td>

            </tr>
           <tr><td class="img_td">
           <asp:LinkButton ID="L7" runat="server" OnClick="L7_Click"></asp:LinkButton>
               <asp:HiddenField ID="h7" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L8" runat="server" OnClick="L8_Click"></asp:LinkButton>
                   <asp:HiddenField ID="h8" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L9" runat="server" OnClick="L9_Click"></asp:LinkButton>   
                   <asp:HiddenField ID="h9" runat="server" />
               </td></tr>
        <tr><td colspan="3"><br /></td></tr>
         <tr><td colspan="3" align="center"><asp:Button ID="n1" runat="server" Text="Next" OnClick="Button2_Click" CssClass="button" Width="20%"></asp:Button></td></tr>
         <tr><td colspan="3"><br /></td></tr>
    </table>
            </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
        <table width="80%">
        <tr><td class="img_td">
            <asp:ImageButton ID="I10" runat="server" OnClick="I10_Click" CssClass="mimg" /></td><td class="img_td">
                <asp:ImageButton ID="I11" runat="server" OnClick="I11_Click" CssClass="mimg" /></td><td class="img_td">
                    <asp:ImageButton ID="I12" runat="server" OnClick="I12_Click" CssClass="mimg" /></td></tr>
            <tr><td class="img_td"><asp:Image ID="f10" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f11" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f12" runat="server"></asp:Image></td>

            </tr>
               <tr><td class="img_td">
           <asp:LinkButton ID="L10" runat="server" OnClick="L10_Click"></asp:LinkButton>
                   <asp:HiddenField ID="h10" runat="server" />
                   </td><td class="img_td">
                <asp:LinkButton ID="L11" runat="server" OnClick="L11_Click"></asp:LinkButton>
                       <asp:HiddenField ID="h11" runat="server" />
                   </td><td class="img_td">
                <asp:LinkButton ID="L12" runat="server" OnClick="L12_Click"></asp:LinkButton>   
                       <asp:HiddenField ID="h12" runat="server" />
                   </td></tr>
          <tr><td colspan="3"><br /></td></tr>
        <tr><td class="img_td">
            <asp:ImageButton ID="I13" runat="server" OnClick="I13_Click" CssClass="mimg" /></td><td class="img_td">
                <asp:ImageButton ID="I14" runat="server" OnClick="I14_Click" CssClass="mimg" /></td><td class="img_td">
                    <asp:ImageButton ID="I15" runat="server" OnClick="I15_Click" CssClass="mimg" /></td></tr>
             <tr><td class="img_td"><asp:Image ID="f13" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f14" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f15" runat="server"></asp:Image></td>

            </tr>
           <tr><td class="img_td">
           <asp:LinkButton ID="L13" runat="server" OnClick="L13_Click"></asp:LinkButton>
               <asp:HiddenField ID="h13" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L14" runat="server" OnClick="L14_Click"></asp:LinkButton>
                   <asp:HiddenField ID="h14" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L15" runat="server" OnClick="L15_Click"></asp:LinkButton>   
                   <asp:HiddenField ID="h15" runat="server" />
               </td></tr>
          <tr><td colspan="3"><br /></td></tr>
        <tr><td class="img_td">
            <asp:ImageButton ID="I16" runat="server" OnClick="I16_Click" CssClass="mimg" /></td><td class="img_td">
                <asp:ImageButton ID="I17" runat="server" OnClick="I17_Click" CssClass="mimg" /></td><td class="img_td">
                    <asp:ImageButton ID="I18" runat="server" OnClick="I18_Click" CssClass="mimg" /></td></tr>
              <tr><td class="img_td"><asp:Image ID="f16" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f17" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f18" runat="server"></asp:Image></td>

            </tr>
           <tr><td class="img_td">
           <asp:LinkButton ID="L16" runat="server" OnClick="L16_Click"></asp:LinkButton>
               <asp:HiddenField ID="h16" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L17" runat="server" OnClick="L17_Click"></asp:LinkButton>
                   <asp:HiddenField ID="h17" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L18" runat="server" OnClick="L18_Click"></asp:LinkButton>   
                   <asp:HiddenField ID="h18" runat="server" />
               </td></tr>
        <tr><td colspan="3"><br /></td></tr>
         <tr><td colspan="3" align="center"><asp:Button ID="p2" runat="server" Text="Previous" OnClick="p2_Click" CssClass="button" Width="20%"></asp:Button><asp:Button ID="n2" runat="server" Text="Next" OnClick="n2_Click" CssClass="button" Width="20%"></asp:Button></td></tr>
         <tr><td colspan="3"><br /></td></tr>
    </table>
            </asp:Panel>
        <asp:Panel ID="Panel3" runat="server">
        <table width="80%">
        <tr><td class="img_td">
            <asp:ImageButton ID="I19" runat="server" OnClick="I19_Click" CssClass="mimg" /></td><td class="img_td">
                <asp:ImageButton ID="I20" runat="server" OnClick="I20_Click" CssClass="mimg" /></td><td class="img_td">
                    <asp:ImageButton ID="I21" runat="server" OnClick="I21_Click" CssClass="mimg" /></td></tr>
              <tr><td class="img_td"><asp:Image ID="f19" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f20" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f21" runat="server"></asp:Image></td>

            </tr>   
               <tr><td class="img_td">
           <asp:LinkButton ID="L19" runat="server" OnClick="L19_Click"></asp:LinkButton>
                   <asp:HiddenField ID="h19" runat="server" />
                   </td><td class="img_td">
                <asp:LinkButton ID="L20" runat="server" OnClick="L20_Click"></asp:LinkButton>
                       <asp:HiddenField ID="h20" runat="server" />
                   </td><td class="img_td">
                <asp:LinkButton ID="L21" runat="server" OnClick="L21_Click"></asp:LinkButton>   
                       <asp:HiddenField ID="h21" runat="server" />
                   </td></tr>
          <tr><td colspan="3"><br /></td></tr>
        <tr><td class="img_td">
            <asp:ImageButton ID="I22" runat="server" OnClick="I22_Click" CssClass="mimg" /></td><td class="img_td">
                <asp:ImageButton ID="I23" runat="server" OnClick="I23_Click" CssClass="mimg" /></td><td class="img_td">
                    <asp:ImageButton ID="I24" runat="server" OnClick="I24_Click" CssClass="mimg" /></td></tr>
              <tr><td class="img_td"><asp:Image ID="f22" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f23" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f24" runat="server"></asp:Image></td>

            </tr>
           <tr><td class="img_td">
           <asp:LinkButton ID="L22" runat="server" OnClick="L22_Click"></asp:LinkButton>
               <asp:HiddenField ID="h22" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L23" runat="server" OnClick="L23_Click"></asp:LinkButton>
                   <asp:HiddenField ID="h23" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L24" runat="server" OnClick="L24_Click"></asp:LinkButton>   
                   <asp:HiddenField ID="h24" runat="server" />
               </td></tr>
          <tr><td colspan="3"><br /></td></tr>
        <tr><td class="img_td">
            <asp:ImageButton ID="I25" runat="server" OnClick="I25_Click" CssClass="mimg" /></td><td class="img_td">
                <asp:ImageButton ID="I26" runat="server" OnClick="I26_Click" CssClass="mimg" /></td><td class="img_td">
                    <asp:ImageButton ID="I27" runat="server" OnClick="I27_Click" CssClass="mimg" /></td></tr>
             <tr><td class="img_td"><asp:Image ID="f25" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f26" runat="server"></asp:Image></td>
                <td class="img_td"><asp:Image ID="f27" runat="server"></asp:Image></td>

            </tr>
           <tr><td class="img_td">
           <asp:LinkButton ID="L25" runat="server" OnClick="L25_Click"></asp:LinkButton>
               <asp:HiddenField ID="h25" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L26" runat="server" OnClick="L26_Click"></asp:LinkButton>
                   <asp:HiddenField ID="h26" runat="server" />
               </td><td class="img_td">
                <asp:LinkButton ID="L27" runat="server" OnClick="L27_Click"></asp:LinkButton>   
                   <asp:HiddenField ID="h27" runat="server" />
               </td></tr>
        <tr><td colspan="3"><br /></td></tr>
         <tr><td colspan="3" align="center" class="auto-style1"><asp:Button ID="p3" runat="server" Text="Previous" OnClick="p3_Click" CssClass="button" Width="20%"></asp:Button></td></tr>
         <tr><td colspan="3"><br /></td></tr>
    </table>
            </asp:Panel>
    </center>
</asp:Content>
<asp:Content ID="Content1" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .auto-style1 {
            height: 26px;
        }
    </style>
</asp:Content>
