<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8">
    <title>Login Page</title>
    <meta name="msapplication-TileColor" content="#5bc0de" />
    <meta name="msapplication-TileImage" content="assets/img/metis-tile.png" />

    <!-- Bootstrap -->
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/css/bootstrap.min.css">
    <link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/animate.css/3.2.0/animate.min.css">

    <!-- Metis core stylesheet -->
    <link rel="stylesheet" href="/dist/css/main.min.css">
  </head>
  <body class="login">
    <div class="form-signin">
      <div class="text-center">
        <img src="/assets/images/logo-text.png" alt="Metis Logo">
      </div>
      <hr>
      <div class="tab-content">
        <div id="login" class="tab-pane active">
          <form id="loginform" action="/login" method="post">
            <p class="text-muted text-center">
              <span class="error_msg"></span>
            </p>
            <input type="text" placeholder="Username" class="form-control top" name="account">
            <input type="password" placeholder="Password" class="form-control bottom" name="password">
<!--             <div class="checkbox"> -->
<!--               <label> -->
<!--                 <input type="checkbox"> Remember Me -->
<!--               </label> -->
<!--             </div> -->
            <button class="btn btn-lg btn-primary btn-block" type="submit">로그인</button>
          </form>
        </div>
        <div id="forgot" class="tab-pane">
          <form action="index.html">
            <p class="text-muted text-center">Enter your valid e-mail</p>
            <input type="email" placeholder="mail@domain.com" class="form-control">
            <br>
            <button class="btn btn-lg btn-danger btn-block" type="submit">Recover Password</button>
          </form>
        </div>
        <div id="signup" class="tab-pane">
          <form action="index.html">
            <input type="text" placeholder="username" class="form-control top">
            <input type="email" placeholder="mail@domain.com" class="form-control middle">
            <input type="password" placeholder="password" class="form-control middle">
            <input type="password" placeholder="re-password" class="form-control bottom">
            <button class="btn btn-lg btn-success btn-block" type="submit">Register</button>
          </form>
        </div>
      </div>
      <hr>
<!--       <div class="text-center"> -->
<!--         <ul class="list-inline"> -->
<!--           <li> <a class="text-muted" href="#login" data-toggle="tab">Login</a>  </li> -->
<!--           <li> <a class="text-muted" href="#forgot" data-toggle="tab">Forgot Password</a>  </li> -->
<!--           <li> <a class="text-muted" href="#signup" data-toggle="tab">Signup</a>  </li> -->
<!--         </ul> -->
<!--       </div> -->
    </div>

    <!--jQuery -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>

    <!--Bootstrap -->
    <script src="//cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.1/js/bootstrap.min.js"></script>
    <script type="text/javascript">
      (function($) {
        $(document).ready(function() {
          $('.list-inline li > a').click(function() {
            var activeForm = $(this).attr('href') + ' > form';
            //console.log(activeForm);
            $(activeForm).addClass('animated fadeIn');
            //set timer to 1 seconds, after that, unload the animate animation
            setTimeout(function() {
              $(activeForm).removeClass('animated fadeIn');
            }, 1000);
          });
        });
      })(jQuery);
    </script>
  </body>
</html>