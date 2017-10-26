<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<spring:url var="css" value="/resources/css"></spring:url>
<spring:url var="js" value="/resources/js"></spring:url>
<spring:url var="images" value="/resources/images"></spring:url>

<c:set var="contextRoot" value="${pageContext.request.contextPath}"></c:set>

<!DOCTYPE html>
<html lang="en">

  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Sri Jewellery->${title}</title>
    
    <script>
   			 window.menu='${title}';
    </script>

    <!-- Bootstrap core CSS -->
    <link href="${css}/bootstrap.min.css" rel="stylesheet">
    
   <%--  <!-- Bootstrap readable theme -->
    <link href="${css}/bootstrap-readable-theme.css" rel="stylesheet"> --%>

    <!-- Custom styles for this template -->
    <link href="${css}/myapp.css" rel="stylesheet">

  </head>

  <body>
  <div class="wrapper">

    <!-- Navigation -->
    <%@include file="./shared/header.jsp"%>
  
  
    <div class="content">
    <!-- Only wgen user clicks on Home -->
    <c:if test="${userClickOnMain==true}">
    <!-- Page Content -->
    <%@include file="./shared/main.jsp" %>
    </c:if>
    
    <!-- Only wgen user clicks on About -->
     <c:if test="${userClickOnAbout==true}">
    <!-- Page Content -->
    <%@include file="about.jsp" %>
    </c:if>
    
    <!-- Only wgen user clicks on Products -->
    <%--  <c:if test="${userClickOnProducts==true}">
    <!-- Page Content -->
    <%@include file="products.jsp" %>
    </c:if> --%>
    
    <!-- Only wgen user clicks on Contact -->
    <c:if test="${userClickOnContact==true}">
    <!-- Page Content -->
    <%@include file="contact.jsp" %>
    </c:if>
    </div>
    
    
    
    <!-- Footer -->
   <%@include file="./shared/footer.jsp"%>
    <!-- Bootstrap core JavaScript -->
    <script src="${js}/jquerry.js"></script>
    <script src="${js}/bootstrap.bundle.min.js"></script>
     <script src="${js}/myapp.js"></script>
</div>
  </body>

</html>
