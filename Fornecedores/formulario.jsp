<%@page import="org.trabalhos.Fornecedor" %>
<%@page import="org.trabalhos.FornecedorDao" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Formulário de Fornecedores</title>
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
            padding: 30px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.5);
        }
        h2 {
            margin-bottom: 30px;
        }
        .form-label {
            font-weight: bold;
        }
    </style>
</head>
<body>

<%
int Idfornecedor = Integer.parseInt(request.getParameter("id"));
Fornecedor f = new Fornecedor();
FornecedorDao fdao = new FornecedorDao();
if (Idfornecedor > 0) {
    f = fdao.consultar(Idfornecedor);
} else {
    // Limpa os dados para novo
    f.setNome("");
    f.setTelefone("");
    f.setCnpj("");
    f.setEndereco("");
}
%>

<div class="container mt-5">
    <h2 class="text-center">Formulário de Fornecedores</h2>
    <form action="gravar.jsp" method="post">
        <input type="hidden" name="idfornecedor" value="<%= f.getIdfornecedor() %>"/>
        
        <div class="mb-3">
            <label for="nome" class="form-label">Nome</label>
            <input type="text" name="nome" class="form-control" value="<%= f.getNome() %>"/>
        </div>

        <div class="mb-3">
            <label for="telefone" class="form-label">Telefone</label>
            <input type="text" name="telefone" class="form-control" value="<%= f.getTelefone() %>"/>
        </div>

        <div class="mb-3">
            <label for="cnpj" class="form-label">CNPJ</label>
            <input type="text" name="cnpj" class="form-control" value="<%= f.getCnpj() %>" />
        </div>

        <div class="mb-3">
            <label for="endereco" class="form-label">Endereço</label>
            <input type="text" name="endereco" class="form-control" value="<%= f.getEndereco() %>"/>
        </div>

        <button type="submit" class="btn btn-success">Salvar</button>
        <a href="listar.jsp" class="btn btn-danger">Cancelar</a>
    </form>
</div>

</body>
</html>
