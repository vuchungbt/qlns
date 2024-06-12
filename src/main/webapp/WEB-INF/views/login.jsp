<%-- 
    Document   : login
    Created on : Jan 31, 2015, 8:04:11 PM
    Author     : Ajay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<style>
    

    .form-signin {
        max-width: 330px;
        padding: 15px;
        margin: 0 auto;
    }
    .form-signin .form-signin-heading,
    .form-signin .checkbox {
        margin-bottom: 10px;
    }
    .form-signin .checkbox {
        font-weight: normal;
    }
    .form-signin .form-control {
        position: relative;
        height: auto;
        -webkit-box-sizing: border-box;
        -moz-box-sizing: border-box;
        box-sizing: border-box;
        padding: 10px;
        font-size: 16px;
    }
    .form-signin .form-control:focus {
        z-index: 2;
    }
    .form-signin input[type="email"] {
        margin-bottom: -1px;
        border-bottom-right-radius: 0;
        border-bottom-left-radius: 0;
    }
    .form-signin input[type="password"] {
        margin-bottom: 10px;
        border-top-left-radius: 0;
        border-top-right-radius: 0;
    }

</style>


<div class="container">

    <form class="form-signin" action="j_spring_security_check" method="POST">
        <h2 class="form-signin-heading">Please sign in</h2>
        <label for="j_username" class="sr-only">Name</label>
            <input type="text" name="j_username" class="form-control" placeholder="Username" required autofocus>
        <label for="j_password" class="sr-only">Password</label>
            <input type="password" name="j_password" class="form-control" placeholder="Password" required>
        <div class="checkbox">
            <label>
                <input type="checkbox" value="remember-me"> Remember me
            </label>
        </div>
        <button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
    </form>

</div> <!-- /container -->
