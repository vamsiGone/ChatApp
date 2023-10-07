<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="SignalRChat.Register" %>

<!DOCTYPE html>

<%--<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
     <title>SignalR Chat : Register</title>
    <link href="Content/bootstrap.css" rel="stylesheet" />
    <link href="Content/style.css" rel="stylesheet" />
    <link href="Content/icheck-bootstrap.css" rel="stylesheet" />
    <link href="Content/font-awesome.css" rel="stylesheet" />
</head>
<body class="hold-transition register-page">
    <form id="form1" runat="server">

        <div class="register-box">
  <div class="register-logo">
    <a href="Login.aspx"><b>SignalR </b>Chat App</a>
  </div>

  <div class="register-box-body">
    <p class="login-box-msg">Register a new membership</p>

    
      <div class="form-group has-feedback">
        <input id="txtName" type="text" class="form-control" placeholder="Full name" required="required" runat="server">
        <span class="glyphicon glyphicon-user form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input id="txtEmail" type="email" class="form-control" placeholder="Email" required="required" runat="server">
        <span class="glyphicon glyphicon-envelope form-control-feedback"></span>
      </div>
      <div class="form-group has-feedback">
        <input id="txtPassword" type="password" class="form-control" placeholder="Password" required="required" runat="server">
        <span class="glyphicon glyphicon-lock form-control-feedback"></span>
      </div>
     
      <div class="form-group has-feedback">
        <input id="txtPasswordR" type="password" class="form-control" placeholder="Retype password" required="required" runat="server">
        <span class="glyphicon glyphicon-log-in form-control-feedback"></span>
      </div>
     
      <div class="row">
        <div class="col-xs-8">
          <div class="checkbox icheck-primary">
           
              <input type="checkbox" id="chkTerms" required="required" runat="server" /> 
              <label for="chkTerms">I agree to the </label>
               <a href="#">terms</a>
          </div>
           
        </div>
        <!-- /.col -->
        <div class="col-xs-4">
          <button type="submit" class="btn btn-primary btn-block btn-flat" id="btnRegister" runat="server" onserverclick="btnRegister_ServerClick">Register</button>
        </div>
        <!-- /.col -->
      </div>
   
    <a href="Login.aspx" class="text-center">I already have an account</a>
  </div>
  <!-- /.form-box -->
</div>

    </form>

    <script src="Scripts/jquery-1.9.1.min.js"></script>
    <script src="Scripts/bootstrap.min.js"></script>
   
</body>
</html>--%>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Register</title>

    <!-- Custom fonts for this template-->
    <link href="Content/all.min.css" rel="stylesheet" type="text/css">
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
        rel="stylesheet">

    <!-- Custom styles for this template-->
    <link href="Content/sb-admin-2.min.css" rel="stylesheet">
    <style>
        body {
            margin: 0;
            padding: 0;
            overflow: hidden;
        }

        #video-background {
            position: fixed;
            top: 0;
            left: 0;
            width: 100%;
            height: 100%;
            object-fit: cover;
            z-index: -1; /* Place the video behind other content */
        }

        /* Optional: Style your content over the video */
        #content {
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            bottom: 0;
            display: flex;
            flex-direction: column;
            justify-content: center;
            align-items: center;
            color: #ffffff;
            text-align: center;
            z-index: 1; /* Place the content above the video */
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <video id="video-background" autoplay loop muted>
          <%--  <source src="images/BackVideo.webm" type="video/webm">--%>
              <source src="./images/Register.mp4" type="video/mp4">
        </video>
        <%-- <video src="images/BackVideo.webm" controls="controls" />"--%>
        <div id="content">
            <div class="container">

                <!-- Outer Row -->
                <div class="row justify-content-center">

                    <div class="col-xl-10 col-lg-12 col-md-9">

                        <div class="card o-hidden border-0 shadow-lg my-5">
                            <div class="card-body p-0">
                                <!-- Nested Row within Card Body -->
                                <div class="row">
                                    <div class="col-lg-6 d-none d-lg-block bg-login-image"></div>
                                    <div class="col-lg-6">
                                        <div class="p-5">
                                            <div class="text-center">
                                                <h1 class="h4 text-gray-900 mb-4">Welcome Back!</h1>
                                            </div>
                                            <div class="form-group">
                                                <input id="txtName" type="text" class="form-control" placeholder="Full name" required="required" runat="server">
                                            </div>

                                            <div class="form-group">
                                                <input type="email" class="form-control form-control-user"
                                                    id="txtEmail" aria-describedby="emailHelp"
                                                    placeholder="Enter Email Address..." required="required" runat="server">
                                            </div>
                                            <div class="form-group">
                                                <input type="password" class="form-control form-control-user"
                                                    id="txtPassword" placeholder="Password" required="required" runat="server">
                                            </div>
                                            <div class="form-group">
                                                <input id="txtPasswordR" type="password" class="form-control form-control-user" placeholder="Retype password" required="required" runat="server">
                                            </div>
                                            <div class="col-xs-4">
                                                <button type="submit" class="btn btn-primary btn-user btn-block" id="btnRegister" runat="server" onserverclick="btnRegister_ServerClick">Register</button>
                                            </div>
                                            <hr>
                                           
                                            <div class="text-center">
                                                <a class="small" href="Login.aspx">I already have an account</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>

                    </div>

                </div>

            </div>

        </div>
    </form>

    <!-- Bootstrap core JavaScript-->
    <script src="Plugins/jquery.min.js"></script>
    <script src="Plugins/bootstrap.bundle.min.js"></script>

    <!-- Core plugin JavaScript-->
    <script src="Plugins/jquery.easing.min.js"></script>

    <!-- Custom scripts for all pages-->
    <script src="Plugins/sb-admin-2.min.js"></script>

</body>

</html>

