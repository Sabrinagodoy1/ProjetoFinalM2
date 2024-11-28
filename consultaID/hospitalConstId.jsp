

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.HospitalConsulta"%>
<%@page import="model.dao.HospitalConsultaDAO"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta Médica</title>
    </head>
    <body>
        <h1>Cadastro da consulta médica - Registro</h1>
        <%           
        //Entrada/Receber
            int id = Integer.parseInt(request.getParameter("id"));
            
            // Instância e atrib de valor
            HospitalConsulta pesq = new HospitalConsulta();
            pesq.setId(id);
        
            //Select
            HospitalConsultaDAO pesqDAO = new HospitalConsultaDAO();
            if(pesqDAO.consPesqRegId(pesq) != null){
                out.println("<br> <b>Cadastro de Consulta Hospitalar</b> <br>");
                out.println("<br> Data: " + pesq.getDt_pesq());
                out.println("<br> Nome: " + pesq.getNomepaciente());
                 out.println("<br> CPF: " + pesq.getCpf());
                out.println("<br> E-mail: " + pesq.getEmail());
                out.println("<br> Celular: " + pesq.getCelular());
                out.println("<br> Nome Médico: " + pesq.getNomemedico());
                out.println("<br> Área Médica: " + pesq.getAreamedica());
                                     
            }else{
               out.println("Cadastro não encontrado!!!");
            }

        %>
    </body>
</html>
