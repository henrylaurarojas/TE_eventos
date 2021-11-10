<%@page import="com.emergentes.modelo.Evento"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Evento eve = (Evento)request.getAttribute("eve");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>INICIO</title>
    </head>
    <body>
        <table border="2" style="margin: 0 auto;">
            <tr>
                <td>
                    SEGUNDO PARCIAL TEM-742<br><br>
                    Nombre: Henry Laura Rojas<br>
                    Carnet: 9205630 LP
                </td>
            </tr>
        </table>
        <h1>Registro de Seminarios</h1>
        <a href="MainController?op=nuevo">Nuevo</a>
        <table border="1">
            <tr>
                <th>ID</th>
                <th>TÍTULO</th>
                <th>EXPOSITOR</th>
                <th>FECHA</th>
                <th>HORAS</th>
                <th>CUPOS</th>
                <th>MODIFICAR</th>
                <th>ELIMINAR</th>
            </tr>
            <c:forEach var="item" items="${lista}">
            <tr>
                <td>${item.id}</td>
                <td>${item.titulo}</td>
                <td>${item.expositor}</td>
                <td>${item.fecha}</td>
                <td>${item.hora}</td>
                <td>${item.cupo}</td>
                <td><a href="MainController?op=editar&id=${item.id}">Modificar</a></td>
                <td><a href="MainController?op=eliminar&id=${item.id}"
                       onclick="return(confirm('Está seguro de eliminar'))">Eliminar</a></td>   
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
