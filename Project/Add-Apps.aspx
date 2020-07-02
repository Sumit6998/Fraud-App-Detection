<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/MasterPage.master" CodeFile="Add-Apps.aspx.cs" Inherits="Add_Apps" %>
<asp:Content ID="head" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript">
        function valid()
        {
            var res = true;
            if (document.getElementById("<%=name.ClientID%>").value == "")
            {
                res = false;
                document.getElementById("<%=req_name.ClientID%>").innerHTML = "Required";

            }
            if (document.getElementById("<%=star.ClientID%>").value == "--Select--")
            {
                res = false;
                document.getElementById("<%=req_star.ClientID%>").innerHTML = "Required";

            }
            if (document.getElementById("<%=type.ClientID%>").value == "--Select--")
            {
                res = false;
                document.getElementById("<%=req_type.ClientID%>").innerHTML = "Required";

            }
            if (document.getElementById("<%=des.ClientID%>").value == "")
            {
                res = false;
                document.getElementById("<%=req_desc.ClientID%>").innerHTML = "Required";

            }
            if (document.getElementById("<%=cname.ClientID%>").value == "")
            {
                res = false;
                document.getElementById("<%=cname.ClientID%>").innerHTML = "Required";

            }
           
            if (document.getElementById("<%=image.ClientID%>").value == "")
            {
                res = false;
                document.getElementById("<%=req_image.ClientID%>").innerHTML = "Required";

            }
            if (document.getElementById("<%=downloads.ClientID%>").value == "")
            {
                res = false;
                document.getElementById("<%=req_download.ClientID%>").innerHTML = "Required";

            }
             if (document.getElementById("<%=play_store.ClientID%>").value == "")
            {
                res = false;
                document.getElementById("<%=req_play_store.ClientID%>").innerHTML = "Required";

             }
             if (document.getElementById("<%=app_store.ClientID%>").value == "")
            {
                res = false;
                document.getElementById("<%=req_app_store.ClientID%>").innerHTML = "Required";

             }
            return res;
        }
    </script>


    <style type="text/css">
        .auto-style1 {
            height: 80px;
        }
    .auto-style2 {
        height: 20px;
    }
    </style>


</asp:Content>
<asp:Content ID="body" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <div>
        <center>
        <table width="80%">
            <tr><td colspan="2"><br /></td></tr>
             <tr><td colspan="2" align="center" class="td_head">
                 <asp:Label ID="Label1" runat="server" Text="Application Details" CssClass="heading"></asp:Label></td></tr>
             <tr><td colspan="2"><hr /><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label2" runat="server" Text="App ID" CssClass="lab_head"></asp:Label>
                </td><td class="td_txt">
                    <asp:TextBox ID="appid" runat="server" CssClass="txt"></asp:TextBox>
                </td></tr>
             <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label3" runat="server" Text="Name" CssClass="lab_head"></asp:Label>
                </td><td class="td_txt">
                    <asp:TextBox ID="name" runat="server" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_name" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
             <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label4" runat="server" Text="Star" CssClass="lab_head"></asp:Label>
                </td><td class="td_txt">
                    <asp:DropDownList ID="star" runat="server" CssClass="txt">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>0.5</asp:ListItem>
                        <asp:ListItem>1.0</asp:ListItem>
                        <asp:ListItem>1.5</asp:ListItem>
                        <asp:ListItem>2.0</asp:ListItem>
                        <asp:ListItem>2.5</asp:ListItem>
                        <asp:ListItem>3.0</asp:ListItem>
                        <asp:ListItem>3.5</asp:ListItem>
                        <asp:ListItem>4.0</asp:ListItem>
                        <asp:ListItem>4.5</asp:ListItem>
                        <asp:ListItem>5.0</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="req_star" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
           
            <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label11" runat="server" Text="Type" CssClass="lab_head"></asp:Label>
                </td><td class="td_txt">
                    <asp:DropDownList ID="type" runat="server" CssClass="txt">
                        <asp:ListItem>--Select--</asp:ListItem>
                        <asp:ListItem>Game</asp:ListItem>
                        <asp:ListItem>Entertainment</asp:ListItem>
                        <asp:ListItem>Education</asp:ListItem>
                        <asp:ListItem>Android Wear</asp:ListItem>
                        <asp:ListItem>Art and Design</asp:ListItem>
                        <asp:ListItem>Auto and Vehicles</asp:ListItem>
                        <asp:ListItem>Beauty</asp:ListItem>
                        <asp:ListItem>Books and References</asp:ListItem>
                        <asp:ListItem>Business</asp:ListItem>
                        <asp:ListItem>Comics</asp:ListItem>
                        <asp:ListItem>Communication</asp:ListItem>
                        <asp:ListItem>Events</asp:ListItem>
                        <asp:ListItem>Finance</asp:ListItem>
                        <asp:ListItem>Food and Drink</asp:ListItem>
                        <asp:ListItem>Health and Fitness</asp:ListItem>
                        <asp:ListItem>House and Home</asp:ListItem>
                        <asp:ListItem>Libraries and Demo</asp:ListItem>
                    </asp:DropDownList>
                    <asp:Label ID="req_type" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
            
            <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label12" runat="server" Text="Description" CssClass="lab_head"></asp:Label>
                </td><td class="td_txt">
                    <asp:TextBox ID="des" runat="server" TextMode="MultiLine" Width="100%" CssClass="txt"></asp:TextBox>
                    <asp:Label ID="req_desc" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
             <tr><td colspan="2"><br /></td></tr>
            
            <tr><td class="td_lab">
                <asp:Label ID="Label7" runat="server" Text="Developers Company Name" CssClass="lab_head"></asp:Label>
                </td><td class="td_txt">
                    <asp:TextBox ID="cname" runat="server" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_cname" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
           
         
             <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label6" runat="server" Text="Image" CssClass="lab_head"></asp:Label>
                </td><td class="td_txt">
                    <asp:FileUpload ID="FileUpload1" runat="server" CssClass="txt" />
                    <asp:Button ID="upload" runat="server" Text="Upload" OnClick="upload_Click"></asp:Button>
                <asp:Label ID="req_image" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
            <tr><td style="height: 26px"></td><td style="height: 26px">
                    <asp:Image ID="image" runat="server" Height="200px" Width="200px" />
                </td></tr>
             <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label8" runat="server" Text="Downloads" CssClass="lab_head"></asp:Label>
                </td><td class="td_txt">
                    <asp:TextBox ID="downloads" runat="server" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_download" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
             <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label9" runat="server" Text="Play Store Link" CssClass="lab_head"></asp:Label>
                </td><td class="td_txt">
                    <asp:TextBox ID="play_store" runat="server" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_play_store" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
               <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label10" runat="server" Text="App Store Link" CssClass="lab_head"></asp:Label>
                </td><td class="td_txt">
                    <asp:TextBox ID="app_store" runat="server" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_app_store" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
                   <tr><td colspan="2"><br /></td></tr>
                   <tr><td colspan="2" style="text-align:center"><asp:Button ID="add" runat="server" Text="Add" OnClientClick="return valid();" OnClick="Button1_Click" CssClass="button"></asp:Button></td></tr>
                   <tr><td colspan="2"><br /></td></tr>
        </table>
        </center>
    </div>

</asp:Content>
