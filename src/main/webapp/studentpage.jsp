<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>STUDENT PAGE</title>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family:'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        html,body{

            width: 100%;
            height: 100%;
            background-image: url("images/adminbg.jpg");
            background-position: right;
        }
        h1{
            color: #fff;
            text-align: center;
            padding-top: 1rem;
            font-size: 3rem;
            letter-spacing: .3rem;
        }
        a{
            text-decoration: none;
        }
        .content{
            width: 100%;
            padding: 6rem 2rem;
            display: flex;
            flex-wrap: wrap;
            align-items: center;
            justify-content: space-evenly;
            gap: 4rem;
        }
        button{
            width: 360px;
            height: 120px;
            display: flex;
            align-items: center;
            border:none;
            gap: 1rem;
            font-size: 1.5rem;
            font-weight:bold;
            background: #fff;
            border-radius: .5rem;
        }
    </style>
</head>
<body>
    <h1>WELCOME&nbsp;&nbsp; STUDENT</h1>
    <div class="content">
        <a href="viewbooks.jsp"><button><img src="images/viewbookicon.png" alt="addstudent">VIEW BOOKS</button></a>
        <a href="issuedbooks.jsp"><button><img src="images/issuebookicon.png" alt="addstudent">ISSUED BOOKS</button></a>
        <a href="returnedbooks.jsp"><button><img src="images/returnbookicon.png" alt="addstudent">RETURNED BOOKS</button></a>
    </div>
</body>
</html>