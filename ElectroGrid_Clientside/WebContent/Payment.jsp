<%@page import="model.Payment"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Payment Management</title>

<link rel="stylesheet" href="Views/bootstrap.min.css"> 
<link rel="stylesheet" type="text/css" href="css\footer.css"> 
<script src="components/jquery-3.6.0.js"></script>
<script src="components/pay.js"></script>



<nav class="navbar navbar-expand-md navbar-dark" style="background-color: 	#5353ff">
                   

                    <ul class="navbar-nav">
                        <li><a href="Index.jsp" class="nav-link">ElectroGrid Online Platform</a></li>
                    </ul>
                </nav>
</head>
<body>


<br>
<br>


<div class="container"> 
		<div class="row">  
		 <br>
            <div class="container col-md-5">
                <div class="card">
                    <div class="card-body">
                       

                        <caption>
                            <h2>
                                Payment Management
                            </h2>
                        </caption>  
				
				<form id="formPayment" name="formPayment" method="post" action="Payment.jsp">  
					Payment Date:  
					<input id="PaymentDate" name="PaymentDate" type="text" class="form-control form-control-sm">  
					
					<br> 
					Payment Type:  
					<input id="PaymentType" name="PaymentType" type="text" class="form-control form-control-sm">  
					
					<br>
					 Amount:  
					 <input id="Amount" name="Amount" type="text" class="form-control form-control-sm">  
					 
					 <br> 
					 Card Number:  
					 <input id="CardNumber" name="CardNumber" type="text" class="form-control form-control-sm">  
					 
					
					 
					 
					 <br>  
					 <input id="btnSave" name="btnSave" type="button" value="Save" class="btn btn-primary">  
					 <input type="hidden" id="hidPaymentIDSave" name="hidPaymentIDSave" value=""> 
					 
				</form> 
				
				  </div>
                </div>
            </div>
				
				<div id="alertSuccess" class="alert alert-success"></div>  
				<div id="alertError" class="alert alert-danger"></div> 
				
				<br>
					
				
            <div class="row">
               

                <div class="container">
                    <h3 class="text-center">Payment Details</h3>
                    <hr>
                    <div class="container text-left">

                     
                    </div>
                    <br>
                   <div id="divItemsGrid">   
					<%    
					    Payment paymentObj = new Payment();
						out.print(paymentObj.readPayment());   
					%>  
					
					
					<br><br><br>
					  <a href="Index.jsp" class="btn btn-success"style="background-color: 	#5353ff">Navigate To Home Page</a>
					</div> 
                   
                </div>
            </div>
				  
 			</div>
 		 
 		</div>   
 		 <br>
</body>

 <br>
 <!-- Site footer -->
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">Weerasinghe.H.P.E.N <i> </i> Electro Grid (EG) is the company who maintains the power grid of the country.Our task was to create the online platform by covering the whole scope of the company.I used java , tomcat , mysql and JAX-RS Restful webservice as our tools to create our platform..</p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Categories</h6>
            <ul class="footer-links">
              <li><a href="Payment.jsp">Payment Management</a></li>
            
             
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="Index.jsp">HomePage</a></li>
              <li><a href="">Contact Us</a></li>
              <li><a href="">Contribute</a></li>
              <li><a href="">Privacy Policy</a></li>
              
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2022 All Rights Reserved by 
         <a href="#">Weerasinghe.H.P.E.N</a>.
            </p>
          </div>
          <script src="https://kit.fontawesome.com/8f62d1ff80.js" crossorigin="anonymous"></script>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>
</html>