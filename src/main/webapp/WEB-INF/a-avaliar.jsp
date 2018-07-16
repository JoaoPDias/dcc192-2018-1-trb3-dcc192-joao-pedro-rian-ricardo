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
                <th>Nome do Item</th>
                <th>Descri��o do Item</th>
                <th>Data de Cria��o</th>
                <th>Data de Atualiza��o</th>
                <th>Criador</th>
                
            </tr>
        </thead>
        <tbody>
            <c:choose>
                <c:when test="${empty itens}">
                <h2 class="text-center text-success">N�o h� Itens a serem avaliados. Parab�ns!</h2>
                </c:when>
                <c:otherwise>
                    <c:forEach var="item" items="${itens}">
                        <tr class="text-center">
                            <td>${item.titulo}</td> 
                            <td>${item.descricao}</td> 
                            <td>${item.getStringDataCriacao()}</td> 
                            <td>${item.getStringDataAtu()}</td>                          
                            <td>${item.usuario.nome}</td>
                        </tr>  
                    </c:forEach>
                </c:otherwise>
            </c:choose>

        </tbody>

    </table>

    <%@include file="/WEB-INF/jspf/rodape.jspf" %>