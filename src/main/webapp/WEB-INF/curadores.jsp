<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/jspf/cabecalho.jspf" %>


<title>Curadores</title>
</head>

<body>

  
    <br/>
    <h3 class="text-center">Lista de Curadores</h3>
    <br/>
    <table class="table table-hover">
        <thead>
            <tr class="text-center">
                <th>Usu�rio</th>
                <th>Total de Avalia��es de Coment�rios</th>
                <th>Total de Avalia��es Negativas</th>
                <th>�ndice Percentual</th>
                
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${empty curadores}">
                <h2 class="text-center text-success">N�o h� curadores no sistema.</h2>
                </c:when>
                <c:otherwise>
                    <c:forEach var="curador" items="${curadores}">
                        <tr class="text-center">
                            <td>${curador.usuario.nome}</td> 
                            <td>${curador.totalPositivas}</td> 
                            <td>${curador.totalNegativas}</td> 
                            <td>${curador.total} %</td>                          
                        </tr>  
                    </c:forEach>
                </c:otherwise>
            </c:choose>

        </tbody>

    </table>

    <%@include file="/WEB-INF/jspf/rodape.jspf" %>