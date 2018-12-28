<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Login.aspx.cs" Inherits="Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
<title>Login</title>
<link rel="stylesheet" type="text/css" href="css/JoynBackground.css"/>
<link rel="stylesheet" type="text/css"  href="css/login.css" />
<script src="js/jquery-1.9.0.min.js"></script>
<script type="text/javascript" src="js/JoynBackground.js"></script>
<script>
    $(document).ready(function () {
        JoynBackground(3, 5000);

    })
</script>
<style>
#zhushi{ 
  bac  kground-image: url(images/del.png);
    text-align: center;
    margin: 300px auto;
    padding: 20px; 
    width: 60%; 
    border-radius: 30px;
}
a{
   text-decoration:none;
}
</style>
</head>

<body>
 <form runat="server" id="form1">

<div>
	<div style="margin:0 auto;border:1px none #000;width:300px;height:100px">
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <a href="HomePage.aspx" style ="color: #999999; font-size: 53px; font-family: 'Blackadder ITC';text-align:center;height:2000px;width:500px" >DreamWar</a>
	</div>
    <div class="inner-container">
        <div class="box">
            <h1>Login</h1>
            <input id="txtUserName" type="text" placeholder="Username" runat="server" />
            <input id="txtpPssword" type="password" placeholder="Password" runat="server" />
            <button id="submit" runat="server" onserverclick="submit_ServerClick">Login</button>
            <p><a href="GetPassword.aspx" style="color: #FFFFFF">Foget Password!</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  <a href="Regist.aspx" style="color: #FFFFFF">Sign up</a> </p>
        </div>
    </div>


 <footer style="position:absolute;bottom:0;width:100%;height:100px;"> 
     <div style="text-align:center;position:relative;bottom:0px;margin:0;float:left;width:100%">Copyright ©2017  Starrier.All rights reserved. Disign: Starrier</div>
 </footer>
</div>
	

 
<div id="JoynBackground">
	<img src ="images/image_login/1.jpg" name="1"/>
    <img src ="images/image_login/2.jpg" name="2"/>
    <img src ="images/image_login/3.jpg" name="3"/>
</div>
<!-- 背景 -->
     </form>
</body>
</html>