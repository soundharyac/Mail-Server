<%@page import="java.sql.*"%>
<html>
<body>
<% 
	String s1=request.getParameter("ADMIN");
	String s2=request.getParameter("PASSWORD");
	try {
        Class.forName("com.mysql.jdbc.Driver");  // MySQL database connection
        Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root"); 
		Statement s=con.createStatement();
		int r=s.executeUpdate("insert into admin values('"+s1+"','"+s2+"')");
        if (r>0)
		{
        out.println("User registered successfully");
		}
    } catch (Exception e) {
        out.println(e);
    } 
%>
	<form action="login.jsp">
<td  align="center"><input type="submit" value="login now" /><td>
</form>	
</body>
</html>
