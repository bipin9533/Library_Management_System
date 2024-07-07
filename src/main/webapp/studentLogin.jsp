<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>STUDENT LOGIN</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        html,body{
            height: 100%;
            width: 100%;
        }
        .librarian{
            height: 100%;
            width: 100%;
            background-image: url("images/studentbg.jpg");
            background-position: center;
        }
        div{
            background: #00000099;
            color: #fff;
        }
        div ul{
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 10rem;
            font-size: 2.8125rem;
        }
        ul li{
            list-style-type: none;
        }
        ul li a:hover{
            background: #fff;
            color: #000;
            border-radius: 1.25rem;
        }
        a{
            text-decoration: none;
            color: #fff;
        }
        #btn1,#btn2{
            display: flex;
            align-items: center;
            width: 15.625rem;
            height: 6.25rem;
            font-size: 2.25rem;
        }
        #btn2{
            padding-left: 2.5rem;
            font-weight: 600;
        }
        #btn1{
            padding-left: 1.5rem;
            font-weight: 600;
        }
        form{
            width: 100%;
            padding: 8rem;
        }
        .btn{
            padding-left: 15rem;
            display: flex;
            gap: 15rem;
        }
        .userName,.passwordS,.studentid{
            padding-left: 5rem;
            padding-bottom: 50px;
        }
        .userName label,.passwordS label,.studentid label{
            font-size: 3.125rem;
            color: #fff;
            font-weight: 600;
            padding: .23rem 2rem;
            border: 5px solid #fff;
        }
        .userName input,.passwordS input,.studentid input{
            padding-left: 30px;
            font-size: 3.125rem;
        }

    </style>
</head>
<body>
    <div class="librarian">
    <form action="studentprocess.jsp" method="post">
        <div class="studentid">
            <label for="studentID">STUDENT ID</label>
            <input type="text" id="studentID" value="UMU23-" name="studentId">
        </div>
        <div class="userName">
            <label for="username">USERNAME&nbsp;</label>
            <input type="text" id="username" name="userName">
        </div>
        <div class="passwordS">
            <label for="password">PASSWORD&nbsp;</label>
            <input type="password" id="password" name="password">
        </div>
        <div class="btn">
            <button id="btn1"><img src="images/LOGINBTNICON.png" alt="LOGIN">LOGIN</button>
            <button id="btn2"><img src="images/CLOSE.png" alt="CLOSE">CLOSE</button>
        </div>
    </form>
</div>
</body>
</html>