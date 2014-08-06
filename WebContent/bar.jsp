<%@page import="ss.EffortBean"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" type="text/css" href="../css/jquery.jqChart.css" />
    <link rel="stylesheet" type="text/css" href="../css/jquery.jqRangeSlider.css" />
    <link rel="stylesheet" type="text/css" media="screen" href="http://ajax.aspnetcdn.com/ajax/jquery.ui/1.8.21/themes/smoothness/jquery-ui.css" />
    <script src="js/jquery-1.5.1.min.js" type="text/javascript"></script>
    <script src="js/jquery.jqChart.min.js" type="text/javascript"></script>
    <script src="js/jquery.jqRangeSlider.min.js" type="text/javascript"></script>
    <script src="js/jquery.mousewheel.js" type="text/javascript"></script>
    <!--[if IE]><script lang="javascript" type="text/javascript" src="../js/excanvas.js"></script><![endif]-->
    
    <%
      ArrayList<EffortBean> al=(ArrayList<EffortBean>)session.getAttribute("barDetails");
    
    %>
    
    <script lang="javascript" type="text/javascript">
    $(document).ready(function () {
        $('#jqChart').jqChart({
            title: { text: 'Effort Category' },
            animation: { duration: 1 },
            shadows: {
                enabled: true
            },
            series: [
                {
                    type: 'bar',
                    title: 'Est.Effort(Hrs)',
                    fillStyle: '#418CF0',
                    data: [
                      <% for(int i=0;i<al.size();i++){
                    	  EffortBean e=(EffortBean)al.get(i);  
                    	  if(i<al.size()-1){
                    		  %>
                    		  ['<%= e.getEffortCatName() %>', <%= e.getEffortplan() %>],
                    	 <% }else{
                    		 %>
                    		 ['<%= e.getEffortCatName() %>', <%= e.getEffortplan() %>]
                    	<% }
                    	  %>
                           
                <% } %>
                ]
                },
                {
                    type: 'bar',
                    title: 'Actual Effort(Hrs)',
                    fillStyle: '#FCB441',
                    data: [
                           <% for(int i=0;i<al.size();i++){
                         	  EffortBean e=(EffortBean)al.get(i);
                         	 if(i<al.size()-1){
                       		  %>
                       		  ['<%= e.getEffortCatName() %>', <%= e.getEfforactual() %>],
                       	 <% }else{
                       		 %>
                       	  ['<%= e.getEffortCatName() %>', <%= e.getEfforactual() %>]
                       	<% }
                         	  %>
                               
                     <% } %>
                     ]
                }
            ]
        });
    });
    </script>
</head>
<body>
    <div align="center">
        <div id="jqChart" style="width: 700px; height:300px;"></div>
    </div>
</body>
</html>