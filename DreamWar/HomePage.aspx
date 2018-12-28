<%@ Page Language="C#" AutoEventWireup="true" CodeFile="HomePage.aspx.cs" Inherits="_Default"  %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
   <!-- Scripts -->
	<script src="js/jquery.min.js"></script>
    <script src="js/jquery.scrolly.min.js"></script>
	<script src="js/skel.min.js"></script>
	<script src="js/util.js"></script>
	<script src="js/main.js"></script>
    <script src="js/ripple.min.js" charset="UTF-8"></script>
	<!--CSS-->	
    <link rel="stylesheet" href="css/Header.css" />
     <link rel="stylesheet" href="css/Banner.css" />
     <link rel="stylesheet" href="css/Footer.css" />
     <link rel="stylesheet" href="css/Menu.css" />
     <link rel="stylesheet" href="css/main.css" />
    
    <script type="text/javascript">
    new Ripple({
        opacity : 0.6,  //水波纹透明度
        speed : 1,      //水波纹扩散速度
        bgColor : "#fff", //水波纹颜色
        cursor : true  //是否显示手型指针
    })
</script>
   
</head>
<body>
    <form id ="form1" runat="server">
   	<!-- Header -->
			<header id="header">
				<nav class="left">
					<a href="#menu" data-ripple="ripple"><span>Menu</span></a>
				</nav>
				<a href="HomePage.aspx" class="logo">DreamWar</a>
				<nav class="right">
                   <input type="button"  data-ripple="ripple" id ="Login" runat="server" onserverclick="Login_ServerClick" class="button alt" value="Login"/> 
				</nav>
			</header>

		<!-- Menu -->
			<nav id="menu" data-ripple="ripple">
				<ul class="links">
					<li><a href="HomePage.aspx">Home</a></li>
					<li><a href="ArticleTypes.aspx">Articals</a></li>                
					<li><a href="Writer.aspx">Write</a></li>
                    <li><a href="www.starrier.net">Starrier</a></li>
                    <li><a href ="ArticleTypes.aspx">ArticleTypes</a></li>
                    <li><a href="Index.aspx">Index</a></li>
                    <li><a href="Introduce.aspx">Introduce</a></li>
				</ul>
				<ul class="actions vertical">
					<li><a href="#" class="button fit">Login</a></li>
				</ul>
			</nav>

    	<!-- Banner -->
			<section id="banner">
				<div class="inner">
					<h2>This is DreamWar</h2>
					<p>A Fighting with Writing <a href="#"> </a></p>
					<ul class="actions">
						<li><a href="Regist.aspx" class="button big special">Sign Up</a></li>
						<li><a href="#elements" class="button big alt">Learn More</a></li>
					</ul>
				</div>
			</section>
		
    <section id="one" class="wrapper">
				<header class="major">
					<h2 style="text-align:center">Ipsum feugiat consequat</h2>
					<p style="text-align:center">Tempus adipiscing commodo ut aliquam blandit</p>
				</header>
				<div class="container">
					<div class="row">
						<div class="4u">
							<section class="special box">
								<i class="icon fa-area-chart major"></i>
								<h3>Justo placerat</h3>
								<p>Eu non col commodo accumsan ante mi. Commodo consectetur sed mi adipiscing accumsan ac nunc tincidunt lobortis.</p>
							</section>
						</div>
						<div class="4u">
							<section class="special box">
								<i class="icon fa-refresh major"></i>
								<h3>Blandit quis curae</h3>
								<p>Eu non col commodo accumsan ante mi. Commodo consectetur sed mi adipiscing accumsan ac nunc tincidunt lobortis.</p>
							</section>
						</div>
						<div class="4u">
							<section class="special box">
								<i class="icon fa-cog major"></i>
								<h3>Amet sed accumsan</h3>
								<p>Eu non col commodo accumsan ante mi. Commodo consectetur sed mi adipiscing accumsan ac nunc tincidunt lobortis.</p>
							</section>
						</div>
					</div>
				</div>
			</section>

    	
		<!-- Two -->
			<section id="two" class="wrapper style2" style="background-color:#f1ecec" >
				<header class="major">
					<h2 style="text-align:center">Commodo accumsan aliquam</h2>
					<p style="text-align:center">Amet nisi nunc lorem accumsan</p>
				</header>
				<div class="container">
					<div class="row">
						<div class="6u">
							<section class="special">
								<a href="#" class="image fit"><img src="images/pic01.jpg" alt="" /></a>
								<h3 style="text-align:center">Mollis adipiscing nisl</h3>
								<p>Eget mi ac magna cep lobortis faucibus accumsan enim lacinia adipiscing metus urna adipiscing cep commodo id. Ac quis arcu amet. Arcu nascetur lorem adipiscing non faucibus odio nullam arcu lobortis. Aliquet ante feugiat. Turpis aliquet ac posuere volutpat lorem arcu aliquam lorem.</p>
								<ul class="actions">
									<li><a href="#" class="button alt">Learn More</a></li>
								</ul>
							</section>
						</div>
						<div class="6u">
							<section class="special">
								<a href="#" class="image fit"><img src="images/pic02.jpg" alt="" /></a>
								<h3>Neque ornare adipiscing</h3>
								<p>Eget mi ac magna cep lobortis faucibus accumsan enim lacinia adipiscing metus urna adipiscing cep commodo id. Ac quis arcu amet. Arcu nascetur lorem adipiscing non faucibus odio nullam arcu lobortis. Aliquet ante feugiat. Turpis aliquet ac posuere volutpat lorem arcu aliquam lorem.</p>
								<ul class="actions">
									<li><a href="#" class="button alt">Learn More</a></li>
								</ul>
							</section>
						</div>
					</div>
				</div>
			</section>


			<!-- Footer -->
			<footer id="footer">
				<div class="container">
					<div class="row double">
						<div class="6u">
							<div class="row collapse-at-2">
								<div class="6u">
									<h3>Last</h3>
									<ul class="alt">
										<li><a href="#">Little Red Riding Hood</a></li>
										<li><a href="#">Snow White</a></li>
										<li><a href="#">The Frog Price</a></li>
										<li><a href="#">Aquamarine</a></li>
									</ul>
								</div>
								<div class="6u">
									<h3>Classsical</h3>
									<ul class="alt">
								    	<li><a href="#">Iron Man</a></li>
										<li><a href="#">The Little Prince</a></li>
										<li><a href="#">The Worderful Wizard Of OZ</a></li>
									</ul>
								</div>
							</div>
						</div>
						<div class="6u">
							<h3>Recommand</h3>
							<p> Flipped</p>	
                            <p>The House On Mango Street</p>					 
						</div>
					</div>
					<ul class="copyright">
						<li style="color: #000000">&copy;  Copyright ©2017  Starrier.All rights reserved.</li>
						<li style="color: #000000">Design: <a href="www.stattier.net">Starrier</a></li>
					 
					</ul>
				</div>
			</footer>
 </form>
</body>
</html>
