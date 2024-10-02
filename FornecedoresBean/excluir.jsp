<%@page import="org.trabalhos.Fornecedor" %>
<%@page import="org.trabalhos.FornecedorDao" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Exclusão de Fornecedor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        body {
            background: linear-gradient(to right, #ff416c, #ff4b2b);
            color: #333;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 40px;
            margin-top: 50px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }
        h2 {
            margin-bottom: 30px;
            text-align: center;
        }
        .btn {
            margin: 10px;
        }
    </style>
</head>
<body>
    <jsp:useBean id="f" class="org.trabalhos.Fornecedor" scope="page" />
    <jsp:useBean id="fdao" class="org.trabalhos.FornecedorDao" scope="page" />	
    <jsp:setProperty property="*" name="f"/>
    <%
        fdao.excluir(f);
    %>

    <div class="container mt-5">
        <h2 class="my-3">Fornecedor Excluído com Sucesso</h2>
        <div class="text-center">
            <a href="index.jsp" class="btn btn-success mb-3">Ir para o Início</a>
        </div>
    </div>
</body>
</html>
