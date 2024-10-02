<%@page import="org.trabalhos.Fornecedor"%>
<%@page import="org.trabalhos.FornecedorDao"%>
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
            background: linear-gradient(to right, #ff7e5f, #feb47b);
            color: white;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            padding: 40px;
            margin-top: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        h3 {
            margin-bottom: 30px;
        }
        .btn {
            margin-top: 20px;
        }
    </style>
</head>
<body>
    <div class="container text-center">
        <%
            Fornecedor f = new Fornecedor();
            f.setIdfornecedor(Integer.parseInt(request.getParameter("id")));
            
            FornecedorDao fdao = new FornecedorDao();
            fdao.excluir(f);
        %>
        <h3>Fornecedor excluído com sucesso!</h3>
        <a href="index.jsp" class="btn btn-success">Ir para o Início</a>
    </div>
</body>
</html>
