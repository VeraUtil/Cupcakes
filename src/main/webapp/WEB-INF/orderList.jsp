
<%@ page import="FunctionLayer.Initialisation" %>
<%@include file="../include/header.inc" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<link rel="stylesheet" href="css/styles.css">

<title>Ordreliste Side</title>
</head>
<body>

<nav class="navbar navbar-expand-lg navbar-light" style="background-color: #F6F8F9;">
    <a class="navbar-brand" href="#"> <img src="./images/logo.png" width="100" height="60" alt="Logo"></a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText"
            aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarText">
        <ul class="navbar-nav mr-auto">
            <ul class="navbar-nav mr-5 mt-60 mt-lg-0">
                <div class="col-lg-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="FrontController?target=redirect&destination=admin"><h3>
                            Admin</h3>
                            <span class="sr-only">(current)</span></a>
                </div>
                </li>
                <li class="nav-item">
                    <ul class="navbar-nav mr-5 mt-20 mt-lg-0">
                        <li class="nav-item">
                            <a class="nav-link" href="FrontController?target=redirect&destination=customerList"><h3>
                                Kundeliste</h3></a>
                        </li>
                        <li class="nav-item">
                            <ul class="navbar-nav mr-5 mt-20 mt-lg-0">
                                <li class="nav-item active">
                                    <a class="nav-link" href="FrontController?target=redirect&destination=orderList">
                                        <h3>Ordreliste</h3></a>
                                </li>
                            </ul>
                    </ul>
            </ul>
        </ul>
        </ul>

        <span class="navbar-text mr-5">
            ${sessionScope.email}
        </span>
        <%@include file="../include/dropdownMenu.inc" %>
    </div>
</nav>

<div class="container jumbotron" style="text-align: center;">
    <h2 style="margin-bottom: 15px;">Vælg ordren du vil se info om </h2>

    <div class="col-12">
        <div class="col-md-auto">
            <form action="FrontController" method="POST">
                <input type="hidden" name="target" value="orderList">
                <div class="form-group">
                    <input type="number" class="form-control w-50 p-3" style="margin-left: auto; margin-right: auto;" name="orderSearchID" placeholder="Indtast Ordre ID..."/>
                    ${requestScope.BeskedSearchOrderID}
                </div>
                <input class="btn btn-primary mb-3" type="submit" value="Søg">
                <div class="container" style="border: 1px solid #A3A3A3;">
                    <div class="container">
                        <ul class="lead" style="padding-bottom: 20%; margin-bottom: 0;">
                            ${sessionScope.orders.toStringAdmin()}
                        </ul>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>

<%@include file="../include/footer.inc" %>>