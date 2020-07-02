<%@ Page Language="C#" AutoEventWireup="true" CodeFile="D-Add-Apps.aspx.cs" Inherits="D_Add_Apps" %>

<!DOCTYPE html>

<html lang="en">
<head>
  <title>Fraud Mobile Apps</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/design.css">
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
    </style>

</head>

<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <form runat="server">
<nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span> 
      </button>
      <!--<a class="navbar-brand" href="#">IVRK</a>-->
    </div>
    
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        
        
        <li><a href="HomePage.aspx">USER LOGIN</a></li>
		    <li><a href="Admin-Login.aspx">ADMIN LOGIN</a></li>
          <li><a href="D-Add-Apps.aspx">ADD APPLICATION</a></li>
          <li><a href="Logout.aspx">LOGOUT</a></li>
      </ul>
    </div>
  
  </div>
  </nav>

<div class="jumbotron text-center">
  <h1>FRAUD MOBILE APPS</h1>
 <!-- <p>Happy to help!!</p>-->
</div>

<!-- Container (About Section) -->
<div>

     <center>
        <table width="80%">
            <tr><td colspan="2"><br /></td></tr>
             <tr><td colspan="2" align="center">
                 <asp:Label ID="Label1" runat="server" Text="Application Details"></asp:Label></td></tr>
             <tr><td colspan="2"><br /></td></tr>
            <tr><td>
                <asp:Label ID="Label2" runat="server" Text="App ID"></asp:Label>
                </td><td>
                    <asp:TextBox ID="appid" runat="server"></asp:TextBox>
                </td></tr>
             <tr><td colspan="2"><br /></td></tr>
            <tr><td>
                <asp:Label ID="Label3" runat="server" Text="Name"></asp:Label>
                </td><td>
                    <asp:TextBox ID="name" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_name" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
             <tr><td colspan="2"><br /></td></tr>
            <tr><td>
                <asp:Label ID="Label4" runat="server" Text="Star"></asp:Label>
                </td><td>
                    <asp:DropDownList ID="star" runat="server">
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
            <tr><td>
                <asp:Label ID="Label11" runat="server" Text="Type"></asp:Label>
                </td><td>
                    <asp:DropDownList ID="type" runat="server">
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
            <tr><td>
                <asp:Label ID="Label12" runat="server" Text="Description"></asp:Label>
                </td><td>
                    <asp:TextBox ID="des" runat="server" TextMode="MultiLine" Width="80%"></asp:TextBox>
                    <asp:Label ID="req_desc" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
             <tr><td colspan="2"><br /></td></tr>
            
            <tr><td>
                <asp:Label ID="Label7" runat="server" Text="Developers Company Name"></asp:Label>
                </td><td>
                    <asp:TextBox ID="cname" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_cname" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
           
         
             <tr><td colspan="2"><br /></td></tr>
            <tr><td>
                <asp:Label ID="Label6" runat="server" Text="Image"></asp:Label>
                </td><td>
                    <asp:FileUpload ID="FileUpload1" runat="server" />
                    <asp:Button ID="upload" runat="server" Text="Upload" OnClick="upload_Click"></asp:Button>
                <asp:Label ID="req_image" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
            <tr><td style="height: 26px"></td><td style="height: 26px">
                    <asp:Image ID="image" runat="server" Height="200px" Width="200px" />
                </td></tr>
             <tr><td colspan="2"><br /></td></tr>
            <tr><td>
                <asp:Label ID="Label8" runat="server" Text="Downloads"></asp:Label>
                </td><td>
                    <asp:TextBox ID="downloads" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_download" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
             <tr><td colspan="2"><br /></td></tr>
            <tr><td class="auto-style1">
                <asp:Label ID="Label9" runat="server" Text="Play Store Link"></asp:Label>
                </td><td class="auto-style1">
                    <asp:TextBox ID="play_store" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_play_store" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
               <tr><td colspan="2"><br /></td></tr>
            <tr><td>
                <asp:Label ID="Label10" runat="server" Text="App Store Link"></asp:Label>
                </td><td>
                    <asp:TextBox ID="app_store" runat="server"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_app_store" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
                   <tr><td colspan="2"><br /></td></tr>
                   <tr><td colspan="2" style="text-align:center"><asp:Button ID="add" runat="server" Text="Add" OnClientClick="return valid();" OnClick="Button1_Click"></asp:Button></td></tr>
                   <tr><td colspan="2"><br /></td></tr>
        </table>
        </center>
</div>
    </form>
</body>
</html>
