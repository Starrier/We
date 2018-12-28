<%@ Page Title="" Language="C#" MasterPageFile="~/RoleManager.master" AutoEventWireup="true" CodeFile="UpdateFile.aspx.cs" Inherits="Member_UpdateFile" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style type="text/css">
        .auto-style1 {
            display: block;
            width: 100%;
            height: 246px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: none;
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            border: 1px solid #eee;
            padding: 6px 12px;
            background-color: #fff;
            background-image: none;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
  
     <div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><span class="glyphicon glyphicon-home"></span></a></li>
				<li class="active">Articles</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Articles Update</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">Context</div>
					<div class="panel-body">
						<div class="col-md-6">														
								<input type="file"  value="Search" style="margin-left:-18px;filter:alpha(opacity=0); " id="File"/> 						
							</div>
                        <br />
						 	<div class="form-group">
									<label style="font-family: 华文行楷; font-size: xx-large"   >Articles War</label>
                                 <br />
                                   <input  type="text" id="txtTitle" runat="server" placeholder="Title"  style="padding-left:50px;"/>
                                 <br />
                                 <div>
                                     <hr />
                                 </div>
									<textarea class="auto-style1" id="txtInfromation" runat="server" placeholder="Context"></textarea>
                                 <hr />

                                    <input  type="button" id="submit" runat="server" value="Submit" style="padding-right:50px" />
								</div>
						 
					</div>
                    
				</div>

			</div><!-- /.col-->
		</div><!-- /.row -->
		
	</div><!--/.main-->


    
</asp:Content>

