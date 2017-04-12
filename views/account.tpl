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
  body{
    margin-top: 100px;
    background: #ecf0f1;
  }

  body .table-user-information input{
    width: 100%;
  }

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
  <form action="./processes/account-process.php" method="POST" enctype="multipart/form-data">
  <section id="account-section">
  <div class="container">
      <div class="row">
        <div class="col-md-8 col-md-offset-2" >
          <div class="panel panel-info">
            <div class="panel-heading">
              <h3 class="panel-title">[@voornaam] [@achternaam]</h3>
            </div>
            <div class="panel-body">
              <div class="row">
                <div class="col-md-6" align="center" style="margin-bottom: 20px;"> 
                  <img id="output"" alt="User Pic" src="[@avatarUrl]" class="img-responsive"> 
                </div>
                <div class="col-md-6" align="center" style="margin-bottom: 20px;"> 
                    <input type="file" name="file" onchange="loadFile(event)">
                </div>
                
                <div class="col-md-12"> 
                  <table class="table table-user-information">
                    <tbody>
                      <tr>
                        <td>Department:</td>
                        <td><input type="text" class="form-control" name="Department" value="Programming"></td>
                      </tr>
                      <tr>
                        <td>Social:</td>
                        <td></td>
                      </tr>
                      <tr>
                        <td>
                          <input type="text" class="form-control" name="facebook_link" placeholder="Your Facebook Link" value="[@facebook_link]"><br>
                          <input type="text" class="form-control" name="linkedin_link" placeholder="Your Linkedin Link" value="[@linkedin_link]">
                        </td>
                        <td>
                          <input type="text" class="form-control" name="googlePlus_link" placeholder="Your google+ Link" value="[@googlePlus_link]"><br>
                          <input type="text" class="form-control" name="youtube_link" placeholder="Your Youtube Link" value="[@youtube_link]">
                        </td>
                      </tr>
                      <tr>
                        <td>Date of Birth</td>
                        <td>01/24/1988</td>
                      </tr>
                   
                         <tr>
                             <tr>
                        <td>Gender</td>
                        <td>Female</td>
                      </tr>
                        <tr>
                        <td>Home Address</td>
                        <td>Kathmandu,Nepal</td>
                      </tr>
                      <tr>
                        <td>Email</td>
                        <td><a href="mailto:info@support.com">info@support.com</a></td>
                      </tr>
                        <td>Phone Number</td>
                        <td>123-4567-890(Landline)<br>555-4567-890(Mobile)
                        </td>
                           
                      </tr>
                     
                    </tbody>
                  </table>
                </div>
              </div>
            </div>
            <div class="panel-footer">
              <a href="#" class="btn btn-primary">Anuleer</a>
              <span class="pull-right">
                <input type="submit" class="btn btn-success" name="submit">
              </span>
            </div>         
          </div>
        </div>
      </div>
    </div>

  </section>
</form>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
<!-- Custom Theme JavaScript -->
<script src="./assets/js/global.js"></script> 
<script type="text/javascript">
  var loadFile = function(event) {
    var reader = new FileReader();
    reader.onload = function(){
      var output = document.getElementById('output');
      output.src = reader.result;
    };
    reader.readAsDataURL(event.target.files[0]);
  };
</script>

</script>
</body>
</html>