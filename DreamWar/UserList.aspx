<%@ Page Title="" Language="C#" MasterPageFile="~/RoleManager.master" AutoEventWireup="true" CodeFile="UserList.aspx.cs" Inherits="UserList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            position: relative;
            min-height: 1px;
            float: left;
            width: 100%;
            left: 0px;
            top: 0px;
            height: 209px;
            padding-left: 15px;
            padding-right: 15px;
        }
   
   .GridViewStyle
{  border-right: 2px solid #A7A6AA;
   border-bottom: 2px solid #A7A6AA;
   border-left: 2px solid white;
  border-top: 2px solid white;
  padding: 4px;
}
.GridViewStyle.a
{
 color: #FFFFFF;
}
.GridViewHeaderStyle.th
{
 border-left: 1px solid #EBE9ED;
  border-right: 1px solid #EBE9ED;
}
.GridViewHeaderStyle
{
  background-color: #5D7B9D;
  font-weight: bold;
 color: White;
 text-align:center;
}
.GridViewFooterStyle
{
 background-color: #5D7B9D;
font-weight: bold;
 color: White;
}
.GridViewRowStyle
{
 background-color: #F7F6F3;
 color: #333333;
}
.GridViewAlternatingRowStyle
{
 background-color: #FFFFFF;
  color: #284775;
}
.GridViewRowStyle.td, .GridViewAlternatingRowStyle.td
{
  border: 1px solid #EBE9ED;
}
.GridViewSelectedRowStyle
{
  background-color: #E2DED6;
 font-weight: bold;
 color: #333333;
}
.GridViewPagerStyle
{
    background-color: #284775;
   color: #FFFFFF;
}
.GridViewPagerStyle.table
{
   margin: 0 auto 0 auto;
}
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server" >
    <br>
    <hr />
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
		<div class="attribution">Copyright @2017 <a href="http://www.cssmoban.com/" target="_blank"  ">Starrier</a> Designer <a href=" #"   target="_blank">Starrier</a></div>
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
					<div class="panel-heading">Advanced Table</div>
					<div class="panel-body">
						<table data-toggle="table" data-url="tables/data1.json"  data-show-refresh="true" data-show-toggle="true" data-show-columns="true" data-search="true" data-select-item-name="toolbar1" data-pagination="true" data-sort-name="name" data-sort-order="desc">
						    <thead>
						    
                                <asp:TextBox ID="txtInput" runat="server"></asp:TextBox>&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnQueryAll" runat="server" Text="QueryAll"  OnClick ="btnQueryAll_Click"/> &nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnFuzzy" runat="server" Text="Fuzzy"  OnClick="btnFuzzy_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Insert" runat="server" Text="Update"  OnClick="Insert_Click"/>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="btnUpdate" runat="server" Text="Insert" OnClick="btnUpdate_Click" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <asp:Button ID="Delete" runat="server" Text="Delete"  OnClick="Delete_Click" />&nbsp;&nbsp;&nbsp;
                                <br>
                                <hr />
                                <asp:GridView ID="gvUsers" runat="server" CellPadding="5" CellSpacing="5" AutoGenerateColumns="false" RowStyle-CssClass="text-center" HeaderStyle-HorizontalAlign="Center" HorizontalAlign="Center">
                                    <FooterStyle CssClass="GridViewFooterStyle" HorizontalAlign="Center"/>
                                    <RowStyle CssClass="GridViewRowStyle" Font-Size="Larger" HorizontalAlign="Center"/>   
                                    <SelectedRowStyle CssClass="GridViewSelectedRowStyle"/>
                                    <PagerStyle CssClass="GridViewPagerStyle"/>
                                    <AlternatingRowStyle CssClass="GridViewAlternatingRowStyle"/>
                                    <HeaderStyle CssClass="GridViewHeaderStyle"/>
                                    <Columns>
                                        <asp:BoundField DataField="UserName" HeaderText="UserName" HeaderStyle-HorizontalAlign="Center">
                                    <HeaderStyle HorizontalAlign="Center"></HeaderStyle>

                                            <ItemStyle Height="50px" Width="500px" />
                                        </asp:BoundField>
                                         <asp:BoundField DataField="Password" HeaderText="Password">
                                            <ItemStyle Height="50px" Width="500px" />
                                        </asp:BoundField>
                                         <asp:BoundField DataField="Prority" HeaderText="Prority">
                                            <ItemStyle Height="50px" Width="500px" />
                                        </asp:BoundField>
                                    </Columns>

                                </asp:GridView>
						     
						    </thead>
						</table>
					</div>
				</div>
			</div>
		</div><!--/.row-->	

         
    </div>	
		
</asp:Content>

