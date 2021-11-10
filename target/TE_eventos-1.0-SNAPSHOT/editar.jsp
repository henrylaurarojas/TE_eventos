<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Evento"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
Evento eve = (Evento)request.getAttribute("eve");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>MODIFICAR</title>
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
        <h1><c:if test="${eve.id==0}">
             Nuevo Seminario   
            </c:if>
        <h1><c:if test="${eve.id!=0}">
             Modificar Seminario 
            </c:if>
            </h1>
        <form action="MainController" method="post">
            <input type="hidden" name="id" value="${eve.id}">
            <table>
                <tr>
                    <td>TITULO:</td>
                    <td><input type="text" name="titulo" value="${eve.titulo}"></td>
                </tr>
                <tr>
                    <td>EXPOSITOR:</td>
                    <td><input type="text" name="expositor" value="${eve.expositor}"></td>
                </tr>
                <tr>
                    <td>FECHA:</td>
                    <td><input type="text" name="fecha" value="${eve.fecha}"></td>
                </tr>
                <tr>
                    <td>HORA:</td>
                    <td><input type="text" name="hora" value="${eve.hora}"></td>
                </tr>
                <tr>
                    <td>CUPO:</td>
                    <td><input type="number" name="cupo" value="${eve.cupo}"></td>                  
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" name="Enviar"></td>
                </tr>
            </table>
            <a href="MainController">Inicio</a>
        </form>
    </body>
</html>
