<%-- 
    Document   : itemComentarios
    Created on : 16/07/2018, 11:06:23
    Author     : Pedro
--%>
<%@include file="jspf/cabecalho.jspf" %>
<title>Coment�rios do Item</title>
</head>
<body>
    <h4 class="text-center">Veja todos os coment�rios do item ${item.titulo} abaixo:</h4>
    <table class="table table-striped">
        <thead>
            <tr class="text-center">
                <th>Coment�rios</th>
                <th colspan="2">Op��es</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="comentario" items="${comentarios}">
                <tr class="text-center">
                    <td>${comentario.comentario}</td>
                    <c:choose>
                        <c:when test="${not comentario.avaliado}">
                            <td><a href="avaliarComentario.html?idComentario=${comentario.id}&idItem=${item.id}&aval=positiva" class="btn btn-success"><i class="far fa-thumbs-up"></i> Curtir</a></td>
                            <td><a href="avaliarComentario.html?idComentario=${comentario.id}&idItem=${item.id}&aval=negativa" class="btn btn-danger"><i class="far fa-thumbs-down"></i> Descurtir</a></td>
                        </c:when>
                        <c:otherwise>
                            <td colspan="2">Voc� j� avaliou este coment�rio</td>
                        </c:otherwise>
                    </c:choose>

                </tr>
            </c:forEach>
        </tbody>
    </table>
    <%@include file="jspf/rodape.jspf" %>