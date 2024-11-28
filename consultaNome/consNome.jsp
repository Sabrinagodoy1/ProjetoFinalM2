

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.HospitalConsulta"%>
<%@page import="model.dao.HospitalConsultaDAO"%>

<!DOCTYPE html>
<html> 
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta médica - Consulta dos Registros</title>
    </head>
    <body>
        <h1>Pesquisa de Consultas médicas - Registro</h1>
        <%           
        //Entrada/Receber
            String nomepaciente = request.getParameter("nome");
            
            // Instância e atrib de valor
            HospitalConsulta pesq = new HospitalConsulta();
            pesq.setNomePaciente(nomepaciente);
        
            //Select
            HospitalConsultaDAO pesqDAO = new HospitalConsultaDAO();
            if(pesqDAO.consNome(pesq) != null){
                out.println("<br> <b>Registro de Consultas Médicas</b> <br>");
                out.println("<br> Data: " + pesq.getDt_pesq());
                out.println("<br> Nome: " + pesq.getNomepaciente());
                out.println("<br> CPF: " + pesq.getCpf());
                out.println("<br> E-mail: " + pesq.getEmail());
                out.println("<br> Celular: " + pesq.getCelular());
                out.println("<br> Nome Médico: " + pesq.getNomemedico());
                out.println("<br> Área Médica: " + pesq.getAreamedica());
                                           
            }else{
               out.println("Registro não encontrado!!!");
            }

        %>
    </body>
</html>
