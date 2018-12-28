<%@ Page Title="" Language="C#" MasterPageFile="~/RoleManager.master" AutoEventWireup="true" CodeFile="UpInformation.aspx.cs" Inherits="Member_FileUp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active"> Infromation </li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Personal Infromation</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading"> Add Information</div>
					<div class="panel-body">
						<div class="col-md-6">
						
							
								<div class="form-group">
									<label>UserName</label>
									<input class="form-control" placeholder="UserName" id="txtName" runat="server">
								</div>
																
								<div class="form-group">
									<label>Password</label>
                                    
									<input type="password" class="form-control" placeholder="Password" runat="server" id="txtPassword">
								</div>
								
								<div class="form-group checkbox">
								  
								  
								</div>
																
							
								
								<div class="form-group">
									<label>Individual Resume</label>
									<textarea class="form-control" rows="3" id="txtInfromation" runat="server"></textarea>
								</div>
								
								<label>Contact Information</label>
								<div class="form-group has-success">
									<input class="form-control" placeholder="QQ" id="txtQQ" runat="server" type="text">
								</div>
								<div class="form-group has-warning">
									<input class="form-control" placeholder="Email" id="Email" type="email" runat="server">
								</div>
								<div class="form-group has-error">
									<input class="form-control" placeholder="Tele." type="tel" runat="server" id="txtTel">
								</div>
								
							</div>
							<div class="col-md-6">
							
								<div class="form-group">
									<label>Articles  Type</label>
									<div class="checkbox">
										<label>
											<input type="checkbox" value="">Fantasy
										</label>
									</div>
									<div class="checkbox">
										<label>
											<input type="checkbox" value="">Fairy
										</label>
									</div>
									<div class="checkbox">
										<label>
											<input type="checkbox" value="">Epic War
										</label>
									</div>
									<div class="checkbox">
										<label>
											<input type="checkbox" value="">Narrate World
										</label>
									</div>
								</div>
								
							 
								
								<div class="form-group">
									<label>Sex</label>
									<select class="form-control"  id="sex">
										<option>Male</option>
										<option>Female</option>
										 
									</select>
								</div>
								
							 
								
								<button type="submit" class="btn btn-primary" runat="server" onserverclick="Unnamed_ServerClick">Submit Button</button>
								<button type="reset" class="btn btn-default">Reset Button</button>
							</div>
					 
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->
		
	</div><!--/.main-->


</asp:Content>

