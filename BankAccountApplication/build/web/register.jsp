<%-- 
    Document   : register.jsp
    Created on : Apr 10, 2019, 4:38:53 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Register</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <style>
            body{
                width: 100vw;
                height: 100vh;
                display: flex;
                flex-direction: column;
                align-items: center;
                background-color: rgb(24,24,24);
                color: white;
                padding-top: 3rem;
                overflow: hidden;
            }

            input{
                width: 200px
            }

            form{
                margin-top: 2rem;
                margin-left: 15vw;
                display: grid;
                grid-template-columns :1fr 1fr 1fr;
                grid-gap: 2rem;
            }
            
            @media only screen and (min-width: 800px){
                body{
                    justify-content: center;
                    padding-top: 0;
                    padding-bottom: 4rem;
                }
            }

        </style>
    </head>
    <body>
        <h1>Register Form</h1>
        <form action="registerServlet" method="post">
            <label for="accountID">Account ID : </label>
            <input type="text" name="accountId" required> <br>
            <label for="accountName">Account Name : </label>
            <input type="text" name="accountName" required><br>
            <label for="balance">Balance : </label> 
            <input type="number" name="balance" min="0" required><br>
            <input type="hidden" name="type" value="">
            <input type="hidden" name="amount" value="0">
            <button type="submit" class="btn btn-primary">Submit</button>
        </form>
    </body>
</html>
