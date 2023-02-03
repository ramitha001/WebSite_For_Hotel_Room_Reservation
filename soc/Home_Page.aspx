<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home_Page.aspx.cs" Inherits="soc.Home_Page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Home Page </title>

    <link rel="stylesheet" href="css/Home_Page.css" />

</head>

<body>

    <header>
        <div class="wrapper">
           
            <div class="nav-bar">

            <ul class="nav-area-1">
                <li><a href="#">HOME</a></li>
                <li><a href="#">HOTELS</a></li>
                <li><a href="#">ROOMS</a></li>
                <li><a href="#">Contact</a></li>
            </ul>
            <ul class="nav-area-2">
                <li><img src="Images/user.png" width="15"; height="15" /></li>
                <li><a href="Login_Page.aspx" class="logintab">LOGIN</a></li>
            </ul>
            </div> 

            <div class="logo">
                <img src="Images/Home.jpg" alt="Home_page_wallpaper" />
            </div>

            
         

        <div class="welcome-text">  
        <h1>
            Click here to  <span>Room Reservation </span></h1>
            <a href="#">GET START</a>

        </div>
        
        <footer>
            <div class="footer-content">
                 <h3>DBI HOTEL RESERVATION COMPANY</h3>
                 <p> Debi is a hotel room reservation company that was established in the year 2004 in Thailand</p>

                 <ul class="socials">
                        <li><a href="#"><img src="Images/facebook.png" height="30px" /></a></li>
                        <li><a href="#"><img src="Images/instagram.png" height="30px" /></a></li>
                        <li><a href="#"><img src="Images/twitter.png" height="30px" /></a></li>
                        <li><a href="#"><img src="Images/linkedin.png" height="30px" /></a></li>
                        <li><a href="#"> <img src="Images/whatsapp.png" height="30px" /></a></li>
                 </ul>

            </div>
            <div class="footer-bottom">
                    <p>copyright &copy;2021 <a href="#">Ramitha Guruge (CL/HD.CSE/CMU/97/33)</a>  </p>
                    
                    <div class="footer-menu">
                    <ul>
                        <li><a href="">Home</a></li>
                        <li><a href="">About</a></li>
                        <li><a href="">Contact</a></li>
                        
                    </ul>
             </div>
            </div>
        </footer>
</div>
    </header>
    
</body>
</html>
