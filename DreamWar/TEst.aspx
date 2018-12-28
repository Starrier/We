<%@ Page Language="C#" AutoEventWireup="true" CodeFile="TEst.aspx.cs" Inherits="TEst" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    
    <!-- Bootstrap Core CSS -->
    <link href="css/css_role/bootstrap.min.css" rel="stylesheet"/>

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">


    <!-- Bootstrap Core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom CSS -->
    <link href="css/modern-business.css" rel="stylesheet">

    <!-- Custom Fonts -->
    <link href="font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css">

  

 
    <!-- Navigation -->
    <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
        <div class="container">
            <!-- Brand and toggle get grouped for better mobile display -->
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Logo Here </a>
            </div>
            <!-- Collect the nav links, forms, and other content for toggling -->
            <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                <ul class="nav navbar-nav navbar-right">
                    <li>
                        <a href="about.html">About</a>
                    </li>
                    <li>
                        <a href="services.html">Services</a>
                    </li>
                    <li>
                        <a href="contact.html">Contact</a>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Portfolio <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="portfolio-1-col.html">1 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-2-col.html">2 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-3-col.html">3 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-4-col.html">4 Column Portfolio</a>
                            </li>
                            <li>
                                <a href="portfolio-item.html">Single Portfolio Item</a>
                            </li>
                        </ul>
                    </li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Blog <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="blog-home-1.html">Blog Home 1</a>
                            </li>
                            <li>
                                <a href="blog-home-2.html">Blog Home 2</a>
                            </li>
                            <li>
                                <a href="blog-post.html">Blog Post</a>
                            </li>
                        </ul>
                    </li>

                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown">Other Pages <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li>
                                <a href="full-width.html">Full Width Page</a>
                            </li>
                            <li>
                                <a href="sidebar.html">Sidebar Page</a>
                            </li>
                            <li>
                                <a href="faq.html">FAQ</a>
                            </li>
                            <li>
                                <a href="404.html">404</a>
                            </li>
                            <li>
                                <a href="pricing.html">Pricing Table</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            </div>
            <!-- /.navbar-collapse -->
        </div>
        <!-- /.container -->
    </nav>

    <!-- Header Carousel -->

    <header id="myCarousel" class="carousel slide">
        <!-- Indicators -->
        <ol class="carousel-indicators">
            <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
            <li data-target="#myCarousel" data-slide-to="1"></li>
            <li data-target="#myCarousel" data-slide-to="2"></li>
        </ol>

        <!-- Wrapper for slides -->
        <div class="carousel-inner">
            <div class="item active">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide One');"></div>
                <div class="carousel-caption">
                    <h2>Text Will Be Displayed Here</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Two');"></div>
                <div class="carousel-caption">
                    <h2>Text Will Be Displayed Here</h2>
                </div>
            </div>
            <div class="item">
                <div class="fill" style="background-image:url('http://placehold.it/1900x1080&text=Slide Three');"></div>
                <div class="carousel-caption">
                    <h2>Text Will Be Displayed Here</h2>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="left carousel-control" href="#myCarousel" data-slide="prev">
            <span class="icon-prev"></span>
        </a>
        <a class="right carousel-control" href="#myCarousel" data-slide="next">
            <span class="icon-next"></span>
        </a>
    </header>


    <!-- Page Content -->
    <div class="container">

        <!-- Marketing Icons Section -->
        <div class="row">
           <section class="wow fadeInRight" data-wow-delay="0.5s">
            <div class="col-lg-12">
                <h1 class="page-header">
                    Welcome to Modern Business
                </h1>
            </div>
          </section>
          
            <div class="col-md-4">
               <section class="wow fadeInDown" data-wow-delay="0.5s" >
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-check"></i> Bootstrap v3.2.0</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
              </section>
            </div>
          
            <div class="col-md-4">
              <section class="wow fadeInDown" data-wow-delay="0.5s">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-gift"></i> Free &amp; Open Source</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
              </section>
            </div>
          
          
            <div class="col-md-4">
              <section class="wow fadeInDown" data-wow-delay="0.5s">
                <div class="panel panel-default">
                    <div class="panel-heading">
                        <h4><i class="fa fa-fw fa-compass"></i> Easy to Use</h4>
                    </div>
                    <div class="panel-body">
                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Itaque, optio corporis quae nulla aspernatur in alias at numquam rerum ea excepturi expedita tenetur assumenda voluptatibus eveniet incidunt dicta nostrum quod?</p>
                        <a href="#" class="btn btn-default">Learn More</a>
                    </div>
                </div>
            </div>
              
           </section>
        </div>
        <!-- /.row -->

        <!-- Portfolio Section -->
        <div class="row">
            <div class="col-lg-12">
                <section class="wow fadeInRight" data-wow-delay="0.5s">
                    <h2 class="page-header">Portfolio Heading</h2>
                </section>
            </div>
            <div class="col-md-4 col-sm-6">
              <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
              </section>
            </div>
            <div class="col-md-4 col-sm-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
                </section>
            </div>
            <div class="col-md-4 col-sm-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
             </section>
            </div>
            <div class="col-md-4 col-sm-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </section>
            </div>
            <div class="col-md-4 col-sm-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </section>    
            </div>
            <div class="col-md-4 col-sm-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
                </section>
            </div>
        </div>
        <!-- /.row -->

        <!-- Features Section -->
        <div class="row">
            <div class="col-lg-12">
                <section class="wow fadeInRight" data-wow-delay="0.5s">
                    <h2 class="page-header">Modern Business Features</h2>
                </section>
            </div>
            <div class="col-md-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <p>The Modern Business template by Start Bootstrap includes:</p>
                <ul>
                    <li><strong>Bootstrap v3.2.0</strong>
                    </li>
                    <li>jQuery v1.11.0</li>
                    <li>Font Awesome v4.1.0</li>
                    <li>Working PHP contact form with validation</li>
                    <li>Unstyled page elements for easy customization</li>
                    <li>17 HTML pages</li>
                </ul>
                <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Corporis, omnis doloremque non cum id reprehenderit, quisquam totam aspernatur tempora minima unde aliquid ea culpa sunt. Reiciendis quia dolorum ducimus unde.</p>
             </section>   
            </div>
            <div class="col-md-6">
                <section class="wow fadeInDown" data-wow-delay="0.5s">
                    <img class="img-responsive" src="http://placehold.it/700x450" alt="">
                </section>
            </div>
        </div>
        <!-- /.row -->

        <hr>

        <!-- Call to Action Section -->
        <div class="well">
            <div class="row">
                <div class="col-md-8">
                    <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Molestias, expedita, saepe, vero rerum deleniti beatae veniam harum neque nemo praesentium cum alias asperiores commodi.</p>
                </div>
                <div class="col-md-4">
                    <a class="btn btn-lg btn-default btn-block" href="#">Call to Action</a>
                </div>
            </div>
        </div>

        <hr>

        <!-- Footer -->
        <footer>
            <div class="row">
                <div class="col-lg-12">
                    <p>Copyright &copy; Your Website 2014</p>
                </div>
            </div>
        </footer>

    </div>
    <!-- /.container -->
  
  <div class="sectiona">
         <!-- Portfolio Section -->
        
        <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <section class="wow fadeInRight" data-wow-delay="0.5s">
                    <h2 class="page-header">Portfolio Heading</h2>
                </section>
            </div>
            <div class="col-md-4 col-sm-6">
              <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
              </section>
            </div>
            <div class="col-md-4 col-sm-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
                </section>
            </div>
            <div class="col-md-4 col-sm-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
             </section>
            </div>
            <div class="col-md-4 col-sm-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </section>
            </div>
            <div class="col-md-4 col-sm-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
            </section>    
            </div>
            <div class="col-md-4 col-sm-6">
            <section class="wow fadeInDown" data-wow-delay="0.5s">
                <a href="portfolio-item.html">
                    <img class="img-responsive img-portfolio img-hover" src="http://placehold.it/700x450" alt="">
                </a>
                </section>
            </div>
        </div>
        
        </div>
    
    

