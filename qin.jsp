<%@page import="java.sql.*"%>
<html>
<body bgcolor="pink">
<%String s1=request.getParameter("q_no");
String s2=request.getParameter("question");
String s3=request.getParameter("answer");

if((s1!=null)&&(s2!=null)&&(s3!=null))
{
    try
    {
        Class.forName("com.mysql.jdbc.Driver");
        Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/db","root","root");
        Statement s=c.createStatement();
        int r=s.executeUpdate("insert into quiz values('"+s1+"','"+s2+"','"+s3+"')");
        if(r>0)
        {
            out.print("Questions inserted");
        }
    }
    catch(Exception e)
    {
        out.print(e);
    }
}
else
{
    response.sendRedirect("quiz.html");
}
%>
</body>
</html>
