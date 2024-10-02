<%@page import="org.trabalhos.Fornecedor" %>
<%@page import="org.trabalhos.FornecedorDao" %>
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-BR">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Catálogo de Fornecedores</title>
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
        .btn {
            margin-right: 5px;
        }
    </style>
</head>
<body>
    <div class="container mt-5">
        <h2 class="text-center">Catálogo de Fornecedores</h2>
        <div class="text-center mb-4">
            <a href="formulario.jsp?id=0" class="btn btn-success">Adicionar Fornecedor</a>
            <br/>
            <br/>
            <a href="index.jsp" class="btn btn-primary">Início</a>
        </div>
        
        <table class="table table-striped table-bordered text-white">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nome</th>
                    <th>Telefone</th>
                    <th>CNPJ</th>
                    <th>Endereço</th>
                    <th>Ações</th>
                </tr>
            </thead>
            <tbody>
                <%
                	FornecedorDao dao = new FornecedorDao();
                    for (Fornecedor f : dao.listar()) {
                        out.print("<tr>");
                        out.print("<td>" + f.getIdfornecedor() + "</td>");
                        out.print("<td>" + f.getNome() + "</td>");
                        out.print("<td>" + f.getTelefone() + "</td>");
                        out.print("<td>" + f.getCnpj() + "</td>");
                        out.print("<td>" + f.getEndereco() + "</td>");
                        out.print("<td>");
                        out.print("<a href='formulario.jsp?id=" + f.getIdfornecedor() + "' class='btn btn-warning btn-sm me-2'>Editar</a>");
                        out.print("<a href='excluir.jsp?id=" + f.getIdfornecedor() + "' class='btn btn-danger btn-sm'>Excluir</a>");
                        out.print("</td>");    
                        out.print("</tr>");
                    }
                %>
            </tbody>
        </table>
    </div>
</body>
</html>
