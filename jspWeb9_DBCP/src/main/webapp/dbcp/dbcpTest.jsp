
<%@page import="org.apache.tomcat.dbcp.dbcp2.BasicDataSource"%>
<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ page import="
    javax.naming.*,
    javax.sql.*,
    org.apache.tomcat.dbcp.*"
%>
<%
// org.apache.commons.dbcp.*


 Context initContext = new InitialContext();
 Context envContext  = (Context)initContext.lookup("java:/comp/env");
 DataSource ds   = (DataSource)envContext.lookup("jdbc/noticeXe");
 
 BasicDataSource bds = (BasicDataSource)ds;
 String dbname  = "hr";
 
 try {
   int bdsNumActive  = bds.getNumActive();
   int bdsMaxActive  = 5;
   int bdsNumIdle   = bds.getNumIdle();
   int bdsMaxWait  = 5;
  
   String fontcolor  = "";
  
   if (bdsNumActive <= 400) {
    fontcolor = "<font color='green'>";
   } else if (bdsNumActive > 400 && bdsNumActive <= 500) {
    fontcolor = "<font color='orange'>";
   } else {
    fontcolor = "<font color='red'>";
   }
%>
   <table cellpadding='3' cellspacing='0' border='1'>
    <tr>
     <td colspan='4' align='center'><b><%=dbname%></b> DataSource</td>
    </tr>
    <tr>
     <td height='24' align='center' alt='connections that are processing'># Active Connections</td><!-- 커넥션 + -->
     <td height='24' align='center' alt='total size of pool'>Maximum Active Connections</td>
     <td height='24' align='center' alt='connections that are idle in the pool'># of Idle Connections</td>
     <td height='24' align='center'>Maxium Wait period before timeout</td>
    </tr>
    <tr>
     <td align='right'><%=fontcolor%><%=bdsNumActive%></font></td>
     <td align='right'><%=bdsMaxActive%></td>
     <td align='right'><%=bdsNumIdle%></td><!-- 대기상태 -->
     <td align='right'><%=bdsMaxWait%></td>
    </tr>
   </table>
<%
 } catch(Exception e) {
  out.println(e.toString());
 }
%>