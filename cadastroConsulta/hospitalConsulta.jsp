

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
        <h1>Pesquisa</h1>
        <%
        //Entrada/Receber
        String nomepaciente = request.getParameter("nomepaciente");
        String cpf = request.getParameter("cpf");
        String email = request.getParameter("email");
        int celular = Integer.parseInt( request.getParameter("celular") );
        String nomemedico = request.getParameter("nomemedico");
        String areamedica = request.getParameter("areamedica");
        int r4 = Integer.parseInt( request.getParameter("r4") ); 

        // Instância e atrib de valor
        HospitalConsulta pesq = new HospitalConsulta();
        pesq.setNomePaciente(nomepaciente);
        pesq.setCpf(cpf);
        pesq.setEmail(email);
        pesq.setCelular(celular);
        pesq.setNomemedico(nomemedico);
        pesq.setAreamedica(areamedica);        
            
        //pesq.setDt_pesq(new Date());
        //String dt_atual_str = (new SimpleDateFormat("dd/MM/yyyy").format(new Date()));        
        //pesq.setDt_pesq(new SimpleDateFormat("yyyy/MM/dd").parse(dt_atual_str)); De String para Date
        pesq.setDt_pesq(new SimpleDateFormat("yyyy/MM/dd").format(new Date())); //Data atual , de Date para String
        
        //Insert
        HospitalConsultaDAO pesqDAO = new HospitalConsultaDAO();
        if(pesqDAO.insConsulta(pesq)){
            out.println(" Seu cadastro foi um sucesso!");
        }else{
           out.println("Erro! Seu cadastro não foi inserido!!!");
        }
        %>
    </body>
</html>
