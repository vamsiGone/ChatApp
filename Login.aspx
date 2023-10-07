<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SignalRChat.Login" %>

<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Login</title>

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
        <source src="images/BackVideo.webm" type="video/webm">     
    </video>
   <%-- <video src="images/BackVideo.webm" controls="controls" />"--%>
    <div id="content"><div class="container">

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
                                            <input type="email" class="form-control form-control-user"
                                                id="txtEmail" aria-describedby="emailHelp"
                                                placeholder="Enter Email Address..." required="required" runat="server">
                                        </div>
                                        <div class="form-group">
                                            <input type="password" class="form-control form-control-user"
                                                id="txtPassword" placeholder="Password" required="required" runat="server">
                                        </div>
                                 
                                        <asp:Button ID="btnSignIn" runat="server" OnClick="btnSignIn_Click" Text="Login" CssClass="btn btn-primary btn-user btn-block" />                    
                                                          
                                    <hr>
                                    <div class="text-center">
                                        <a class="small" href="forgot-password.html">Forgot Password?</a><br /><br />
                                           <a class="small" href="Register.aspx">Create an Account!</a>
                                    </div>
                                    <div class="text-center">
                                     
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
