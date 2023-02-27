<%@ page language="java" contentType="text/html; charset=windows-1256" pageEncoding="windows-1256"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>
<head>
<div class="card card-hover">
  <div class="card-body">
<meta http-equiv="Content-Type" content="text/html; charset=windows-1256">
<h5 class="card-title" >recherche </h5>
<style>
.card-hover {
  transition: box-shadow 0.3s ease-in-out;
}

.card-hover:hover {
  box-shadow: 0 10px 25px rgba(0, 0, 0, 0.5);
}

.card-body {
  padding: 1.25rem;
  margin: 150px;
}

.card-title {
  margin-bottom: 0.75rem;
  font-size: 1.25rem;
  font-weight: bold;
}
</style>
</head>
<body>
 <form action="controleur" method="post">
 <input type="text" class="form-control" name="motCle" value="${modele.motCle}">
 <input type="submit" value="OK" class="btn btn-primary">
 </form>
 <table border="1" width="80%">
 <tr>
 <th>ID</th> <th>Nom</th> <th>Prix</th>
 </tr>
 <c:forEach items="${modele.produits}" var="p">
 <tr>
 <td>${p.idProduit}</td>
 <td>${p.nomProduit}</td>
 <td>${p.prix}</td>
 </tr>
 </c:forEach>
 </table>
</body>
</html>