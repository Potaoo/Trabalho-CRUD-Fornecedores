<%@page import="org.trabalhos.Fornecedor" %>
<%@page import="org.trabalhos.FornecedorDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Painel de Controle de Fornecedores</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: white;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.6);
            border-radius: 10px;
            padding: 30px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="my-3 text-center">Painel de Controle de Fornecedores</h2>
        <div class="text-center">
            <a href="formulario.jsp?id=0" class="btn btn-success mb-3">Adicionar Fornecedor</a>
            <br/>
            <a href="listar.jsp" class="btn btn-info mb-3">Listar Fornecedores</a>
        </div>
    </div>
</body>
</html>
