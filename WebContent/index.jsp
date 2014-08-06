<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
 <%@ page import="java.sql.*,ss.EffortBean"  %>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

 Class.forName("org.gjt.mm.mysql.Driver");
 Connection con=DriverManager.getConnection("jdbc:mysql://mysql-tataroi.j.layershift.co.uk/tataraoi","root","OMJXvwGQ3C");
 String sql="select effort_id,effort_category,plan_effort,actual_effort from effortcategories ";
 PreparedStatement pst=con.prepareStatement(sql);
 ResultSet res=pst.executeQuery();
 ArrayList<EffortBean> al=new ArrayList<EffortBean>();
 while(res.next()){
	 EffortBean eb=new EffortBean();
	 eb.setEfforId(res.getString(1));
	 eb.setEffortCatName(res.getString(2));
	 eb.setEffortplan(res.getString(3));
	 eb.setEfforactual(res.getString(4));
	 al.add(eb);
 }
 session.setAttribute("barDetails",al);
 if(al.size()>0){
	for(int i=0;i<al.size();i++){
		EffortBean e=(EffortBean)al.get(i);
		System.out.println((i)+"  "+e.getEffortCatName()+"       "+e.getEffortplan()+"      "+e.getEfforactual());
	}
 }
%>
<a href="bar.jsp">Click Here</a>

</body>
</html>