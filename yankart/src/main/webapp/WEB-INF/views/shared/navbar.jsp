<!-- Navigation -->
<%@taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<nav class="navbar navbar-inverse navbar-fixed-top " role="navigation">
	<div class="container">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse"
				data-target="#bs-example-navbar-collapse-1">
				<span class="sr-only">Toggle navigation</span> <span
					class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="${contextRoot}/home"><img src="${images}/frontlogo.png" alt="yan" width="200px" height="20px"/><img src="${images}/logo.jpeg" alt="kart" width="200px" height="24px"/></a>
		</div>

		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li id="home"><a href="${contextRoot}/home">HOME</a></li>
			
				<li id="listProducts"><a
					href="${contextRoot}/show/all/products">VIEW PROUDCTS</a></li>

		<security:authorize access="hasAuthority('ADMIN')">
	                    <li id="manageProducts">
	                        <a href="${contextRoot}/manage/products">Manage Products</a>
	                    </li>
                    </security:authorize>
                </ul>
                
                <ul class="nav navbar-nav navbar-right">      
                	<!-- - -->
				<li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-expanded="false">More Info <span class="caret"></span></a>
          <ul class="dropdown-menu" role="menu">
           
            <li class="divider"></li>
            <li id="about"><a href="${contextRoot}/about">ABOUT</a></li>
            <li class="divider"></li>
           <li id="contact"><a href="${contextRoot}/contact">CONTACT</a></li>
          </ul>
        </li>
				<!--  -->          
                    <security:authorize access="isAnonymous()">
	                    <li id="register">
	                        <a href="${contextRoot}/register">Sign Up</a>
	                    </li>                
	                    
	                    <li id="login">
	                        <a href="${contextRoot}/login">Login</a>
	                    </li> 
                    </security:authorize>
                    
                    <security:authorize access="isAuthenticated()">
                    <li class="dropdown" id="userCart">
                    
                    	<a href="javascript:void(0)"
                    		class="btn btn-default dropdown-toggle"
                    		id="dropdownMenu1" 
                    		data-toggle="dropdown">
                    			
                    			${userModel.fullName}
                    			<span class="caret"></span>
                    		
                    	</a>
                    	
                    	<ul class="dropdown-menu">
                    		
                    		
                    		<security:authorize access="hasAuthority('USER')">
	                    		<li>
	                    			<a href="${contextRoot}/cart/show" >
	                    				
	                    				<span class="glyphicon glyphicon-shopping-cart"></span>
	                    				<span class="badge">${userModel.cart.cartLines}</span>
	                    				- &#8377; ${userModel.cart.grandTotal}
	                    			
	                    			</a>
	                    		</li>
	                    		
	                    		<li class="divider" role="separator"></li>
	                    		
                    		</security:authorize>
                    		<li>
                    			<a href="${contextRoot}/perform-logout">Logout</a>
                    		</li>
                    	
                    	</ul>

                    </li>
					</security:authorize>
                </ul>
                
                
            </div>
	</div>
</nav>
<!-- / Navigation -->

<script>
	
		window.userRole = '${userModel.role}';	
	
	</script>
	