<div id="owl-demo" class="owl-carousel owl-theme">
  <div class="item"><h2>Text Here </h2><p>"Quisque condimentum nec mauris rutrum consectetur… </p>
  </div>
    <div class="item"><h2>Text Here </h2><p>"Quisque condimentum nec mauris rutrum consectetur… </p>
  </div>
    <div class="item"><h2>Text Here </h2><p>"Quisque condimentum nec mauris rutrum consectetur… </p>
  </div>
</div>




  
    <div class="sectionb">
      <div class="container"><link href='https://fonts.googleapis.com/css?family=Roboto' rel='stylesheet' type='text/css'>

<div class="facontainer">
   <section class="wow fadeInDown" data-wow-delay="0.2s"><h2>Get in touch</h2></section>
  <section class="wow fadeInDown" data-wow-delay="0.2s">
  <p>Sed ut perspiciatis unde omnis is natus error sit voluptantium doloremqtium, totam rem aperiam, eaque ipsa quae abtore veritatis et quasi architecto beatae vitae dicta.</p></section>
  
<li class="wow fadeInDown" data-wow-delay="0.6s"><a href="">
  <i class="bd-ra fa fa-google-plus"></i></a>
  </li> 
<li class="wow fadeInDown" data-wow-delay="0.8s"><a href="">
  <i class="bd-ra fa fa-twitter"></i></a>
  </li>
 <li class="wow fadeInDown" data-wow-delay="1s"><a href="">
   <i class="fa fa-facebook"></i></a>
  </li>
     <li class="wow fadeInDown" data-wow-delay="1.2s"><a href="">
       <i class="bd-ra fa fa-pinterest"></i></a>
  </li>
     <li class="wow fadeInDown" data-wow-delay="1.4s"><a href="">
       <i class="bd-ra fa fa-linkedin"></i></a>
  </li>
</div></div>
    </div>   
    
        <!-- /.row -->
  </div>

    <!-- jQuery -->
    <script src="js/jquery.js"></script>

    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>

    <!-- Script to Activate the Carousel -->
    <script>
    $('.carousel').carousel({
        interval: 5000 //changes the speed
    })
    </script>

</body>

</html>

    </form>
</body>
</html>
