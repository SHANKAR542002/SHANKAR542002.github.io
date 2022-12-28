<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body> 
        <%   int count=0;
            String username,password,gender,dob,mobileno,email,address;
            username=request.getParameter("t1");
        
            password=request.getParameter("t2");
            gender=request.getParameter("t3"); 
            dob=request.getParameter("t4"); 
            mobileno=request.getParameter("t5"); 
            email=request.getParameter("t6");
            address = request.getParameter("t7");
            
            
            Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
        out.println("connected to database");
     String str="insert into user_register values('"+username + "','"+ password + "','"+ gender + "','"+ dob + "','"+ mobileno + "','"+ email +"','"+ address + "')"; 
        Statement st = con.createStatement();
int n=st.executeUpdate(str);
if(n>0)
{response.sendRedirect("regsuccess.html");
    count=count+1;
     for(int i=0;i<count;i++)
        {String cr="create table"+ count+"(uid varchar(50),pwd varchar(50),cpwd varchar(50))";
        Statement st1 = con.createStatement();
        int n1=st1.executeUpdate(cr);
        }}
else
    out.println("error in registration");
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        %>
    </body>
</html>
