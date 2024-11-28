

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.HospitalConsulta"%>
<%@page import="model.dao.HospitalConsultaDAO"%>
<%@page import="java.text.*"%>
<%@page import="java.util.Date"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresa - Consulta</title>
    </head>
    <body>
        <h1>Pesquisa - Registro</h1>
        <%           
        //Entrada/Receber
            int id = Integer.parseInt(request.getParameter("id"));
            
            // Instância e atrib de valor
            HospitalConsulta pesq = new HospitalConsulta();
            pesq.setId(id);
        
            //Select
            HospitalConsultaDAO pesqDAO = new HospitalConsultaDAO();
            if(pesqDAO.consId(pesq) != null){
            %>
                <b>Pesquisa de Satisfação</b> <br>
                <form method="post" action="updatePesquisa.jsp">
                Identificação: <input type="text" name="ident" value="<%= pesq.getId()%>" readonly="true"> <p>                    
                Nome Paciente: <input type="text" name="nome" value="<%= pesq.getNomepaciente()%>" minlength="5" maxlength="10" > <p>
                CPF: <input type="text" name="cpf" value="<%= pesq.getCpf()%>"  maxlength="11" > <p>
                E-mail <input type="email" name="email" value ="<%= pesq.getEmail() %>" > <p>    
                Nome Médico: <input type="texto" name="nomemedico" value ="<%= pesq.getNomemedico()%>" > <p>  
                Área Médica: <input type="texto" name="areamedica" value ="<%= pesq.getAreamedica()%>" > <p> 
                Data da Pesquisa <br>
                <input type="date" name="dt_pesq" value="<%= pesq.getDt_pesq() %>">
                <input type="submit" value="Salvar!"> 
                </form>
                <br> 
                               
            <%    
            }else{
               out.println("Cadastro não encontrado!!!");
            }

        %>
    </body>
</html>
