<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
        <link href="css/style.css" rel="stylesheet" type="text/css"/>
        </head>
        <body>
            <nav class="navbar navbar-expand-md navbar-dark bg-dark">
            <div class="container">
                <a  href="home"><img src="image/99a1bce8ac985ec60789.jpg" alt="" width="150" height="150" /></a> <a style="color: orange">CLOTHES STORE</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarsExampleDefault" aria-controls="navbarsExampleDefault" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-end" id="navbarsExampleDefault">
                    <ul class="navbar-nav m-auto">
                        <c:if test="${account1==null}">
                            <li class="nav-item">
                            <a class="nav-link" href="adminlogin.jsp">Login</a>
                        </li>
                        </c:if>
                        <c:if test="${account1!=null}">
                        <li class="nav-item">
                            <a class="nav-link" href="Logout">LogOut</a>
                        </li>
                        </c:if>
                        <c:if test="${account1!=null}">
                        <li class="nav-item">
                            <a class="nav-link text-success" href="adminlogin.jsp">Hello ${account1.userName}</a>
                        </li>
                        </c:if>
                       <li class="nav-item">
                            <a class="nav-link text-success" href="Login.jsp">Login As Customer</a>
                        </li>
                    </ul>

                    
                </div>
            </div>
        </nav>
        <section style="background-color: #000" class="jumbotron text-center">
            <div class="container">
                <h1 style="font-style: italic; font-family: serif; font-weight: bold;font-size: 65px;color: white " class="jumbotron-heading">In life if you are runner up then I will make you first </h1>
                <p style="font-style: italic; font-family: serif;font-size: 35px;color:blue  " class="lead text-muted mb-0">Beautiful clothes are your passport to happiness</p>
            </div>
        </section>
            <div class="container">
                <div class="row">
                    <div class="col">
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="admin">Home</a></li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
            <div class="container">
                <div class="row">
                    <div class="col-sm-3">
                        <div class="card bg-light mb-3">
                            <div class="card-header bg-primary text-white text-uppercase"><i class="fa fa-list"></i> Manager</div>
                            <ul class="list-group category_block">
                            
                                <li class="list-group-item text-white">
                                    <a href="CustomerManager">Customer Manager</a>
                                </li>
                                <li class="list-group-item text-white">
                                    <a href="ProductManager">Product Manager</a>
                                </li>
                                <li class="list-group-item text-white">
                                    <a href="BillManager">Bill Manager</a>
                                </li>
                        </ul>
                    </div>
                   
                 
                </div>

                <div class="col-sm-9">
                    <div class="row">
                        <table style="background-color: pink" border="1">
                            <thead>
                                <tr>
                                    <th>BID</th>
                                    <th>Product Name</th>
                                    <th>Customer Name</th>>
                                    <th>Quantity</th>
                                    <th>Price(/1 product)</th>
                                </tr>
                            </thead>
                          
                            <c:forEach var="o1" items="${listBD}">
                                <tr>
                                         <td>${o1.bid}</td>
                                         <td>${o1.pid}</td>
                                         <td>${o1.namec}</td>
                                         <td>${o1.quantity}</td>
                                         <td>${o1.price}</td>
                                         
                                </tr>
                                </c:forEach>
                         
                        </table>
                        

                    </div>
                     <a href="BillManager">Back to Bill Manager</a>
                </div>
                   
            </div>
        </div>
            

        <!-- Footer -->
        <footer class="text-light">
            <div class="container">
                <div class="row">
                    <div class="col-md-3 col-lg-4 col-xl-3">
                        <h5>About</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <p class="mb-0">
                            Chúng tôi mang đến cho bạn những sản phẩm chất lượng và dịch vụ tốt nhất
                        </p>
                    </div>

                    <div class="col-md-2 col-lg-2 col-xl-2 mx-auto">
                        <h5>Informations</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><a href="https://www.instagram.com/mm.leduc/">Instagram</a></li>
                            <li><a href="https://www.facebook.com/thunderclapran/">FaceBook</a></li>
                        </ul>
                    </div>

                    <div class="col-md-4 col-lg-3 col-xl-3">
                        <h5>Contact</h5>
                        <hr class="bg-white mb-2 mt-0 d-inline-block mx-auto w-25">
                        <ul class="list-unstyled">
                            <li><i class="fa fa-home mr-2"></i> 19009198</li>
                            <li><i class="fa fa-envelope mr-2"></i> thunderclapran@gmail.com</li>
                            <li><i class="fa fa-phone mr-2"></i> 0374295268</li>
                        </ul>
                    </div>
                    <div class="col-12 copyright mt-3">
                        
                        <p class="text-right text-muted">created with <i class="fa fa-heart"></i> by <a href="https://www.facebook.com/thunderclapran/"><i>Lê Minh Đức</i></a> | <span>HÀ NỘI</span></p>
                    </div>
                </div>
            </div>
        </footer>
    </body>
</html>
