<%-- 
    Document   : results
    Created on : Feb 12, 2016, 1:55:43 PM
    Author     : mmmceniry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HW-3 Results Page</title>
        <link rel="stylesheet" href="style.css" type="text/css" />
    </head>
    
    <%
        Double hoursWorked = Double.parseDouble(request.getParameter("hours"));
        Double hourlyWage = Double.parseDouble(request.getParameter("pay"));
        Double postTaxDed = Double.parseDouble(request.getParameter("postTax"));
        Double preTaxDed = Double.parseDouble(request.getParameter("preTax"));
        %>
        
    <body>
        <h1>Salary Info</h1>
        <hr></hr>
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyWage %></td>
                </tr>
                
                  <tr>
                    <td># Hours Overtime:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                
                <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDed %></td>
                </tr>
            
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDed %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
                
            </tbody>
    </body>
</html>
