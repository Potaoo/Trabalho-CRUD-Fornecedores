<%@page import="org.trabalhos.Fornecedor" %>
<%@page import="org.trabalhos.FornecedorDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário do Fornecedor</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
    <style>
        body {
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: #333;
        }
        .container {
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 10px;
            padding: 40px;
            margin-top: 50px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.2);
        }
        h1 {
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
	
    ${f = fdao.consultar(f.getIdfornecedor())}

    <div class="container mt-5">
        <h2>Formulário do Fornecedor</h2>
        <form action="gravar.jsp" method="post">
            <input type="hidden" name="idfornecedor" value="${f.idfornecedor}"/>
            
            <div class="mb-3">
                <label for="nome" class="form-label">Nome</label>
                <input type="text" name="nome" class="form-control" value="${f.nome}"/>
            </div>
            <div class="mb-3">
                <label for="telefone" class="form-label">Telefone</label>
                <input type="text" name="telefone" class="form-control" value="${f.telefone}"/>
            </div>
            <div class="mb-3">
                <label for="cnpj" class="form-label">CNPJ</label>
                <input type="text" name="cnpj" class="form-control" value="${f.cnpj}"/>
            </div>
            <div class="mb-3">
                <label for="endereco" class="form-label">Endereço</label>
                <input type="text" name="endereco" class="form-control" value="${f.endereco}"/>
            </div>
            <button type="submit" class="btn btn-success">Salvar</button>
            <a href="listar.jsp" class="btn btn-secondary">Cancelar</a>
        </form>
    </div>
</body>
</html>
