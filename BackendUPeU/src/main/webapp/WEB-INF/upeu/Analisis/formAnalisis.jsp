<%-- 
    Document   : formPeriodo
    Created on : 23-jun-2015, 10:23:00
    Author     : SistemasUpeu
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fm" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
        <link href="<c:url value='/static/css/app.css' />" rel="stylesheet"></link>        
    </head>
    <body>
        <div>

            <form modelAttribute="modeloAnalisis" method="post" action="guardarAnalisis">
                <table>

            
                    <tr>
                        <td><label path="idPaciente">Fecha</label> </td>
                        <td><input path="idPaciente" size="60" /></td>
                    </tr>

                    <tr>
                        <td><label path="notivoConsulta">Descripcion</label> </td>                        
                        <td><input path="notivoConsulta" size="60" /></td>
                    </tr>              

                   
                    
                    <tr>
                        <td><label path="estado">Otros</label> </td>                        
                        <td><input path="estado" size="60" /></td>
                    </tr>  
                     <tr>
                        <td><label path="fecha">Otros</label> </td>                        
                        <td><input path="fecha" size="60" /></td>
                    </tr>  


                    <tr>
                        <td><label path="idPaciente.idPaciente">Paciente</label> </td> 
                            <td>
                            <select path="idPaciente.idPaciente" cssClass="myinput">
                                <option value=""><c:out value="--------------------"/> </option>
                                <c:if test="${!empty ListPaciente}">
                                    <c:forEach var="pa"  items="${ListPaciente}">
                                        <option value="${pa.idPaciente}" >
                                            <c:out value="${pa.idPersona.nombres}"/>
                                        </option>
                                    </c:forEach>
                                </c:if>
                            </select> 
                        </td>
                    </tr>   

  

                    <tr>                        
                        <td colspan="2"><input type="submit" value="Enviar" > </td>
                    </tr>
                </table>                
            </form>         
        </div>
    </body>
</html>
