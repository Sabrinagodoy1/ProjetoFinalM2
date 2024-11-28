

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.HospitalConsulta"%>
<%@page import="model.dao.HospitalConsultaDAO"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consultas médicas - Consulta Geral</title>
    </head>
    <body>
        <h1>Consultas Hospitalares - Geral / Consultas Médicas</h1>
        <%                    
            //Select "Geral"

            HospitalConsultaDAO pesqDAO = new HospitalConsultaDAO();
            
            List<HospitalConsulta> lista = new ArrayList<>();
            lista = pesqDAO.consListaConsulta();
            
            int n_reg = 0 ;
            out.println("<br> <b>Registro de Consultas Médicas</b>");
            
            out.println("<br> <b>Reg# | Data | Nome Paciente | CPF | E-mail | Nome Médico| Área Médica |:</b> <br>");
            out.println("<br> <b>-------------------------------------------</b> <br>");
            for( int i = 0; i <= lista.size()-1; i++){                
                out.println(i + " - " + lista.get(i).getDt_pesq() + " - " + lista.get(i).getNomepaciente()+ " - " + lista.get(i).getCpf()+ " - " + lista.get(i).getEmail()+  " - " + lista.get(i).getCelular()+ " - " + lista.get(i).getNomemedico()+  " - " + lista.get(i).getAreamedica()+"<br>");                                          
                n_reg++;                           
            }
            out.println("<br><br> <b>Registros: </b>" + n_reg + "<br>");
            

        %>
    </body>
</html>
