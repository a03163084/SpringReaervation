<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home37</title>
<link rel="icon" href="img/favicon.ico" type="image/x-icon">
<!-- Bootstrap -->
<link rel="stylesheet"
	href="https://www.jq22.com/jquery/bootstrap-3.3.4.css">
<link rel="stylesheet"
	href="https://www.jq22.com/jquery/font-awesome.4.6.0.css">
<link href="css/animate.min.css" rel="stylesheet">
<link href="css/aos.css" rel="stylesheet">
<!-- main style -->
<link href="css/style37.css" rel="stylesheet">
</head>
<body style="font-family: 微軟正黑體">

	<!-- Preloader -->
	<div id="preloader">
		<div id="status">

			<div class="preloader" aria-busy="true"
				aria-label="Loading, please wait." role="progressbar"></div>

		</div>
	</div>
	<!-- ./Preloader -->


	<!-- header -->
	<jsp:include page="/WEB-INF/pet/fragment/top37.jsp" />

	<!-- ./header -->
	<!-- home -->
	<div class="section" id="home" data-stellar-background-ratio="0.5">
		<div class="container">
			<div class="disply-table">
				<div class="table-cell" data-aos="fade-up" data-aos-delay="0">
					<h4>寵物美容預約系統</h4>
					<h1>HappyTail</h1>
				</div>
			</div>
		</div>
	</div>
	<!-- ./home -->

	<!-- about -->
	<div class="section" id="about">
		<div class="container">
			<div class="col-md-6" data-aos="fade-up">
				<h1 class="size-50">
					Know <br /> About me
				</h1>
				<div class="h-50"></div>
				<h3>HappyTail提供專業的寵物美容服務</h3>
				<h3></h3>
				<div class="h-50"></div>
				<img src="img/123.jpg" width="230" alt="" />
				<div class="h-50"></div>
			</div>
			<div class="col-md-6 about-img-div">
				<div class="about-border" data-aos="fade-up" data-aos-delay=".5"></div>
				<img src="img/about-img.jpg" width="400" class="img-responsive"
					alt="" align="right" data-aos="fade-right" data-aos-delay="0" />
			</div>
		</div>
	</div>
	<!-- ./about -->

	<!-- experience  -->
	<div class="section" id="experience">
		<div class="container">
			<div class="col-md-12">
				<H1 class="size-50">Reservation</H1>
				<div class="h-50"></div>
			</div>
			<div class="col-md-12">
				<ul class="timeline">
					<li class="timeline-event" data-aos="fade-up"><label
						class="timeline-event-icon"></label>
						<div class="timeline-event-copy">
							<p class="timeline-event-thumbnail">Address</p>
							<h3>welcome To</h3>
							<h4>HappyTail</h4>
							<p>
								<iframe
									src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3615.2719630701636!2d121.53986731495814!3d25.02484298397663!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x3442aa29379b8db9%3A0x6c7f37e71cce4568!2z6LOH562W5pyD!5e0!3m2!1szh-TW!2stw!4v1589437355016!5m2!1szh-TW!2stw"
									width="600" height="450" frameborder="0" style="border: 0;"
									allowfullscreen="" aria-hidden="false" tabindex="0"></iframe>
							</p>
						</div></li>
				</ul>

				<ul class="timeline">
					<li class="timeline-event" data-aos="fade-up"><label
						class="timeline-event-icon"></label>
						<div class="timeline-event-copy">
							<p class="timeline-event-thumbnail">Reservation</p>
							<h3></h3>
							<h4>立即預約</h4>
							<div
								style="width: 600px; border-width: 3px; border-style: dashed; border-color: #B2CEDF; padding: 50px;">
								<form method='post' action='insertSuccess'
									style="margin-left: 80px; font-size: 20px">
									選擇服務 : <input type="radio" name='sortId' value="1"> 剪髮
									<input type="radio" name='sortId' value="2"> 洗髮 <input
										type="radio" name='sortId' value="3"> 洗剪 <input
										type="radio" name='sortId' value="4"> SPA<br>
									<br> 寵物品種 : <input type="text" name='breed'><br>
									<br> 寵物名稱 : <input type="text" name='petName'><br>
									<br> 寵物性別 : <input type="radio" name='petGenger'
										value="man">公 <input type="radio" name='petGenger'
										value="girl">母<br>
									<br> 寵物年紀 : <input type="number" min="1" name='petAge'><br>
									<br> 預約日期 : <input type='date' min="2020-06-12"
										name='createDate'><br>
									<br> 時間 : <select name='availableDateTime'>
										<option value='13'>13:00</option>
										<option value='14'>14:00</option>
										<option value='15'>15:00</option>
										<option value='16'>16:00</option>
										<option value='17'>17:00</option>
										<option value='18'>18:00</option>
										<option value='19'>19:00</option>
										<option value='20'>20:00</option>
										<option value='21'>21:00</option>
									</select><br>
									<br> 需求 : <input type="text" name='require'><br>
									<br> <input type="hidden" name='done' value='N'> <input
										type="submit" name='statuss' value="預約"
										style="margin-left: 140px">
								</form>
							</div>
						</div></li>
				</ul>

			</div>
		</div>
	</div>
	<!-- ./experience -->



	<!-- projects -->
	<div class="section" id="projects">
		<div class="container">
			<div class="col-md-12">

				<h1 class="size-50">Introduction</h1>
			</div>
			<!-- main container -->
			<div class="main-container portfolio-inner clearfix">
				<!-- portfolio div -->
				<div class="portfolio-div">
					<div class="portfolio">
						<!-- portfolio_filter -->
						<div class="categories-grid wow fadeInLeft">
							<nav class="categories">
								<ul class="portfolio_filter">
									<li><a href="" class="active" data-filter="*">All</a></li>
									<li><a href="" data-filter=".photography">Shampoo</a></li>
									<li><a href="" data-filter=".logo">Haircut</a></li>
									<li><a href="" data-filter=".graphics">SPA</a></li>

								</ul>
							</nav>
						</div>
						<!-- portfolio_filter -->

						<!-- portfolio_container -->
						<div class="no-padding portfolio_container clearfix"
							data-aos="fade-up">
							<!-- single work -->
							<div class="col-md-4 col-sm-6  fashion logo">
								<a id="demo01" href="#animatedModal" class="portfolio_item">
									<img src="img/portfolio/111.jpg" alt="image"
									class="img-responsive" style="height: 250px" />
									<div class="portfolio_item_hover">
										<div class="portfolio-border clearfix">
											<div class="item_info">
												<span>Haircut</span> <em>NT$ 300</em>
											</div>
										</div>
									</div>
								</a>
							</div>
							<!-- end single work -->

							<!-- single work -->
							<div class="col-md-4 col-sm-6 ads graphics">
								<a id="demo02" href="#animatedModal" class="portfolio_item">
									<img src="img/portfolio/3333.jpg" alt="image"
									class="img-responsive" style="height: 250px" />
									<div class="portfolio_item_hover">
										<div class="portfolio-border clearfix">
											<div class="item_info">
												<span>Shampoo</span> <em>NT$ 100</em>
											</div>
										</div>
									</div>
								</a>
							</div>
							<!-- end single work -->

							<!-- single work -->
							<div class="col-md-4 col-sm-6 photography">
								<a id="demo03" href="#animatedModal" class="portfolio_item">
									<img src="img/portfolio/02.jpg" alt="image"
									class="img-responsive" style="height: 250px" />
									<div class="portfolio_item_hover">
										<div class="portfolio-border clearfix">
											<div class="item_info">
												<span>SPA</span> <em>NT$ 700</em>
											</div>
										</div>
									</div>
								</a>
							</div>
							<!-- end single work -->




						</div>
						<!-- end portfolio_container -->
					</div>
					<!-- portfolio -->
				</div>
				<!-- end portfolio div -->
			</div>
			<!-- end main container -->
		</div>
	</div>
	<!-- ./projects -->

	<!-- Evaluation -->

	<div class="section" id="evaluation">
		<div class="container">
			<div class="col-md-12">
				<h1 class="size-50">Evaluation</h1><br>
			</div>
			</div>
	</div>
			<div style="margin-left:150px">
				<h2>${scoreAvg}</h2>
			</div><br><br><br>
			
			
			<div style='height:350px;margin-left:50px;white-space: nowrap;text-align: center;'>
			<marquee direction="right" width="700px" >
			<c:forEach var="View" items="${Evaluation}" >
				
					<div style='border:1px #C3EADF solid;width:200px;text-align: center;
					display: inline-block;white-space:normal;font-size:20px;
					padding:20px;margin-right:20px;'>
						${View.score}<hr style="width:150px;">${View.content}
					</div> 	
			</c:forEach>
			</marquee>
			</div>
			
		


	<!-- Evaluation -->

	<!-- contact -->

	<jsp:include page="/WEB-INF/pet/fragment/contactUs.jsp" />

	<!-- ./contact -->

	<!--DEMO01-->
	<div id="animatedModal" class="popup-modal">
		<!--THIS IS IMPORTANT! to close the modal, the class name has to match the name given on the ID -->
		<div id="btn-close-modal"
			class="close-animatedModal close-popup-modal">
			<i class="ion-close-round"></i>
		</div>
		<div class="clearfix"></div>
		<div class="modal-content">
			<div class="container">
				<div class="portfolio-padding">
					<div class="col-md-8 col-md-offset-2">
						<h2>
							Geschäfts Eines<br /> Web-Studios
						</h2>
						<div class="h-50"></div>
						<p>Appropriately maintain standards compliant total linkage
							with cutting-edge action items. Enthusiastically create seamless
							synergy rather than excellent value. Quickly promote premium
							strategic theme areas vis-a-vis.</p>
						<p>Appropriately maintain standards compliant total linkage
							with cutting-edge action items. Enthusiastically create seamless
							synergy rather than excellent value.</p>
						<br /> <br /> <img src="img/portfolio/02.jpg" alt=""
							class="img-responsive" /> <br /> <br />
						<p>Appropriately maintain standards compliant total linkage
							with cutting-edge action items. Enthusiastically create seamless
							synergy rather than excellent value. Quickly promote premium
							strategic theme areas vis-a-vis.</p>
						<p>Appropriately maintain standards compliant total linkage
							with cutting-edge action items. Enthusiastically create seamless
							synergy rather than excellent value.</p>
						<br /> <br />
					</div>
				</div>
			</div>
		</div>
	</div>



	<!-- jQuery -->
	<script src="https://www.jq22.com/jquery/jquery-1.10.2.js"></script>
	<!--  plugins  -->
	<script src="https://www.jq22.com/jquery/bootstrap-3.3.4.js"></script>
	<script src="js/plugins.js"></script>
	<script src="js/aos.js"></script>

	<script src="js/jquery.validate.min.js"></script>

	<!--  main script  -->
	<script src="js/custom.js"></script>
</body>
</html>