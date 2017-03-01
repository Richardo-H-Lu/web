<%@ page language="java" import="java.util.*" import="java.sql.*" pageEncoding="GBK" %>


<!DOCTYPE html>
<html>
<head>
<title>工资系统</title>
<meta content="text/html; charset=utf-8" http-equiv="Content-Type">
<meta name="keywords" content="¹¤×ÊÏµÍ³">
<meta name="discription" content="¹¤×ÊÏµÍ³">
<link rel="stylesheet" type="text/css" href="css/common.css" />
<link rel="stylesheet" type="text/css" href="css/system.css" />
<link rel="stylesheet" type="text/css" href="css/table.css" />
<script src="js/jquery.min.js" type="text/javascript"></script>


  </head>
  
  <body class="sysmenub" >
    <%!
        public static final String driver="com.mysql.jdbc.Driver";
    	public static final String url="jdbc:mysql://localhost/richard?user=root&password=root";
    	public static final String user="root";
    	public static final String password="root";
%>
     <%
     	Connection conn=null;
     	Statement state=null;
     	
     	ResultSet rs=null;
     
     	
      %>
      <%

      		Class.forName(driver);
      		conn=DriverManager.getConnection(url);
      		String sql="SELECT * FROM task ";
      		state=conn.createStatement();
      		rs=state.executeQuery(sql)	;
      		int i=1;
       %>
      
       <form name="form1" id="form1"  method="post" action="score.jsp">
	   <div class="container">
    	<table class="table"  border="1" id="table1">
        	<caption>ÈÎÎñÇé¿ö</caption>
        	<tr >
        		<th>ÐÕÃû</th>
            	<th>¹¤×÷ÊÂÏîÓëÄ¿±êÒªÇó</th>
                <th>Ä¿±ê</th>
                <th>ÊÇ·ñÍê³É</th>
                <th>Íê³ÉÈÕÆÚ</th>
                <th>Íê³ÉÇé¿ö×ÔÆÀ</th>
                <th>ÆÀ·Ö</th>
                <th>ÆÀ·ÖÀíÓÉ</th>
                <th>ÖØÒªÐÔÓë¼ÛÖµ</th>
                <th>´ò·Ö</th>
                <th>·Ö¹ÜÖ÷ÈÎÉóºË</th>
                <th>ÉóºËÀíÓÉ</th>
                <th>ÈÎÎñËµÃ÷</th>
                <th class="exec"><p class="execact" ><input type="submit" value="±£´æ" class="execbtn"  /></p></th>
            </tr>
       <%
       while(rs.next()){
       %>
       		<tr >
       			<td><%out.print(rs.getString(13)); %></td>
       			<td ><%out.print(rs.getString(1)); %> </td>
       			<td ><%out.print(rs.getString(2)); %> </td>
       			<td ><%out.print(rs.getString(3)); %></td>
       			<td ><%out.print(rs.getString(4)); %></td>
       			<td ><%out.print(rs.getString(5));%></td>
       			<td ><select id="a" name="text<%=i %>1">
            		<option value="1.5">1.5</option>
            		<option value="1.0">1.0</option>
               		<option value="0.6">0.6</option>
                	<option value="0">0</option>
                	</select></td>
       			<td ><textarea name="text<%=i %>2" rows="3" cols="12"><%out.print(rs.getString(7)); %></textarea></td>
       			<td ><select id="b" name="text<%=i %>3">
            		<option value="1.0">1.0</option>
            		<option value="1.0">1.5</option>
               		<option value="2.0">2.0</option>
                	<option value="3.0">3.0</option>
                	</select></td>
       			<td ><input type="text" size="1px" name="text<%=i %>4" value="<%out.print(rs.getString(9)); %>"/></td>
       			<td ><select id="c" name="text<%=i %>5">
            		<option value="1.5">1.5</option>
            		<option value="1.0">1.0</option>
               		<option value="0.6">0.6</option>
                	<option value="0">0</option>
                	</select></td>
       			<td ><textarea name="text<%=i %>6" rows="3" cols="12"><%out.print(rs.getString(11)); %></textarea></td>
       			<td ><textarea name="text<%=i %>7" rows="3" cols="12"><%out.print(rs.getString(12)); %></textarea></td>
       			
       		</tr>
       		<tr><td><input type="hidden" value="<%out.print(rs.getString(1)); %>" name="project<%=i %>" /></td></tr>
       <%i++;} %>
       <tr><td><input type="hidden" value="<%=i %>" name="rows" /></td></tr>
       
       		</table>
         </div>
       </form>
      
       
      
  </body>

</html>
