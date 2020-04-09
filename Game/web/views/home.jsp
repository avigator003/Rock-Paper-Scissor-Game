<%-- 
    Document   : home
    Created on : 9 Apr, 2020, 4:14:34 PM
    Author     : HP
--%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="qu" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% String path=application.getContextPath();
%>

<style>
    table{
        border: 1px solid black;
        border-radius: 5px;
        position: relative;
        top: 50px;
        left: 450px;
        background-color: yellowgreen;
    }
    td{
        border: 1px solid black;
        
        padding:10px;
    }
    
    input[type="submit"]
    {
        
        position: relative;
        top: 80px;
        left: 610px;
         border: 1px solid black;
        border-radius: 5px;
        padding: 10px;
        background-color: red;
    }
    body{
        background-color: yellow;
    }
    
    
    </style>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        
        <h1 style="font-weight: bold;text-align: center;color: red;text-decoration: underline">Player Choices For This Round</h1><br>
        <span id="details">
        <qu:set value="1" var="i"></qu:set>
        <qu:forEach items="${input}" var="userinput">
            <span style="font-weight: bold;color: blue;position: relative;top: -10px;left:450px"> Player ${i} Choice: </span><span style="position: relative;top: -10px;left:480px">${userinput}</span>
             <qu:set value="${i+1}" var="i"></qu:set>
             <br>
        </qu:forEach>
        </span>
             <hr>
             <span style="position: relative;top: 0px;left:50px;font-weight: bold;font-size:28px">EACH PLAYER TOTAL POINTS WITH RESPECT TO ANOTHER PLAYER AFTER THIS ROUND </span>
        <table>
            <tr>
                <td>V/S</td>
                <td>Player 1</td>
                <td>Player 2</td>
                <td>Player 3</td>
                <td>Player 4</td>
            </tr>
            <tr>
                <td>Player 1</td>
                <td>${array[0][0]}</td>
                <td>${array[0][1]}</td>
                <td> ${array[0][2]}</td>
                <td>${array[0][3]}</td>
            </tr>
            
              <tr>
                <td>Player 2</td>
                <td>${array[1][0]}</td>
                <td>${array[1][1]}</td>
                <td>${array[1][2]}</td>
                <td>${array[1][3]}</td>
            </tr>
            <tr>
                <td>Player 3</td>
                <td>${array[2][0]}</td>
                <td>${array[2][1]}</td>
                <td>${array[2][2]}</td>
                <td>${array[2][3]}</td>
            </tr>
            <tr>
                <td>Player 4</td>
                <td>${array[3][0]}</td>
                <td>${array[3][1]}</td>
                <td>${array[3][2]}</td>
                <td>${array[3][3]}</td>
            </tr>           
            
        
        </table>
            <form action="/Game/web/home">
                <input type="submit" value="Play Again!!!">
            </form>
    </body>
</html>
