<%@ Page Title="" Language="C#" MasterPageFile="~/Section.master" AutoEventWireup="true" CodeFile="FeedBack.aspx.cs" Inherits="FeedBack" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <!-- Contact -->
    		<link rel="stylesheet" href="css_section/main.css" />
			<section id="contact" class="wrapper">
				<div class="inner split">
					<section class="auto-style2">
						<h2 class="auto-style1">Orci malesuada</h2>
						<p>Morbi pharetra vitae felis placerat pharetra. Nulla risus orci, dapibus id malesuada et nec, malesuada quis pellentesque eget.</p>
					 
							<div class="row uniform">
								<div class="6u 12u$(xsmall)">
									<input id="UserName" runat="server"    name="name" placeholder="Name" type="text"/>
								</div>
								<div class="6u$ 12u$(xsmall)">
									<input name="email" placeholder="Email" type="email" runat="server" id="Email"/>
								</div>
								<div class="12u$">
									<textarea name="message" placeholder="Message" rows="4" runat="server" id="textArea"></textarea>
 								</div>
 							</div>
 							<ul class="actions">
 								<li><input class="alt" value="Send message" type="submit" runat="server"  id="submit"/></li>
 							</ul>
 						 
					</section>
					<section>
                      
					 <h4>This  is DreamWar </h4>
                        <h1>Welcom to feedback !</h1>
                        <input type="button" runat="server" onserverclick="Unnamed_ServerClick"  value="nice"/>
                        
					</section>
				</div>
			</section>
</asp:Content>

