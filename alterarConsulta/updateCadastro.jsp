
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
        <h1>Hospital Consulta</h1>
        <%
        //Entrada/Receber      
        int id = Integer.parseInt( request.getParameter("ident") );
        String nomepaciente = request.getParameter("nomepaciente");
        String cpf = request.getParameter("cpf");
        String email = request.getParameter("email");
        int celular = Integer.parseInt( request.getParameter("celular") );
        String nomemedico = request.getParameter("nomemedico");
        String areamedica = request.getParameter("areamedica");
        String dt_pesq = request.getParameter("dt_pesq");

        // Instância e atrib de valor
        HospitalConsulta pesq = new HospitalConsulta();
        pesq.setId(id);
        pesq.setNomePaciente(nomepaciente);
        pesq.setCpf(cpf);
        pesq.setEmail(email);
        pesq.setCelular(celular);
        pesq.setNomemedico(nomemedico);
        pesq.setAreamedica(areamedica);
        pesq.setDt_pesq(dt_pesq);
        
        //Insert
        HospitalConsultaDAO pesqDAO = new HospitalConsultaDAO();
        if(pesqDAO.altConsulta(pesq)){
            out.println("Cadastro ALTERADO com sucesso!");
        }else{
           out.println("Erro! Cadastro não ALTERADO!!!");
        }
        %>
    </body>
</html>
