<%-- 
    Document   : register
    Created on : Feb 1, 2024, 9:33:42 PM
    Author     : YASHI
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>
      body {
        padding: 50px;
       
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
<script>

function validate()

{

     var fullname = document.form.fullname.value;

     var email = document.form.email.value;

     

     var password = document.form.password.value;

     var conpassword= document.form.conpassword.value;
    

     if (fullname==null || fullname=="")

     {

     alert("Full Name can't be blank");

     return false;

     }

     else if (email==null || email=="")

     {

     alert("email can't be blank");

     return false;

     }

    

     else if(password.length<6)

     {

     alert("Password must be at least 6 characters long.");

     return false;

     }

     else if (password!=conpassword)
     {

     alert("Confirm Password should match with the Password");

     return false;

     }

}

</script>

</head>
   

<body>
      <h2> Registration Form </h2>
        <form action="register.jsp" method="post" enctype="multipart/form-data">
    


    <div class="form-group">
                <input type="text" class="form-control" name="fullname" placeholder="Full Name:">
            </div>
            <div class="form-group">
                <input type="email" class="form-control" name="email" placeholder="Email:">
            </div>
            <div class="form-group">
                <input type="password" class="form-control" name="password" placeholder="Password:">
            </div>
           <td>Password</td>

         <td><input type="password" name="password" /></td>

         </tr>

         <tr>

         <td>Confirm Password</td>

         <td><input type="password" name="conpassword" /></td>

         </tr>
         
         <tr>

         <td><%=(request.getAttribute("errMessage") == null) ? ""

           : request.getAttribute("errMessage")%></td>

         </tr>

         <tr>

         <td></td>

            <div class="form-group">
                <input type="textarea" class="form-control" name="address" placeholder="Please enter your address">
            </div>
            <div class="form-group">
            <input type="radio" id="Male" name="Gender" value="Male">
            <label for="Male">Male</label><br>
            </div>
            <div class="form-group">
            <input type="radio" id="Female" name="Gender" value="Female">
            <label for="Female">Female</label><br>
            </div>
            <div class="form-group">
                <input type="textarea" class="form-control" name="Comments" placeholder="Any comments">
            </div>
            
            <div class="form-group">

            <label for="image">Image : </label>
      <input type="file" name="image" id = "image" accept=".jpg, .jpeg, .png" value=""> <br> <br>

         
    </div>
           <div class="form-btn">
                <input type="submit" class="btn btn-primary" value="Register" name="submit">

            </div>
            
        </form>
        <div>
        <div><p>Already Registered <a href="login.php">Login Here</a></p></div>
      </div>
    </div>

</body>
</html>