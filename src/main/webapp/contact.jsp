<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Main Page</title>
    <link rel="stylesheet" href="css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="css/magnific-popup.css" type="text/css">
    <link rel="stylesheet" href="css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="css/style.css" type="text/css">
    <link rel="stylesheet" href="css/contact.css" type="text/css">
    
     <script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
	  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
    
</head>
<body>
     	 <%@ include file="header.jsp" %>
    	<div>
		    <section class="contact spad">
						<div class="section-title  text-center">
							<h4 style="font-size: 35px">Contact Us</h4>
						</div>
				<div class="container border rounded p-4 shadow-lg mb-5">
					<div style="padding:100px">
					<h2 class="mb-4" style="text-align: left; color: #1570b8;font-weight: 600;">Have a Question?</h2>
					<p style="text-align: left;font-size: 20px;font-family: emoji;color: black;">Complete the following form and we will get back to you with an answer or the contact information for someone who can assist you.</p>
					</div>
				    <div class="custom-image-container col-md-4">
				        <picture class="d-inline-block mt-4 mt-md-0">
				            <img loading="lazy" class="img-fluid" src="Images/gurls.jpg" title="international-students" alt="Two international students standing outside looking at a phone and smiling.">
				        </picture>
				    </div>
				</div>
		   
		            
	             <div class="col-lg-12 col-md-12">
				    <div class="contact__content">
				        <div class="contact__address">
				            <div class="card mx-auto" style="max-width: 600px; border: 1px solid #e1e1e1; border-radius: 10px; box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);">
				                <div class="card-body">
				                    <div class="contact__form">
				                        <h5 class="text-center">Submit A Question</h5>
				                            <p><strong>* Indicates a required field</strong></p>
				                        
				                        <form action="ContactUs" method="post">
				                            <div class="form-group">
				                                    <label for="name">* Name:</label>
				                            
				                                <input type="text" name="name" class="form-control"  id="name">
				                            </div>
				                            <div class="form-group">
				                                    <label for="email">* Email:</label>
				                            
				                                <input type="email" name="email" class="form-control"  id="mail">
				                            </div>
				                            <div class="form-group">
				                                    <label for="message">* Message:</label>
				                            
				                                <textarea class="form-control" name="message" id="message"></textarea>
				                            </div>
				                            <button type="submit" class="btn btn-primary btn-block">Send Message</button>
				                        </form>
				                    </div>
				                </div>
				            </div>
				        </div>
				    </div>
				</div> 

		            
		  
		                
		    </section>
		  </div>
		    
    

			        <jsp:include page="footer.jsp" />
    
</body>
</html>