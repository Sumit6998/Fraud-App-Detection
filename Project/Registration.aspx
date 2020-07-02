<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Registration.aspx.cs" Inherits="Registration" %>


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
            var ret = true;
            var name = document.getElementById("<%=name.ClientID%>");
            var mob = document.getElementById("<%=mobno.ClientID%>");
            var email = document.getElementById("<%=email.ClientID%>");
            var uname = document.getElementById("<%=uname.ClientID%>");
            var pass= document.getElementById("<%=pass.ClientID%>");
            if(name.value=="")
            {
                
                document.getElementById("<%=req_name.ClientID%>").innerHTML = "Name Required";
                ret = false;
            }
            if(mob.value=="")
            {
               
                document.getElementById("<%=req_mob.ClientID%>").innerHTML = "Mobile Number Required";
                ret = false;
            }
             if(email.value=="")
            {
               
                document.getElementById("<%=req_email.ClientID%>").innerHTML = "E-Mail ID Required";
                ret = false;
             }
             if(uname.value=="")
            {
               
                document.getElementById("<%=req_uname.ClientID%>").innerHTML = "User Name Required";
                ret = false;
             }
            if(pass.value=="")
            {
               
                document.getElementById("<%=req_pass.ClientID%>").innerHTML = "Password Required";
                ret = false;
            }
            return ret;
        }
    </script> 
     <style>
        .mimg 
        {
            height:200px;
            width:200px;
        }
        .fimg 
        {
            height:50px;
            width:150px;
        
        }
        .img_td 
        {
            text-align:center;

        
        }
        .heading 
        {
            font-family:'Malgun Gothic';
            font-size:xx-large;
            font-weight:bolder;
        }
        .lab_head 
        {
            font-family:Arial;
            font-size:large;


        }
        .td_lab 
        {
            text-align:left;
            padding-left:100px;
            width:50%;
        }
        .td_txt 
        {
            text-align:left;
              width:50%;

        }
        .txt 
        {
            
                    width: 100%;
                    
                    padding: 12px 20px;
                    box-sizing: border-box;
                    border: 2px solid #ccc;
                    border-radius: 4px;
                    background-color: #f8f8f8;
                    resize: none;

        }
          .td_head {
           text-align:left;
           padding-left:30px;
        }
        .button
         {
           
                 background-color:#FCCE54; /* Green */
                 border: none;
                 color: white;
                 padding: 15px 32px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                margin: 4px 2px;
                cursor: pointer;
                border-radius: 8px;
        }
      
        .button:hover {
   background-color: white; 
    color: black; 
    border: 2px solid #FCCE54;
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
         
      </ul>
    </div>
  
  </div>
  </nav>

<div class="jumbotron text-center">
    <table width="100%">
       <tr><td><asp:Image ID="Image1" runat="server" ImageUrl="~/images/fra.jpg"/></td><td> <h1>SYSTEM TO ANALYSE FRAUD MOBILE APPLICATION</h1></td></tr>

   </table>
 <!-- <p>Happy to help!!</p>-->
</div>

<!-- Container (About Section) -->


<!-- Container (student section) -->
       <div style="text-align:center">

            <table width="80%">
            <tr><td colspan="2"><br /></td></tr>
            <tr><td colspan="2" class="td_head">
                <asp:Label ID="Label1" runat="server" Text="Registration" Font-Size="X-Large" CssClass="heading"></asp:Label></td></tr>
              <tr><td colspan="2"><hr /><br /></td></tr>
            <tr><td style="width:50%" class="td_lab">
                <asp:Label ID="Label2" runat="server" Text="Name" CssClass="lab_head"></asp:Label></td><td class="td_txt">
                    <asp:TextBox ID="name"  runat="server" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_name" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
              <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label3" runat="server" Text="Mobile Number" CssClass="lab_head"></asp:Label></td><td class="td_txt">
                    <asp:TextBox ID="mobno"  runat="server" CssClass="txt"></asp:TextBox>
                    <asp:Label ID="req_mob" runat="server" ForeColor="Red"></asp:Label>
                &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="mobno" ErrorMessage="Enter Valid Mobile Number" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="^[7-9]\d{9}$"></asp:RegularExpressionValidator>
                </td></tr>
              <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label4" runat="server" Text="E-Mail ID" CssClass="lab_head"></asp:Label></td><td class="td_txt">
                    <asp:TextBox ID="email" runat="server" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_email" runat="server" ForeColor="Red"></asp:Label>
                    &nbsp;<asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="email" ErrorMessage="Enter Valid E-Mail ID" Font-Size="Small" ForeColor="#FF3300" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                </td></tr>
              <tr><td colspan="2"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label5" runat="server" Text="Username" CssClass="lab_head"></asp:Label></td><td class="td_txt">
                    <asp:TextBox ID="uname"  runat="server" CssClass="txt"></asp:TextBox>
                    <asp:Label ID="req_uname" runat="server" ForeColor="Red"></asp:Label>
                    <asp:Label ID="Label7" runat="server" ForeColor="Red" Text="Username already exist !!!"></asp:Label>
                </td></tr>
            <tr><td colspan="2" style="height: 21px"><br /></td></tr>
            <tr><td class="td_lab">
                <asp:Label ID="Label6" runat="server" Text="Password" CssClass="lab_head"></asp:Label></td><td class="td_txt">
                    <asp:TextBox ID="pass"  runat="server" TextMode="Password" CssClass="txt"></asp:TextBox>
                    <br />
                    <asp:Label ID="req_pass" runat="server" ForeColor="Red"></asp:Label>
                </td></tr>
            <tr><td colspan="2"><br /></td></tr>
            <tr><td colspan="2" align="center">
                
                <asp:Button ID="Button1" runat="server" Text="Register" OnClientClick="return valid()" OnClick="Button1_Click" CssClass="button"/></td></tr>
        </table>
       </div>

        <!-- Container (Visitor Section) -->
    
        <div class="panel-footer" style="text-align:right;color:white; background-color: #48CFC1; font-family: Arial; font-size:small; padding-right:20px">SYSTEM TO ANALYSE FRAUD MOBILE APPLICATION</div>
<!-- Container (parent section) -->

       

        <!-- Container (Faculty section) -->
    
<!-- Container (admin section) -->
    </form>
</body>
</html>

