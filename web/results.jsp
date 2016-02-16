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
      
        Double otHour = 0.00;
        Double otRate = hourlyWage * 1.5;
        Double grossPay = hoursWorked * hourlyWage;
        Double taxAmt = 0.00;
        Double regHours = 40.00;
        
        if(hoursWorked > 40) {
            regHours = 40.00;
            otHour = hoursWorked - 40;
            otRate = hourlyWage * 1.5;
            double otPay = otHour * otRate;
            double regPay = regHours * hourlyWage;
            grossPay = regPay + otPay;
          }
        
        else{
            grossPay = hoursWorked * hourlyWage;
        } 
        
        Double preTaxPay = grossPay - preTaxDed;
        
        if(grossPay < 500) {
            taxAmt = preTaxPay * .18;
        }
        else {
            taxAmt = preTaxPay * .22;
        }
        
       Double postTaxPay = preTaxPay - taxAmt;
       Double netPay = postTaxPay - postTaxDed;
       
    %>
        
    <body>
        <h1>Salary Info</h1>
        <hr></hr>
        <table border="1" align="center">
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
                    <td><%= otHour %></td>
                </tr>
                
                <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%= otRate %></td>
                </tr>
                
                <tr>
                    <td>Gross Pay:</td>
                    <td><%= grossPay %></td>
                </tr>
                
                <td>Pre-tax Deduct:</td>
                    <td><%= preTaxDed %></td>
                </tr>
            
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= preTaxPay %></td>
                </tr>
                
                <tr>
                    <td>Tax Amount:</td>
                    <td><%= taxAmt %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Pay:</td>
                    <td><%= postTaxPay %></td>
                </tr>
                
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= postTaxDed %></td>
                </tr>
                
                <tr>
                    <td>Net Pay:</td>
                    <td><%= netPay %></td>
                </tr>
                
            </tbody>
    </body>
</html>
