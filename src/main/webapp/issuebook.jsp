<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>add books</title>
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
            background-image: url("images/adminbg.jpg");
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
            width: 21rem;
            padding-left: 1.5rem;
            font-weight: 600;
        }
        form{
            width: 100%;
            padding: 3rem 5rem;
        }
        .btn{
            padding-left: 15rem;
            display: flex;
            gap: 15rem;
        }
        .userName{
            padding-left: 5rem;
            padding-bottom: 50px;
        }
        .userName label{
            font-size: 3.125rem;
            color: #fff;
            font-weight: 600;
            padding: .23rem 2rem;
            border: 5px solid #fff;
        }
        .userName input{
            padding-left: 30px;
            font-size: 3.125rem;
        }
        h1{
            color: #fff;
            width: 100%;
            text-align: center;
        }
    </style>
</head>
<body>
    <h1>ISSUE BOOKS</h1>
    <form action="issuebookprocess.jsp" method="post">
        <section class="userName">
            <label for="bookId">BOOK ID&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="text" id="bookId" value="BKID-" name="bookId">
        </section>
         <section class="userName">
            <label for="studentID">STUDENT ID</label>
            <input type="text" id="studentID" value="UMU23-" name="studentId">
        </section>
        <section class="userName">
            <label for="issueDate">ISSUE DATE&nbsp;&nbsp;</label>
            <input type="date" id="issueDate" name="issueDate">
        </section>
        <section class="userName">
            <label for="dueDate">DUE DATE&nbsp;&nbsp;&nbsp;&nbsp;</label>
            <input type="date" id="dueDate" name="dueDate">
        </section>
        <section class="btn">
            <button type="submit" id="btn1"><img src="images/issuebookicon.png" alt="LOGIN">ISSUE BOOK</button>
            <button type="reset" id="btn2"><img src="images/CLOSE.png" alt="clear">CLEAR</button>
        </section>
    </form>
</body>
</html>