

<%@page import="java.util.Date"%>
<%@page import="java.text.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.HospitalConsulta"%>
<%@page import="model.dao.HospitalConsultaDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Exclusão</h1>
        <%
        //Entrada/Receber
         int id = Integer.parseInt(request.getParameter("id"));
            
            // Instância e atrib de valor
        HospitalConsulta pesq = new HospitalConsulta();
        pesq.setId(id); 
       
        //Apagar
        HospitalConsultaDAO pesqDAO = new HospitalConsultaDAO();
        if(pesqDAO.delConsulta(pesq)){
            out.println("Cadastro Médico excluído com sucesso!");
        }else{
           out.println("Erro! Cadastro Médico não excluído!!!");
        }
        %>
    </body>
</html>
