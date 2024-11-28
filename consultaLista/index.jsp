

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
            lista = pesqDAO.consPesqLista();
            
            int n_reg = 0 ;
            out.println("<br> <b>Pesquisa de Satisfação</b>");
            
            for( int i = 0; i <= lista.size()-1; i++){                
                out.println("<br><br> #: " + i);                
                out.println("<br> Data: " + lista.get(i).getDt_pesq());
                out.println("<br> Nome: " + lista.get(i).getNomepaciente());
                out.println("<br> Cpf: " + lista.get(i).getCpf());
                out.println("<br> E-mail: " + lista.get(i).getEmail());
                out.println("<br> Celular: " + lista.get(i).getCelular());
                out.println("<br> Nome Medico: " + lista.get(i).getNomemedico());
                out.println("<br> Área Médica: " + lista.get(i).getAreamedica());                            
                n_reg++;                           
            }
            out.println("<br><br> <b>Cadastros: </b>" + n_reg + "<br>");
            

        %>
    </body>
</html>
