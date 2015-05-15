
<!DOCTYPE html 
     PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
     "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd"> 
 
<html lang="en"> 
<head> 
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <title>Boba Finder</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.4/css/bootstrap.min.css">
</head>

	<style>
	h1 {
		font-family: Verdana, Arial, Helvetica, sans-serif;
	}
	p {
		font-family: Verdana, Arial, Helvetica, sans-serif;
	}
	.carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 70%;
      margin: auto;
  }
	</style>
	<body>
		<div class="container">
			<div class="page-header">
				<h1>Boba Finder</h1>
				<p class="lead">Find the best boba near you!</p>
			</div>
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
				<ol class="carousel-indicators">
					% for i in range(len(businesses)):
						% if i == 0:
							<li data-target="#myCarousel" data-slide-to="{{i}}" class="active"></li>
						% else:
							<li data-target="#myCarousel" data-slide-to="{{i}}"></li>
						% end
					% end
				</ol>

				<!-- The contents -->
				<div class="carousel-inner" role="listbox">
				% for i,business in enumerate(businesses):
					% name = business['name']
					% image = business['image_url']
					% rating = business['rating']
					% rating_image = business['rating_img_url_small']
					% if i == 0:
						<div class="item active">
							<h3>{{name}}</h3>
							<img src="{{rating_image}}" alt="{{rating}} stars">
							<img src="{{image}}" alt={{name}}>
						</div>
					% else:
						<div class="item">
							<h3>{{name}}</h3>
							<img src="{{rating_image}}" alt="{{rating}} stars">
							<img src="{{image}}" alt={{name}}>
						</div>
					% end								
				% end
				</div>

				 <!-- Left and right controls -->
		    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
		      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
		      <span class="sr-only">Previous</span>
		    </a>
		    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
		      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
		      <span class="sr-only">Next</span>
		    </a>
			</div>
		</div>
	</body>
</html>