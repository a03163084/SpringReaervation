<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Contact Us</title>
</head>
<body>

	<div class="section" id="contact">
		<div class="container">
			<div class="col-md-12">
				<h1 class="size-50">Contact Me</h1>
				<div class="h-50"></div>
			</div>
			<div class="col-md-4" data-aos="fade-up">

				<h3>Phone Number</h3>
				<p>0930898327</p>
				<h3>Mobile Numberr</h3>
				<p>(02) 89916209</p>
				<h3>Email</h3>
				<p>a03163084@gmail</p>

				<h3>Social Network</h3>

				<ul class="social">
					<li><a href="#"><i class="fa fa-facebook-f"></i></a></li>
					<li><a href="#"><i class="fa fa-twitter"></i></a></li>
					<li><a href="#"><i class="fa fa-stack-overflow"></i></a></li>
					<li><a href="#"><i class="fa fa-dribbble"></i></a></li>
				</ul>

			</div>
			<div class="col-md-8" data-aos="fade-up">
				<form class="contact-bg" id="contact-form" name="contact"
					method="post" novalidate>
					<input type="text" name="name" class="form-control"
						placeholder="Your Name" /> <input type="email" name="email"
						class="form-control" placeholder="Your E-mail" /> <input
						type="text" name="phone" class="form-control"
						placeholder="Phone Number" />
					<textarea name="message" class="form-control"
						placeholder="Your Message" style="height: 120px">
							</textarea>
					<button id="submit" type="submit" name="submit"
						class="btn btn-glance">Send</button>
					<div id="success">
						<p class="green textcenter">Your message was sent
							successfully! I will be in touch as soon as I can.</p>
					</div>
					<div id="error">
						<p>Something went wrong, try refreshing and submitting the
							form again.</p>
					</div>
				</form>
			</div>
		</div>
	</div>

</body>
</html>