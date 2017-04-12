<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home Page</title>

    <!-- Standard css -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
    <!-- Fonts -->
    <link href="./assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
    <!-- Custom CSS -->
    <link href="./assets/css/global2.css" rel="stylesheet">
    <link href="./assets/css/mypage.css" rel="stylesheet">
    <link href="[@headerCSS]" rel="stylesheet">
    <link href="[@profielCSS]" rel="stylesheet">
    <link href="[@skillCSS]" rel="stylesheet">
    <style type="text/css">
      #resultarea{
        background: white;
        position: absolute;
        top: 60px;
        z-index: 999;
        display: none;
        width: 501px;
      }
      #resultarea .row{
        padding-top: 5px;
        padding-bottom: 5px;
        border-top: 1px solid lightgrey;
      }
      #resultarea img{
        height: 60px;
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
                  <li class="active">
                  </li>
              </ul>
            </div>

            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse navbar-right navbar-main-collapse">
    		     	<ul class="nav navbar-nav">
              <!-- Search Field -->
                <li class="searchField" style="display: none;">
                  <a>
                    <form method="POST" action="./search.php">
                      <input type="text" class="form-control input-sm" id="ZoekVeld" placeholder="Search and hit enter">
                    </form>
                  </a>
                </li>
                <li id="searchButton">
                  <a>
                    <span class="glyphicon glyphicon-search"></span>
                  </a>
                </li>
              <!-- End Search Field -->
    					  <li class="active"><a href="./mypage.php">My Page</a></li>
  		        	<li class="dropdown">
  		          	<a href="#" class="dropdown-toggle" data-toggle="dropdown">[@voornaam] <b class="caret"></b></a>
  		          	<ul class="dropdown-menu">
  			            <li><a href="./editeHeader.php">Edit your page</a></li>
                    <li><a href="./editeProfiel.php">Edit your page</a></li>
                    <li><a href="./account.php">Account</a></li>
  			            <li><a href="./logout.php">Logout</a></li>
  		          	</ul>
  		        	</li>
  		      	</ul>
              <div id="resultarea"></div>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

  <div class="social hidden-phone">
    [@facebook_link]
    [@linkedin_link]
    [@googlePlus_link]
    [@youtube_link]
  </div>

  [@headerHTML]
  [@profielHTML]
  [@skillHTML]

  <section id="ervaring-section">
    
  </section>
  <section id="portofolio-section">
    
  </section>

	<footer>
		<div class="container">
			<div class="row">
				<div class="col-md-12 col-lg-12">
					<p class="text-center">Footer</p>
				</div>
			</div>	
		</div>
	</footer>

    <!-- Core JavaScript Files -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <script src="./assets/js/js/jquery.easing.min.js"></script>	
    <!-- Custom Theme JavaScript -->
    <script src="./assets/js/global.js"></script> 
    <script src="[@headerJS]"></script>
    <script src="[@profielJS]"></script> 
    <script src="[@skillJS]"></script> 
    <script type="text/javascript"> 
    $(document).ready(function() {
  
    $('#ZoekVeld').keyup(function(){      //Wanneer er getypt word tonen
      var value = $(this).val();
        if (value) {
            $.ajax({
              type: "POST",
              url: "./processes/ajax-search.php",
              data: { searchString: value },
              cache: false,
              success: function(data){
                 $("#resultarea").html(data);
              }
            });
        }else{
            $("#resultarea").html('');
        }
      });

    }); 
    </script>
</body>

</html>
