<%@ Page Title="" Language="C#" MasterPageFile="~/RoleManager.master" AutoEventWireup="true" CodeFile="ModifyPwd.aspx.cs" Inherits="Member_ModifyPassword" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   

    <div class="row">
		<div class="col-xs-10 col-xs-offset-1 col-sm-8 col-sm-offset-2 col-md-4 col-md-offset-4">
			<div class="login-panel panel panel-default">
				<div class="panel-heading">Modify  Password!</div>
				<div class="panel-body">
				 
						<fieldset>
							<div class="form-group">
						<input type="password" id ="txtOld"  runat="server" placeholder="Confirm Password" class="form-control"/>
							</div>
							<div class="form-group">
							
                                	<input type="password"  id="txtChange" runat="server"  placeholder="Old Password" class="form-control"/>
							</div>
							<div class="checkbox">
								<label>
									
								</label>
                                
							</div>
						  <div>
                              <input id="BtnSubmit" class="btn btn-primary" type="button" value="Modify" runat="server" onserverclick="BtnSubmit_ServerClick" style="width:486px"/>
						  </div>
						</fieldset>
					 
				</div>
			</div>
		</div><!-- /.col-->
	</div><!-- /.row -->	
</asp:Content>

