<%@ Page Title="" Language="C#" MasterPageFile="~/RoleManager.master" AutoEventWireup="true" CodeFile="Insert.aspx.cs" Inherits="Admin_Insert" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
               <div id="sidebar-collapse" class="col-sm-3 col-lg-2 sidebar">	 
		<ul class="nav menu">
			<li class="active"><a href="AdminHome.aspx"><span class="glyphicon glyphicon-dashboard"></span> Admin</a></li>
			<li><a href="UserList.aspx"><span class="glyphicon glyphicon-th"></span> User List</a></li>
			<li><a href="Article.aspx"><span class="glyphicon glyphicon-stats"></span>Articles</a></li>
			<li><a href="tables.html"><span class="glyphicon glyphicon-list-alt"></span> Tables</a></li>
			<li><a href="panels.html"><span class="glyphicon glyphicon-info-sign"></span> Alerts &amp; Panels</a></li>
		
			<li role="presentation" class="divider"></li>
			<li><a href="login.html"><span class="glyphicon glyphicon-user"></span> Login Page</a></li>
		</ul>
		<div class="attribution">More Templates <a href="http://www.cssmoban.com/" target="_blank" title="模板之家">模板之家</a> - Collect from <a href="http://www.cssmoban.com/" title="网页模板" target="_blank">网页模板</a></div>
	</div><!--/.sidebar-->
    <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">

            <div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">UserList</li>
			</ol>
		</div><!--/.row-->

            <div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Users Database</h1>
			</div>
		</div><!--/.row-->

		<div class="row">
			<div class="auto-style1">
				<div class="panel panel-default">
					<div class="panel-heading">Update Database</div>
					<div class="panel-body">
						<table data-toggle="table" data-url="tables/data1.json"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						    <thead>
						    
                                <asp:Label ID="Label1" runat="server" Text="UserName"></asp:Label>
                                  <br />
                                    <br />
                                <asp:TextBox ID="txtInput" runat="server" ></asp:TextBox>
                                   <br />
                                    <br />

                                 <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                                   <br />
                                    <br />
                                <asp:TextBox ID="txtPassword" runat="server"></asp:TextBox>
                                   <br />
                                    <br />
                                  <asp:Label ID="Label3" runat="server" Text="Prority"></asp:Label>
                                <br />
                                <br />
                            <asp:TextBox ID="txtPrority" runat="server"></asp:TextBox>
                                <br />
                                <br />
                                <asp:Button ID="Button1" runat="server" Text="Button"  OnClick ="Button1_Click"/>
                                
                                <asp:GridView ID="gvUsers" runat="server"></asp:GridView>
						     
						    </thead>
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	

         
    </div>	
</asp:Content>

