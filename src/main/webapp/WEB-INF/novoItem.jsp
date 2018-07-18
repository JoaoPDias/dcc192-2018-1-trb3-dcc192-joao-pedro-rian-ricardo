
<%@include file="jspf/cabecalho.jspf" %>
<title>Crie um novo item</title>
</head>
<body>
    <br/>
<center><h3>Insira abaixo os dados solicitados para a cria��o de um novo Item</h3></center>

<div class="container-fluid col-lg-6">
    <form method="post">
        <div class="form-group">
            <label>T�tulo do Item:</label>
            <input class="form-control" type="text" placeholder="Insira aqui o t�tulo do item a ser discutido" name="titulo"/><br/>

            <label>Descri��o do Item:</label>
            <input class="form-control" type="text" placeholder="Insira aqui uma pequena descri��o sobre o item a ser discutido" name="descricao"/><br/>
            <label>Informe o link e clique em adicionar:</label>
            <div class="input-group">
                <input class="form-control" type="text" placeholder="Insira aqui o link a ser vinculado ao item" id="link"/><br/>
                <span class="input-group-btn">
                    <button class="btn btn-primary" type="button" id="add">Adicionar</button>
                    <button class="btn btn-warning" type="button" id="remove">Remover</button>
                </span>
            </div>
            <label>Links</label>
            <select class="form-control" multiple="multiple" name="links" id="links">
            </select>
            <br/>



            <input type="hidden" value="${usuario}" name="usuario">
            <input type="submit" class="btn btn-success" id="enviar"/>
            <input type="reset" class="btn btn-danger"/>
        </div>
    </form>
</div>
<div class="col"></div>



<br/>
<br/>
<script type="text/javascript">
    $("#add").click(function () {
        $('#links').append($('<option>', {
            value: $('#link').val(),
            text: $('#link').val()
        }));
        $('#link').val("");
        $('#link').focus();

    });

    $("#remove").click(function () {
        $('#links option:selected').remove();
        $('#link').val("");
        $('#link').focus();

    });
    $("#enviar").click(function () {
        $("#links option").each(function () {
            $(this).prop('selected', true);
        }
        );

        $("#links").prop('required', true);
    });
</script>
<%@include file="jspf/rodape.jspf" %>
