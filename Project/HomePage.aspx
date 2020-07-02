<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="HomePage" %>

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
</div>

<!-- Container (About Section) -->


<!-- Container (student section) -->
        <div id="student" class="container-fluid text-left">
            <div class="row">
                <div class="col-sm-8">
                    <h2>User Login</h2>
                    <p style="font-size: 110%;">The user can log in and ask any<br>
                        kind of information that is required.<br>
                        Kindly provide a proper login id.</p>
                </div>
                <div class="container-student text-left">
                    <div class="row">
                        <div class="col-sm-4">
                            <span class="form"></span>
                            <table>
                                <tr><td><br /></td></tr>
                                 <tr><td> <asp:TextBox ID="uname" placeholder="Enter username" runat="server" CssClass="txt"></asp:TextBox><br /></td></tr>
                                 <tr><td><br /></td></tr>
                                 <tr><td>  <asp:TextBox ID="pass" runat="server" TextMode="Password" placeholder="Enter password" CssClass="txt"></asp:TextBox> </td></tr>
                                 <tr><td><br /></td></tr>
                                 <tr><td style="text-align:center"><asp:Button ID="Button1" class="button" runat="server" Text="Login" OnClick="Button1_Click" /></td></tr>
                                 <tr><td><br /></td></tr>
                                 <tr><td> Not a Member ???&nbsp; <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Registration.aspx">Sign Up</asp:LinkButton></td></tr>
                                 <tr><td><br /></td></tr>
                            </table>
                       

                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Container (Visitor Section) -->
    

<!-- Container (parent section) -->

       

        <!-- Container (Faculty section) -->
    <div class="panel-footer" style="text-align:right;color:white; background-color: #48CFC1; font-family: Arial; font-size:small; padding-right:20px">SYSTEM TO ANALYSE FRAUD MOBILE APPLICATION</div>
<!-- Container (admin section) -->
    </form>
</body>
</html>