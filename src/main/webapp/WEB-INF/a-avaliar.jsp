<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@include file="/WEB-INF/jspf/cabecalho.jspf" %>


<title>Itens A Avaliar</title>
</head>

<body>

  
    <br/>
    <h3 class="text-center">Lista de Itens que voc�,${sessionScope.usuarioCompleto.nome}, ainda n�o Avaliou</h3>
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
                <c:when test="${empty itens}">
                <h2 class="text-center text-success">N�o h� Itens a serem avaliados. Parab�ns!</h2>
                </c:when>
                <c:otherwise>
                    <c:forEach var="troll" items="${trolls}">
                        <tr class="text-center">
                            <td>${troll.usuario.nome}</td> 
                            <td>${troll.totalAvaliacaoComentario}</td> 
                            <td class="text-danger">${troll.totalAvaliacaoNegativa}</td> 
                            <td class="text-danger">${troll.indiceTotal} %</td>                          
                        </tr>  
                    </c:forEach>
                </c:otherwise>
            </c:choose>

        </tbody>

    </table>

    <%@include file="/WEB-INF/jspf/rodape.jspf" %>