<%@page import="com.ctl.entities.User"%>
<% 
User user=new User();

%>
<nav class="primary-background navbar  navbar-expand-lg navbar-dark">
    <a class="navbar-brand" href="index.jsp"><span class="fa fa-handshake-o"></span>CLT</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
        <ul class="navbar-nav mr-auto">
            
            <li class="nav-item">
                <a class="nav-link" href="#"> <span class="fa fa-address-card-o"></span>Contact Us</a>
            </li>
            
             <li class="nav-item">
                <a class="nav-link" href="Login.jsp"> <span class="fa fa-user-circle "></span>Login</a>
            </li>
            
             <li class="nav-item">
                <a class="nav-link" href="Sign Up.jsp"> <span class="fa fa-user-plus "></span>Sign Up</a>
            </li>
             <li class="nav-item">
                <a class="nav-link" href="Profile.jsp"> <span class="fa fa-user-circle" ></span>Profile</a>
            </li>
        </ul>
       
         
        <form class="form-inline my-2 my-lg-0">
            <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
            <button class="btn btn-outline-light my-2 my-sm-0 " type="submit">Search</button>
        </form>
    </div>
</nav>
