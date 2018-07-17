<%@include file="jspf/cabecalho.jspf" %>
<title>Lista de Itens</title>
</head>
<body>

    <h2 class="text-center text-success">Veja os itens cadastrados no sistema</h2>
    <br>
    <table class="table table-striped">
        <thead class="text-center">
            <tr>
                <th>T�tulo</th>
                <th>Descri��o</th>
                <th>Data de cria��o</th>
                <th>Data de atualiza��o</th>
                <th>Criador</th>
                <th colspan="6">Op��es</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="item" items="${itens}">
                <c:choose>
                    <c:when test="${item.usuario.id == sessionScope.usuarioID}">
                        <tr class="text-center">
                            <td>${item.titulo}</td>
                            <td>${item.descricao}</td>
                            <td>${item.getStringDataCriacao()}</td> 
                            <td>${item.getStringDataAtu()}</td>
                            <td>${item.usuario.nome}</td>
                            <td><a href="item.html?idItem=${item.id}">Ver Detalhes</a></td>
                            <td><a href="itemComentarios.html?idItem=${item.id}">Ver Coment�rios</a></td>
                            <td colspan="2"><a href="item-editar.html?idItem=${item.id}">Editar</a></td>
                            <td colspan="2"><a href="item-excluir.html?idItem=${item.id}">Excluir</a></td>
                        </tr>
                    </c:when>
                    <c:otherwise>
                        <tr class="text-center">
                            <td>${item.titulo}</td>
                            <td>${item.descricao}</td>
                            <td>${item.getStringDataCriacao()}</td> 
                            <td>${item.getStringDataAtu()}</td>
                            <td>${item.usuario.nome}</td>
                            <td><a href="item.html?idItem=${item.id}">Ver Detalhes</a></td>
                            <td><a href="itemComentarios.html?idItem=${item.id}">Ver Coment�rios</a></td>
                            <c:choose>
                                <c:when test="${not item.comentado}">
                                    <td><a href="comentar.html?idItem=${item.id}">Comentar</a></td>
                                </c:when>
                                <c:otherwise>
                                    <td>Voc� j� comentou este item</td>
                                </c:otherwise>
                            </c:choose>
                            <c:choose>
                                <c:when test="${not item.avaliado}">
                                    <td><a href="avaliarItem.html?idItem=${item.id}&aval=positiva">Curtir</a></td>
                                    <td><a href="avaliarItem.html?idItem=${item.id}&aval=negativa">Descurtir</a></td>
                                </c:when>
                                <c:otherwise>
                                    <td colspan="2">Voc� j� avaliou este item</td>
                                </c:otherwise>
                            </c:choose>
                        </tr>
                    </c:otherwise>
                </c:choose>
            </c:forEach>
        </tbody>
    </table>


</body>
</html>
