<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %> 
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Message</title>
</head>
<body>
    <center>
       <h3><%=request.getAttribute("Message")%></h3>
        <%
           String connectionURL = "jdbc:mysql://localhost:3306/tp";
		java.sql.Connection con=null;
		try{			
			Class.forName("com.mysql.jdbc.Driver").newInstance();
			con=DriverManager.getConnection(connectionURL,"root","");			
			Statement st1=con.createStatement();
			ResultSet rs1 = st1.executeQuery("select photo from demo");
			String imgLen="";
			if(rs1.next()){
				imgLen = rs1.getString(1);
				System.out.println(imgLen.length());
			}	
			rs1 = st1.executeQuery("select photo from demo");
			if(rs1.next()){
				int len = imgLen.length();
				byte [] rb = new byte[len];
				InputStream readImg = rs1.getBinaryStream(1);
				int index=readImg.read(rb, 0, len);	
				System.out.println("index"+index);
				st1.close();
				response.reset();
				response.setContentType("image/jpg");
				response.getOutputStream().write(rb,0,len);
				response.getOutputStream().flush();				
			}
		}
		catch (Exception e){
			e.printStackTrace();
		}
        %>
    </center>
</body>
</html>