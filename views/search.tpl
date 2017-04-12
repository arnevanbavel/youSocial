<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- Standard css -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <!-- Fonts -->
  <link href="./assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom CSS -->
  <link href="./assets/css/global2.css" rel="stylesheet">
  <link href="./assets/css/account.css" rel="stylesheet">
  <style type="text/css">
  body{ margin-top:100px;}
.glyphicon { margin-right:5px;}
.section-box h2 { margin-top:0px;}
.section-box h2 a { font-size:15px; }
.glyphicon-heart { color:#e74c3c;}
.glyphicon-comment { color:#27ae60;}
.separator { padding-right:5px;padding-left:5px; }
.section-box hr {margin-top: 0;margin-bottom: 5px;border: 0;border-top: 1px solid rgb(199, 199, 199);}

  </style>

</head>
<body>
 <nav class="navbar navbar-custom navbar-fixed-top" role="navigation">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-main-collapse">
                    <i class="fa fa-bars"></i>
                </button>
                <a class="navbar-brand" href="./mypage.php">
                    <h1>CV EveryWhere</h1>
                </a>
            </div>
            <div class="collapse navbar-collapse navbar-left navbar-main-collapse">
              <ul class="nav navbar-nav">
                
              </ul>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
              <ul class="nav navbar-nav">
                <li><a href="./mypage.php">My Page</a></li>
                <li class="dropdown">
                  <a href="#" class="dropdown-toggle" data-toggle="dropdown"> [@voornaam] <b class="caret"></b></a>
                  <ul class="dropdown-menu">
                    <li><a href="./editeHeader.php">Edit your page</a></li>
                    <li><a href="./editeProfiel.php">Edit your page</a></li>
                    <li><a href="./account.php">Account</a></li>
                    <li><a href="./logout.php">Logout</a></li>
                  </ul>
                </li>
              </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
  </nav>
 <div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-xs-3 col-md-3 text-center">
                        <img src="http://bootsnipp.com/apple-touch-icon-114x114-precomposed.png" alt="bootsnipp"
                            class="img-rounded img-responsive" />
                    </div>
                    <div class="col-xs-9 col-md-9 section-box">
                        <h2>
                            Bootsnipp <a href="http://bootsnipp.com/" target="_blank"><span class="glyphicon glyphicon-new-window">
                            </span></a>
                        </h2>
                        <p>
                            Design elements, playground and code snippets</p>
                        <hr />
                        <div class="row rating-desc">
                            <div class="col-md-12">
                                <span class="glyphicon glyphicon-heart"></span><span class="glyphicon glyphicon-heart">
                                </span><span class="glyphicon glyphicon-heart"></span><span class="glyphicon glyphicon-heart">
                                </span><span class="glyphicon glyphicon-heart"></span>(36)<span class="separator">|</span>
                                <span class="glyphicon glyphicon-comment"></span>(100 Comments)
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="col-md-6">
            <div class="well well-sm">
                <div class="row">
                    <div class="col-xs-3 col-md-3 text-center">
                        <img src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-frc3/s160x160/1383059_247772075369912_927324687_a.png"
                            alt="jQuery2DotNet" class="img-rounded img-responsive" />
                    </div>
                    <div class="col-xs-9 col-md-9 section-box">
                        <h2>
                            jQuery2DotNet <a href="http://www.jquery2dotnet.com/" target="_blank"><span class="glyphicon glyphicon-new-window">
                            </span></a>
                        </h2>
                        <p>
                            Cool jQuery, CSS3,HTML5, MVC and C#  tutorials with examples</p>
                        <hr />
                        <div class="row rating-desc">
                            <div class="col-md-12">
                                <span class="glyphicon glyphicon-heart"></span><span class="glyphicon glyphicon-heart">
                                </span><span class="glyphicon glyphicon-heart"></span><span class="glyphicon glyphicon-heart">
                                </span><span class="glyphicon glyphicon-heart"></span>(36)<span class="separator">|</span>
                                <span class="glyphicon glyphicon-comment"></span>(100 Comments)
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
<!-- Custom Theme JavaScript -->
<script src="./assets/js/global.js"></script> 

</script>
</body>
</html>