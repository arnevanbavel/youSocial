<!DOCTYPE html>
<html>
<head>
	<title></title>
	<!-- Standard css -->
  <link href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" rel="stylesheet" type="text/css">
  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.3/assets/owl.carousel.min.css'>
  <link rel='stylesheet prefetch' href='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.3/assets/owl.theme.default.min.css'>
  <!-- Fonts -->
  <link href="./assets/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
  <!-- Custom CSS -->
  <link href="./assets/css/global2.css" rel="stylesheet">
  <link href="./assets/css/editepage.css" rel="stylesheet">
  [@headerCSSitems]

  <style type="text/css">
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
  <section id="edite-section">
        <div class="container">
            <div class="row">
                <div class="col-sm-12 text-center">
                   <h2>Edit your page</h2>
                   <ul class="progressbar">
                      <li class="active">Header</li>
                      <li>Profile</li>
                      <li>Skills</li>
                      <li>Experience</li>
                      <li>Portfolio</li>
                  </ul>
                </div>
            </div>
            <div class="row edit-row">
                <div class="col-sm-8" style="">
                  <div class="outer">
                    <div id="big" class="owl-carousel owl-theme">
                          [@headerHTMLitems]
                      <div class="item">
                        <h1>2</h1>
                      </div>
                      <div class="item">
                        <h1>3</h1>
                      </div>
                      <div class="item">
                        <h1>4</h1>
                      </div>
                      <div class="item">
                        <h1>5</h1>
                      </div>
                      <div class="item">
                        <h1>6</h1>
                      </div>
                      <div class="item">
                        <h1>7</h1>
                      </div>
                      <div class="item">
                        <h1>8</h1>
                      </div>
                          <div class="item">
                        <h1>9</h1>
                      </div>
                        <div class="item">
                        <h1>10</h1>
                      </div>
                    </div>
                    <div id="thumbs" class="owl-carousel owl-theme">
                      <div class="item" id="default_tmp">
                        <h1>1</h1>
                      </div>
                      <div class="item" id="hipster_tmp">
                        <h1>2</h1>
                      </div>
                      <div class="item" id="night_tmp">
                        <h1>3</h1>
                      </div>
                      <div class="item" id="rocky_tmp">
                        <h1>4</h1>
                      </div>
                      <div class="item">
                        <h1>5</h1>
                      </div>
                      <div class="item">
                        <h1>6</h1>
                      </div>
                      <div class="item">
                        <h1>7</h1>
                      </div>
                      <div class="item">
                        <h1>8</h1>
                      </div>
                        <div class="item">
                        <h1>9</h1>
                      </div>
                        <div class="item">
                        <h1>10</h1>
                      </div>
                    </div>
                  </div>
                </div>
                <div class="col-sm-4">
                  <div class="form-area">  
                    <form role="form" action='./processes/create-header-process.php' method='post'>
                    <br style="clear:both">
                                <h3 style="margin-bottom: 15px; text-align: center;">Become unique</h3>
                      <div class="form-group">
                        <label class="control-label">Big</label>
                        <input type="text" class="form-control" id="header_bigSentence" name="header_bigSentence" placeholder="Big" value="[@header_bigSentence]" required>
                      </div>
                      <div class="form-group">
                        <label class="control-label">Small</label>
                        <input type="text" class="form-control" id="header_smallSentence" name="header_smallSentence" placeholder="small" value="[@header_smallSentence]" >
                      </div>
                      <div class="form-group">
                        <div class="checkbox">
                          <label><input type="checkbox" name="default_header_image" value="default" checked>Default image</label>
                        </div>
                        <input type="text" class="form-control" id="header_image" name="header_image" placeholder="Link" value="[@header_image]" disabled="disabled">
                      </div>
                      <div class="form-group">
                        <label class="control-label">Selected Template</label>
                        <input type="text" class="form-control" id="selectedTemplate" name="selectedTemplate" value="small" required readonly>
                      </div>
                      <hr>
                      <div class="form-group">
                        <div class="btn-group text-center">
                          <button type="button" class="btn btn-primary">Previous Page</button>
                          <button type="button" class="btn btn-primary">Next Page</button>
                          <button type="submit" id="submit" name="submit" class="btn btn-success">Save</button>
                        </div>
                      </div>
                    </form>
                </div>
                </div>
            </div>
        </div>
    </section>

<script src='http://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js'></script>
<script src='https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.0.0-beta.3/owl.carousel.min.js'></script>
<script src='https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js'></script>
<script src="./assets/js/js/jquery.easing.min.js"></script> 
<!-- Custom Theme JavaScript -->
<script src="./assets/js/global.js"></script>
<script src="./assets/js/editePage.js"></script>   
[@headerJSitems]
<script type="text/javascript">
  $(document).ready(function() {
  
  $('#header_bigSentence').keyup(function(){      //Wanneer er getypt word tonen
    var value = $('#header_bigSentence').val();
    $('.preview-bigSentence').html(value);
  });

  $('#header_smallSentence').keyup(function(){
    var value = $('#header_smallSentence').val();
    $('.preview-smallSentence').html(value);
  });

  $(':checkbox').click(function() {                   //enable input wanneer default is afgevinkt
    $('#header_image').attr('disabled',this.checked)
    if ($(':checkbox').is(':checked')) {
      $('.header_default_tmp').css('background-image', 'url(./assets/img/header_backgrounds/default_tmp.jpg)');
      $('.header_hipster_tmp').css('background-image', 'url(./assets/img/header_backgrounds/hipster_tmp.jpg)');
      $('.header_night_tmp').css('background-image', 'url(./assets/img/header_backgrounds/night_tmp.jpg)');
      $('.header_rocky_tmp').css('background-image', 'url(./assets/img/header_backgrounds/rocky_tmp.jpg)');
    }else
    {
      var value = $('#header_image').val();
      $('#header-section:last-child').css('background-image', 'url(' + value + ')');
    }
  });

  $('#header_image').keyup(function() {               //chaneg background url to link
      var value = $('#header_image').val();
      $('#header-section:last-child').css('background-image', 'url(' + value + ')');
    });

});
</script>
</body>
</html>