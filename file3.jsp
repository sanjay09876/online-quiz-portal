
<%@page import="com.sun.java.swing.plaf.windows.resources.windows_es"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
 "http://www.w3.org/TR/html4/loose.dtd">
<html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
 <title>Exam Report</title>
 </head>
 <body bgcolor="cyan">
 <center><h1>Your Report Card</h1></center>
<%@ page language="java" %>
<%@ page import ="java.sql.*" %>
<%
Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
String sTable = "exam";
String sSql = "SELECT * FROM " + sTable + "";
String database = "jdbc:odbc:sDBQ";
Connection cn = null;
Statement st = null;
ResultSet rs = null;
try {
cn = DriverManager.getConnection( database ,"sa","");
st = cn.createStatement();
rs = st.executeQuery( sSql );
ResultSetMetaData rsmd = rs.getMetaData();
String s1,s2,s3,s4;
int i=1;
int correct=0,incorrect=0,total=0;
out.println("<h2><br><br><center><table border=1 cellpadding=2
cellspacing=2><tr><th>Question</th><th>Your Answer</th><th>Correct
Answer</th><th>Status</th></tr>");
while(rs.next())
{
total++;
s1 = rs.getString(1);
s2 = request.getParameter("opt"+i);
s3 = rs.getString(6);
if(s2.equals(s3))
{ s4="Correct";
 correct++;
}
else
{ s4="Incorrect";
 incorrect++;
}
out.println("<tr><td>"+s1+"</td><td>"+s2+"</td><td>"+s3+"</td><td>"+s4+"</td></tr>");
www.studentsfocus.com
i++;
}
out.println("</table><br><br><table><b><tr><td>Correct
Answers</td><td>"+correct+"</td></tr>");
out.println("<tr><td>Incorrect Answers</td><td>"+incorrect+"</td></tr>");
out.println("<tr><td>Total
Questions</td><td>"+total+"</td></tr></table></b></center></h2>");
}
 finally {
try { if( null != rs ) rs.close(); } catch( Exception ex ) {}
try { if( null != st ) st.close(); } catch( Exception ex ) {}
try { if( null != cn ) cn.close(); } catch( Exception ex ) {}
}
%>
 </body>
</html>