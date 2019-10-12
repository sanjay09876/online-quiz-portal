Newjsp1.jsp
<%--
 Document : index
 Created on : Feb 9, 2011, 6:50:54 PM
 Author : A
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Welcome to Online Examination</title>
 </head>
 <body bgcolor="cyan">
 <form name="index" action="newjsp.jsp" method="post">
 <center><h1><span><font color="red">Welcome to Online
Examination</font></span></h1>
 <br>
 <h2><u><span><font color="blue">Instructions to the
Candidates</font></span></u></h2>
 <br><h3><ol><li>Fill the correct Registration number.</li>
 <br><li>Enter your name.</li>
 <br><li>Read the questions carefully.</li>
 <br><li>No negative marking.</li></ol></h3>
 <br>
 <b>Enter your Register number</b>
 <input type="text" name="txt_reg">
 <b>Enter your Name</b>
 <input type="text" name="txt_name"><br><br>
 <input name ="submit" value="Submit" type="submit"/>
 </center>
 </form>
 </body>
</html>
