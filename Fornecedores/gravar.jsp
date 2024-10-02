<%@page import="org.trabalhos.Fornecedor" %>
<%@page import="org.trabalhos.FornecedorDao" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Confirmar Cadastro de Fornecedor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: white;
        }
        .container {
            background-color: rgba(0, 0, 0, 0.7);
            border-radius: 10px;
            padding: 40px;
            margin-top: 50px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        h1 {
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
            FornecedorDao dao = new FornecedorDao();
            Fornecedor f = new Fornecedor();
            f.setIdfornecedor(Integer.parseInt(request.getParameter("idfornecedor")));
            f.setNome(request.getParameter("nome"));
            f.setTelefone(request.getParameter("telefone"));
            f.setCnpj(request.getParameter("cnpj"));
            f.setEndereco(request.getParameter("endereco"));
            
            if (f.getIdfornecedor() > 0) {
                dao.editar(f);
            } else {
                dao.adicionar(f);
            }
        %>
        <h2>Fornecedor salvo com sucesso!</h2>
        <a href="listar.jsp" class="btn btn-success">Ir para Lista de Fornecedores</a>
    </div>
</body>
</html>
