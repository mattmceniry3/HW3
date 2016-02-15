<%-- 
    Document   : index
    Created on : Feb 12, 2016, 1:55:30 PM
    Author     : mmmceniry
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>HW3 - Index Page</title>
        <link rel="stylesheet" href="style.css" type="text/css" />
    </head>
    
    <body>
        <h1>Simple Salary Calculator</h1>
        <hr></hr>
<form name="indexForm" action="results.jsp" method="post">
<table>
<tbody>    
    <tr>
        <td>Hours Worked:</td>
        <td><input type="number" name="hours" value="" size="25" required></td>
    </tr>
    
    <tr>
        <td>Hourly Pay:</td>
        <td><input type="number" name="pay" value="" size="25" required ></td>
    </tr>
    
    <tr>
        <td>Pre-Tax Deduct:</td>
        <td><input type="number" name="preTax" value="" size="25" required ></td>
    </tr>
    
    <tr>
        <td>Post-Tax Deduct:</td>
        <td><input type="number" name="postTax" value="" size="25" required ></td>
    </tr>
</tbody>
<table>
    
    <input type="reset" value="Clear" id="clear">
    <input type="submit" value="Submit" id="submit">
</form>
  
    </body>
</html>
