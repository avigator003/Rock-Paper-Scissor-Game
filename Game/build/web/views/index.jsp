<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<% String path=application.getContextPath();
%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>ROCK PAPER SCISSOR</title>
        <style>
            img{
                
                height: 150px;
                width: 150px;
                border-radius: 90px;
            }
            body{
                
                background-image: url("<%=path%>/resources/images/game.jpg");
                background-repeat: no-repeat;
                background-size: cover;
                 background-position-y: -450px;
            }
            input[type="submit"]
    {
        position: relative;
        top: 330px;
        left: 150px;
         border: 1px solid black;
        border-radius: 5px;
        height: 50px;
        width: 250px;
        background-color: red;
    }
    #img1{
        
        position: relative;
        top: 300px;
        left: 50px;
        
        background-color: red;
        
    }
    #img2{
        
        position: relative;
        top: 300px;
        left: 80px;
        
        background-color: red;    }
    #img3{
        
        position: relative;
        top: 300px;
        left: 110px;
        
    }
    #rules
    {
        position: relative;
        top: 70px;
        left: 1050px;
        
    }
    #yo{
        
        font-size: 20px;
    }
    #note
    {
        position: relative;
        top: 150px;
        left: 950px;
        
    }
    #yo1{
        
        font-size: 20px;
    }
            </style>
    </head>

    <body>
        
        
        <img src="<%=path%>/resources/images/rock.png" id="img1">
        <img src="<%=path%>/resources/images/paper.png" id="img2">
        <img src="<%=path%>/resources/images/scissor.png" id="img3">
        
        <form action="/Game/web/user">
        
        <input type="submit" vaLue="Start Game">
        </form>
        
        <div id="rules">
            <span style="font-weight: bold;color: red;font-size: 30px">"RULES"</span><br>
            <div id="yo">
            <span>1. PAPER beats ROCK</span><br>
            <span>2. ROCK beats SCISSORS</span><br>
            <span>3. SCISSORS beats PAPER</span>
            </div>
        </div>
            <div id="note">
                <span style="font-weight: bold;color: red;font-size: 30px">"NOTE"</span><br>
            <div id="yo1">
                <span>1.After every Win player Awarded by 1 points .</span><br>
                <span>2.No Deduction of points on Losing .</span><br>
                <span>3.Tie match .</span>has 0 points awarded.</span>
            </div>
        </div>
    </body>
</html>
