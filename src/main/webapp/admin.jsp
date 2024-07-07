<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>librarian page</title>
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
    <h1>WELCOME&nbsp;&nbsp; LIBRARIAN</h1>
    <div class="content">
        <a href="addstudent.jsp"><button><img src="images/addstudenticon.png" alt="addstudent">ADD STUDENT</button></a>
        <a href="addbooks.jsp"><button><img src="images/addbookicon.png" alt="addbooks">ADD BOOKS</button></a>
        <a href="issuebook.jsp"><button><img src="images/issuebookicon.png" alt="issuebook">ISSUE BOOK</button></a>
        <a href="returnbook.jsp"><button><img src="images/returnbookicon.png" alt="addstudent">RETURN BOOK</button></a>
        <a href="viewstudents.jsp"><button><img src="images/viewstudenticon.png" alt="addstudent">VIEW STUDENTS</button></a>
        <a href="viewbooks.jsp"><button><img src="images/viewbookicon.png" alt="addstudent">VIEW BOOKS</button></a>
        <a href="issuedbooks.jsp"><button><img src="images/issuebookicon.png" alt="addstudent">ISSUED BOOKS</button></a>
        <a href="returnedbooks.jsp"><button><img src="images/returnbookicon.png" alt="addstudent">RETURNED BOOKS</button></a>
        <a href="studentsignup.jsp"><button><img src="images/studentsignupicon.png" alt="addstudent">SIGN UP</button></a>
    </div>
</body>
</html>