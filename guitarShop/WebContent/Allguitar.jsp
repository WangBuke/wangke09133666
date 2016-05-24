<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="dao.guitarDaoImpl" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ page import="bean.Guitar" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script type="text/javascript" src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script type="text/javascript" src="http://netdna.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
    <link href="http://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <link href="http://pingendo.github.io/pingendo-bootstrap/themes/default/bootstrap.css" rel="stylesheet" type="text/css">
</head>
<body>
    

    		
          
          <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <h1>Guitar Shop</h1>
          </div>
        </div>
      </div>
    </div>
    <div class="section">
      <div class="container">
        <div class="row">
          <div class="col-md-12">
            <table class="table">
              <thead>
                <tr>
                  <th>Builder</th>
                  <th>Type</th>
                  <th>Model</th>
                  <th>Topwood</th>
                  <th>Backwood</th>
                  <th>SerialNumber</th>
                  <th>Price</th>
                </tr>
              </thead>
              <tbody>
              <%
    guitarDaoImpl comm = new guitarDaoImpl(); 
    ArrayList<Guitar> list = comm.getAllGuitar();
    

    if(list!=null&&list.size()>0)
    {
 	    
        for(int i=0;i<list.size();i++)
        {
           	Guitar p = list.get(i);
           	
         	
         	
         		
	%>   
                <tr>
                
                  <td><%=p.getBuilder()%></td>
                  <td><%=p.getType()%></td>
                  <td><%=p.getModel()%></td>
                  <td><%=p.getTopwood()%></td>
                  <td><%=p.getBackwood()%></td>
                  <td><%=p.getSerialNumber()%></td>
                  <td><%=p.getPrice()%></td>
                 
                </tr>
                 <% 
         			}    
	           }
             
          %>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
</body>
</html>