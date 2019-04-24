<%-- 
    Document   : transaction.jsp
    Created on : Apr 10, 2019, 5:12:10 PM
    Author     : Student
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transaction</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
        <style>
            body{
                width: 100vw;
                height: 100vh;
                padding-top: 3rem;
                display: flex;
                flex-direction: column;
                align-items: center;
                grid-gap: 100px;
                background-color: rgb(24,24,24);
                color: white;
                overflow: hidden;
            }
            input{
                width: 200px
            }

            form{
                margin-top: 1rem;
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
        <div>
            <h1>Hello, ${bankAccount.accountName}</h1>
        </div>
        <div>
            <h3>Your balance is ${bankAccount.getCalculatedBalance()}</h3>
        </div>
        <form action="registerServlet" method="post">
            <div class="form-group">
                <label for="type">Transaction Type</label>
                <select class="form-control" id="typeOptions" name="type">
                    <option value=""></option>
                    <option value="deposit">deposit</option>
                    <option value="withdraw">withdraw</option>
                </select>
            </div>
            <div class="form-group">
                <label for="amount">Amount : </label> 
                <input type="number" name="amount" min="0" class="form-control"><br>
                <button type="submit" class="btn btn-primary">Submit</button>
            </div>
            <input type="hidden" name="accountName" value="${bankAccount.accountName}">
            <input type="hidden" name="accountID" value="${bankAccount.accountID}">
            <input type="hidden" name="balance" value="${bankAccount.getCalculatedBalance()}">
        </form>
    </body>
</html>
