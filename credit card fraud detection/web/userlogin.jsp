<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

        <%
            String username,password;
            username=request.getParameter("adm");
        
            password=request.getParameter("pwdd");
            
            
            Connection con = null;
        try {
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/test", "root", "root");
      
     String str="select * from user_register where username='"+username +"' and password='"+ password +"'";
   
 Statement st = con.createStatement();
 ResultSet rs = st.executeQuery(str);
        if (rs.next()) {
           
          response.sendRedirect("after user login.html");
        } else {
                      response.sendRedirect("notsuccess.html");

        }
    
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        %>

