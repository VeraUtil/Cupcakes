<%--
  Created by IntelliJ IDEA.
  User: emilg
  Date: 16/03/2020
  Time: 10.33
  To change this template use File | Settings | File Templates.
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@include file="/include/header.inc"%>



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

                        <a class="nav-link" href="FrontController?target=redirect&destination=index"><h3>Forside</h3> <span class="sr-only">(current)</span></a>
                </div>

                <li class="nav-item">
                    <ul class="navbar-nav mr-5 mt-20 mt-lg-0">
                        <li class="nav-item active">
                        <a class="nav-link" href="#"><h3>Cupcakes</h3></a>
                        </li>
                    </li>
                        <li class="nav-item">
                            <ul class="navbar-nav mr-5 mt-20 mt-lg-0">
                                <a class="nav-link" href="FrontController?target=redirect&destination=contact"><h3>Kontakt</h3></a>
                                </li>
                                <li class="nav-item">
                                    <ul class="navbar-nav mr-5 mt-20 mt-lg-0">
                                        <div class="col-lg-5">
                                            <a class="nav-link" href="FrontController?target=redirect&destination=cart"><h3>Kurv</h3></a>
                                        </div>
                                        </li>
                                    </ul>
                            </ul>
                    </ul>
            </ul>
        </ul>

        <span class="navbar-text mr-5">
      Email-adresse
    </span>
        <a class="navbar-brand" href="#"> <img src="./images/foto.png" height="70" alt="Logo"></a>
    </div>
</nav>

<div class="container jumbotron ">

    <img src="images/header.png" class="img-fluid" alt="Responsive header image"/>


    <%--        Bare lige se I har en ide om hvad vi forslå I ikke gør ! det hedder scpript lets --%>
    <%--        <% String error = (String) request.getAttribute( "error");--%>
    <%--           if ( error != null) { --%>
    <%--               out.println("<H2>Error!!</h2>");--%>
    <%--               out.println(error);--%>
    <%--           }--%>
    <%--        %>--%>

    <div class="jumbotron mr-5 mt-20 mt-lg-0">
        <h1 class="display-4 text-center">Byg din egen Cupcake!</h1>
        <p class="lead text-left">
            Her har du mulighed for at bygge din egen cupcake - vælg din favorit top og bund.
        </p>
    </div>
    <p class = text-center>

        <select id = "bund">
            <option value ="Vælg Bund">Vælg Bund</option>
            <option value = "1">blåbær</option>
            <option value = "2">vanilje</option>
            <option value = "3">three</option>
            <option value = "4">four</option>
        </select>

        <select id = "topping">
            <option value ="Vælg Topping">Vælg Topping</option>
            <option value = "1">choko</option>
            <option value = "2">creme de la creme</option>
            <option value = "3">three</option>
            <option value = "4">four</option>
        </select>

        <select id = "antal">
            <option value ="Vælg Antal">Vælg Antal</option>
            <option value = "1">5</option>
            <option value = "2">7</option>
            <option value = "3">12</option>
            <option value = "4">15</option>
        </select>
    </p>

    <!-- Example split danger button -->

    <div class="btn-group">
        <button type="button" class="btn btn-danger">Ahhction</button>
        <button type="button" class="btn btn-danger dropdown-toggle dropdown-toggle-split" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
            <span class="sr-only">Toggle Dropdown</span>
        </button>
        <div class="dropdown-menu">
            <a class="dropdown-item" href="">Action</a>
            <a class="dropdown-item" href="#">Another action</a>
            <a class="dropdown-item" href="#">Something else here</a>
            <div class="dropdown-divider"></div>
            <a class="dropdown-item" href="#">Separated link</a>
        </div>
    </div>

    <div class="text-right">

    <a class="btn btn-primary" href="#" role="button">Læg i kurv</a>

    </div>

    <c:if test="${requestScope.error!= null}">

        <h2>Error ! </h2>
        ${requestScope.error}

    </c:if>
</div>


<%@include file="/include/footer.inc"%>