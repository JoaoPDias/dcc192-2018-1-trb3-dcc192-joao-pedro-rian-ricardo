<%-- 
    Document   : novoEvento
    Created on : 04/06/2018, 15:46:20
    Author     : Rian Alves
--%>

<%@include file="jspf/cabecalho.jspf" %>
        <title>Crie um novo Evento e divirta-se!</title>
    </head>
    <body>
    <br/>
    <center><h3>Insira abaixo os dados solicitados para a cria��o de um novo Evento</h3></center>
        <div class="row">
            <div class="col"></div>
            <div class="col"><br/>
               
                <form method="post">
                    <div class="form-group">
                    <label>T�tulo do Evento:</label>
                        <input class="form-control" type="text" placeholder="Insira aqui um T�tulo para seu Evento" name="titulo"/><br/>
                    </div>
                    <div class="form-group">
                    <label>Valor M�nimo do Presente: </label>    
                        <input class="form-control" type="text" placeholder="Insira aqui o valor M�nimo do presente" name="minimo"/><br/>
                    </div>
                    <div class="form-group">
                        <label>Data do Sorteio:</label>    
                        <input class="form-control" type="date" name="sorteio"/><br/>
                    </div>
                    
                    <div class="form-group">
                        <label>Data do Evento:</label>    
                                    <input class="form-control" type="date" name="evento"/><br/>
                    </div>
                    
                    <input type="hidden" value="${usuario}" name="usuario">
                    <input type="submit" class="btn btn-success"/>
                    <input type="reset" class="btn btn-danger"/>
                </form>
            </div>
            <div class="col"></div>
        </div>


<br/>
<br/>
<%@include file="jspf/rodape.jspf" %>
