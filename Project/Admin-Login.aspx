<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Admin-Login.aspx.cs" Inherits="Admin_Login" %>

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
  
 <!-- <p>Happy to help!!</p>-->
</div>

<!-- Container (About Section) -->


<!-- Container (student section) -->

        <!-- Container (Visitor Section) -->
    

<!-- Container (parent section) -->

       

        <!-- Container (Faculty section) -->
    
<!-- Container (admin section) -->
    <div id="admin" class="container-admin text-left">
        <div class="row">
            <div class="col-sm-8">
                <span class="glyphicon glyphicons-user logo"></span>
                <h2>About ADMIN </h2>
                <p>
                    Hey there! i'm your superman.<br>
                    Always to the rescue.<br>
                    *Well, most of thr times :P*
            </div>
            <div id="faculty" class="container-faculty text-left">
                <div class="row">
                    <div class="col-sm-4">
                        <span class="form"></span>
                        <table>
                            <tr><td colspan="2"><br /></td></tr>
                            <tr><td colspan="2"> <asp:TextBox ID="id" runat="server" placeholder="Admin ID" CssClass="txt"></asp:TextBox></td></tr>
                       <tr><td colspan="2"><br /></td></tr>
                            <tr><td colspan="2">   <asp:TextBox ID="apass" TextMode="Password" runat="server" placeholder="Admin Password" CssClass="txt"></asp:TextBox></td></tr>
                              <tr><td colspan="2"><br /></td></tr>
                             <tr><td colspan="2" style="text-align:center">  <asp:Button ID="Button5" class="button" runat="server" Text="Login" OnClick="Button5_Click" /></td></tr>
                             <tr><td colspan="2"><br /></td></tr>
                        </table>
                      
                      
                     
                    </div>
                </div>
            </div>
        </div>
    </div>
        <div class="panel-footer" style="text-align:right;color:white; background-color: #48CFC1; font-family: Arial; font-size:small; padding-right:20px">SYSTEM TO ANALYSE FRAUD MOBILE APPLICATION</div>
    </form>
</body>
</html>
