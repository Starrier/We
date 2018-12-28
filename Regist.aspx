<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Regist.aspx.cs" Inherits="Regist" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 959px;
            height: 600px;
            margin-left: 355px;
            margin-top: 38px;
        }
        .auto-style2 {
            width: 100%;
            height: 603px;
        }
        .auto-style3 {
            width: 515px;
        }
        .auto-style4 {
            width: 100%;
            height: 593px;
        }
        .auto-style6 {
            height: 34px;
        }
        .auto-style7 {
            width: 306px;
            height: 34px;
            margin-left: 8px;
        }
        .auto-style8 {
            height: 87px;
        }
        .auto-style9 {
            width: 307px;
            height: 34px;
            margin-left: 8px;
        }
        .auto-style10 {
            height: 68px;
        }
        .auto-style11 {
            width: 306px;
            height: 34px;
            margin-left: 9px;
        }
        .auto-style14 {
            height: 80px;
        }
        .auto-style15 {
            width: 306px;
            height: 40px;
        }
        .auto-style16 {
            height: 67px;
        }
        a{
            text-decoration:none;
        }
        .auto-style17 {
            height: 18px;
            margin-left: 461px;
            margin-top: 0px;
             width: 306px;
            height: 34px;
            margin-left: 8px;
        }
    </style>

    <script type="text/javascript">
        function loadXMLDoc() {
            if (document.getElementById("txtUserName").value == "") {
                document.getElementById("accDiv").innerHTML = "用户名不能为空";
                return;
            }
            var xmlHttp;
            if (window.XMLHttpRequest) { // code for IE7+
                xmlHttp = new XMLHttpRequest();
            }
            else { // code for IE5/IE6
                xmlHttp = new ActiveXObject("Microsoft.XMLHTTP");
            }

            xmlHttp.onreadystatechange = function () {
                if (xmlHttp.readyState == 4 && xmlHttp.status == 200) {
                    //document.getElementById("myDiv").innerHTML=xmlHttp.responseText;
                    if (xmlHttp.responseText == "true") {
                        document.getElementById("accDiv").innerHTML = "用户名不可用";
                    }
                    else {
                        document.getElementById("accDiv").innerHTML = "用户名可用";
                    }
                }
            }
            var a = document.getElementById("txtUserName").value;
            // get
            xmlHttp.open("GET", "validate.aspx?account=" + a + "&random=" + Math.random, true);
            xmlHttp.send();
        }
        function delData() {
            document.getElementById("txtUserName").value = "";
            document.getElementById("accDiv").innerHTML = "";
        }

    </script>
    <script type="text/javascript">
        var checked = document.getElementById("checked")
        var register = document.getElementById("btn_submit")
        register.onclick = function () {
            if (checked.checked == true) {
            }
            else {
                alert("请勾选注册协议");
                return false
            }
        }
</script>
 
</head>
<body style="height: 743px ; background-image:url(images/regist.jpg);background-size:cover"   >
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<h1 style="text-align:center; font-size: 40px; font-family: 'Brush Script MT'; color: #666666;"><a href="HomePage.aspx" style="text-align:center">DreamWar</a></h1>
    <form id="form1" runat="server" >
    <div >
    
        <div class="auto-style1">
            <table class="auto-style2">
                <tr>
                    <td class="auto-style3" style=" opacity:0.7;filter:alpha(opacity=70);">
                        <table class="auto-style4"  >
                            <tr>
                                <td class="auto-style6">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; </td>
                            </tr>
                            <tr>
                                <td class="auto-style8">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input id="txtUserName" class="auto-style7" type="text" placeholder="UserName" runat="server" onblur="loadXMLDoc()" onfocus="delData()"/>&nbsp;<span id="accDiv" style="font-size:larger"  ></span></td>
                            </tr>
                            <tr>
                                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input id="txtPassword" class="auto-style9" type="password" placeholder="Password" runat="server" /></td>
                            </tr>
                            <tr>
                                <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input id="txtConfirmation" class="auto-style11" type="password" placeholder="Confirmation" runat="server"/>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style10">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input id="checked" type="checkbox" />&nbsp;<a href="iteams.aspx"> agree regist with items</a></td>
                            </tr>
                            <tr>
                                <td class="auto-style16">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <input id="btn_submit" class="auto-style15" type="button" value="Sign up" runat="server" onserverclick="btn_submit_ServerClick"/></td>
                            </tr>
                            <tr>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                    <asp:HyperLink ID="HyperLink1" runat="server"><a href="Login.aspx">Login</a> </asp:HyperLink>
                                    &nbsp;</td>
                            </tr>
                            <tr>
                                <td style="font-size: medium">&nbsp; Copyright ©2017 Starrier.All rights reserved&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td style="background-image:url()"></td>
                     
                </tr>
            </table>
        </div>
    
    </div>
    </form>
</body>
</html>
