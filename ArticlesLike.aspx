<%@ Page Title="" Language="C#" MasterPageFile="~/Section.master" AutoEventWireup="true" CodeFile="ArticlesLike.aspx.cs" Inherits="ArticlesLike" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style3 {
            height: 0px;
        }
        .auto-style4 {
            height: 1.2em;
        }
    </style>
    

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     	<!-- Main -->
			<section id="main" class="wrapper style1">
				<header class="major">
					<h2>Beautiful Season</h2>
					<p>The Best Name I have heard</p>
				</header>
				<div class="container">
					<section>
						<h2>The Falling Love</h2>
						<a href="#" class="image fit"><img src="images/banner.jpg" alt="" /></a>
						<p>Vis accumsan feugiat adipiscing nisl amet adipiscing accumsan blandit accumsan sapien blandit ac amet faucibus aliquet placerat commodo. Interdum ante aliquet commodo accumsan vis phasellus adipiscing. Ornare a in lacinia. Vestibulum accumsan ac metus massa tempor. Accumsan in lacinia ornare massa amet. Ac interdum ac non praesent. Cubilia lacinia interdum massa faucibus blandit nullam. Accumsan phasellus nunc integer. Accumsan euismod nunc adipiscing lacinia erat ut sit. Arcu amet. Id massa aliquet arcu accumsan lorem amet accumsan commodo odio cubilia ac eu interdum placerat placerat arcu commodo lobortis adipiscing semper ornare pellentesque.</p>
						<p>Amet nibh adipiscing adipiscing. Commodo ante vis placerat interdum massa massa primis. Tempus condimentum tempus non ac varius cubilia adipiscing placerat lorem turpis at. Aliquet lorem porttitor interdum. Amet lacus. Aliquam lobortis faucibus blandit ac phasellus. In amet magna non interdum volutpat porttitor metus a ante ac neque. Nisi turpis. Commodo col. Interdum adipiscing mollis ut aliquam id ante adipiscing commodo integer arcu amet blandit adipiscing arcu ante.</p>
					</section>
					<hr class="major" />
					<div class="row">
						<div class="6u">
							<section class="special">
								<a href="#" class="image fit"><img src="images/pic01.jpg" alt="" /></a>
								<h3>Mollis adipiscing nisl</h3>
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
                    <div>
                           <hr class="major" />
                     
				<div class="inner" style="background:none">
					<header>
						<h2>Comment</h2>
					</header>
				   <br/>
                    <br />
                      <div class="box-title">Comments</div>
                      <div id="comment"></div>
                   
						<div class="field half first">
							<label for="name">Name</label>
							<input type="text" name="name" id="CommentUser"  style="width:500px" onfocus="this.className='focus postvalidate'" onblur="this.className='blur postvalidate'" />
						</div>
						<div class="field half">
							<label for="email">Identifying Code</label>
                           
							<input type="text" name="text" id="CommentValidate"  style="width:500px;float:left"/>&nbsp;&nbsp<span><img id='CommentValidateImages' style='cursor:pointer;height:40px;width:120px; ' src="about:blank" onerror="this.onerror=null;this.src='VerifyCode.aspx?s='+Math.random();" alt="验证码" title="看不清楚?换一张" onclick="src='VerifyCode.aspx?s='+Math.random()"  /></span>
					 
                            </div>
						<div class="field">
							<label for="message"></label>
                            <br/>
							<textarea placeholder="Comment" name="message" id="CommentText" rows="6" style="width:650px"  onfocus="this.className='focus posttext'" onblur="this.className='blur posttext'"></textarea>
						</div>
                    <br />
						<ul class="actions">
							<li><input type="button"  value='comment' class="alt"  style="width:200px"  onclick="SendComment(1)" id="CommentSubmit" /></li>
						</ul>
				</div>
			 
                    </div>
				</div>
			</section>
    <script type="text/javascript">
//<![CDATA[
	GetComment(1,1);
//]]>
</script>
     <script type="text/javascript" src="js/jquery.js"></script>
    <script type="text/javascript" src="js/plu.js"></script>
</asp:Content>

