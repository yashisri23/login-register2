<%-- 
    Document   : log1
    Created on : Feb 1, 2024, 9:32:27 PM
    Author     : YASHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style> 
              body {
        padding: 50px;
        background-image: url('C:\xampp\htdocs\login-register\im5.jpeg');
    }
    
    .container {
        max-width: 600px;
        margin: 0 auto;
        padding: 50px;
        box-shadow: rgba(100, 100, 111, 0.2) 0px 7px 29px 0px;
    }
    
    .form-group {
        margin-bottom: 30px;
    }
        </style>
    </head>
    <body>
        <h1>Hello World!</h1>
          <h2> Login Here </h2>
      <form action="log1.jsp" method="post">
     
        <div class="form-group">
            <input type="email" placeholder="Enter Email:" name="email" class="form-control">
        </div>
        <div class="form-group">
            <input type="password" placeholder="Enter Password:" name="password" class="form-control">
        </div>
        <div class="form-btn">
            <input type="submit" value="Login" name="login" class="btn btn-primary">
        </div>
      </form>
     <div><p>Not registered yet <a href="registration.php">Register Here</a></p></div>
    </div>
 


</body>
</html>
    </body>
</html>
