<ul>
	% for business in businesses:
		% name = business['name']
		% image = business['image_url']
		% rating = business['rating']
		% rating_image = business['rating_img_url_large']
		<li>{{name}}</li>
		<img src="{{image}}" alt={{name}}>
		<img src="{{rating_image}}" alt="{{rating}} stars">
	% end
</ul>