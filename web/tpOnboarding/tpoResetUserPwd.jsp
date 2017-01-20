<%@page import="com.mss.tpo.util.AppConstants"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport"    content="width=device-width, initial-scale=1.0">
        <meta name="description" content="">
        <meta name="author"      content="TP On-boarding">
        <title>TP On-boarding</title>
        <link rel="stylesheet" media="screen" href="http://fonts.googleapis.com/css?family=Open+Sans:300,400,700">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <link rel="stylesheet" href='<s:url value="/includes/css/bootstrap/bootstrap-theme.css"/>' media="screen" >
        <link rel="stylesheet" href='<s:url value="/includes/css/bootstrap/bootstrap.min.css"/>'>
        <link rel="stylesheet" href='<s:url value="/includes/css/bootstrap/main.css"/>'>
        <script>
            function doOnLoad() {
                $("#services").addClass("active");
            }
            function checkUserPwd(){
                var uservalue=document.getElementById("contactName").value;
                var password=document.getElementById("regpassword").value;
                if(uservalue=="-1")
                {
                    document.getElementById("tpoResultMessage").innerHTML="<font color=red> Please select a user from the list </font>";
                    return false;    
                }
                if(password=="")
                {
                    document.getElementById("tpoResultMessage").innerHTML="<font color=red> Please enter password </font>";
                    return false;  
                }
                    
            }
        function showPwdBox()
        {
            document.getElementById("pwdBox").style.display ='block';
            var uservalue=document.getElementById("contactName").value;
            if(uservalue=="-1")
            {
                document.getElementById("pwdBox").style.display ='none'; 
            }
        }
        </script>
    </head>
    <body class="home" onload="doOnLoad()">
        <div>
            <s:include value="../includes/template/header.jsp"/>
        </div>
        <!-- Header -->
        <header id="head">
            <div class="container">
                <h2 class="thin"><b>Reset User Password</b></h2>
            </div>
        </header>
        <!-- /Header -->
        <!-- Intro -->
        <div class="container">
            <!--  <h3>Trading Partner</h3> -->		
            <!-- Highlights - jumbotron -->
            <div class="jumbotron">
                <div class="container">
                    <center>
                        <%
                            if (session.getAttribute(AppConstants.REQ_RESULT_MSG) != null) {
                                String reqponseString = session.getAttribute(AppConstants.REQ_RESULT_MSG).toString();
                                out.println(reqponseString);
                                session.setAttribute(AppConstants.REQ_RESULT_MSG, null);
                            }
                        %>
                    </center>
                    <div id="tpoResultMessage"></div>
                    <s:form action="doTpoResetUserPwd" method="post" cssClass="contact-form" name="doTpoResetUserPwd" id="doTpoResetUserPwd" theme="simple">
                        <div class="row">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>User Name<span class="text-danger">*</span></label>
                                    <s:select headerKey="-1" headerValue="--select--" cssClass="form-control" list="myUsersList" name="contactName" id="contactName" value="%{contactName}" onchange="showPwdBox()"/>
                                </div>
                            </div>
                        </div>
                        <div class="row" id="pwdBox" style="display: none">
                            <div class="col-sm-4">
                                <div class="form-group">
                                    <label>Password<span class="text-danger">*</span></label>
                                    <s:password cssClass="form-control" name="regpassword" id="regpassword" placeholder="Password" onchange="fieldLengthValidator(this);"/>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12">
                                <div class="col-md-1 pull-right"> <s:submit value="Update" cssClass="btn btn-primary" onclick="return checkUserPwd();"/></div>
                            </div>
                        </div>
                    </s:form>
                </div>
            </div>
            <!-- /Highlights -->
        </div>
        <footer class="footer">
            <div class=" ">
                <s:include value="../includes/template/footer.jsp"/>
            </div>
        </footer>
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
        <script src="http://netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
        <script language="JavaScript" src='<s:url value="/includes/js/headroom.min.js"></s:url>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/jQuery.headroom.min.js"></s:url>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/template.js"></s:url>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/GeneralAjax.js"/>'></script>
        <script language="JavaScript" src='<s:url value="/includes/js/tpOnbordingDeatails.js"/>'></script>
    </body>
</html>