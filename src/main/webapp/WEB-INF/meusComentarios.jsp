<%-- 
    Document   : meusComentarios
    Created on : 16/07/2018, 11:15:55
    Author     : Pedro
--%>

<%@include file="jspf/cabecalho.jspf" %>
<title>Coment�rios do usuario</title>
</head>
<body>
    <c:if test="${excluido == true}">
        <h4 class="text-center text-success">Coment�rio exclu�do com sucesso</h4>
    </c:if>
    <h6 class="text-center">Veja todos os coment�rios do usu�rio ${usuario.nome} abaixo:</h6>
    <table class="table table-striped">
        <thead class="text-center">
        <th>Coment�rio</th>
        <th>Item</th>
        <th>Op��es</th>
    </thead>
    <tbody class="text-center">
        <c:forEach var="comentario" items="${comentarios}">
            <tr>
                <td>${comentario.comentario}</td>
                <td>${comentario.item.titulo}</td>
                <td><a href="excluirComentario.html?idComent=${comentario.id}" class="btn btn-danger">Excluir</a></td>
            </tr>
        </c:forEach>
    </tbody>
</table>
<%@include file="jspf/rodape.jspf" %>