

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.HospitalConsulta"%>
<%@page import="model.dao.HospitalConsultaDAO"%>

<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresa - Consulta Geral</title>
    </head>
    <body>
        <h1>Pesquisa - Geral (Modo Tabela)</h1>        
        <%                    
            //Select "Geral"

            HospitalConsultaDAO pesqDAO = new HospitalConsultaDAO();
            
            List<HospitalConsulta> lista = new ArrayList<>();
            lista = pesqDAO.consPesqLista();
            
            int n_cadastro = 0 ;
            out.println("<br> <b>Consultas Hospital</b>");
            
        %>    
        <table style="width: 100%"; border="1">
            <tr>
                <th>#</th>
                <th>Id.</th>
                <th>Data</th>
                <th>Nome</th>
                <th>CPF</th>
                <th>E-mail</th>
                <th>Nome Médico</th>
                <th>Área Médica</th>
             
            </tr>                          
            
        <%   
            for( int i = 0; i <= lista.size()-1; i++){                
                //Minha tabela - DT/TR/...
        %>        
            <tr>
                <td><%= n_cadastro +1 %> </td>
                <td><%= lista.get(i).getId() %> </td>
                <td><%= lista.get(i).getDt_pesq() %> </td>
                <td><%= lista.get(i).getNomepaciente()%></td>
                <td><%= lista.get(i).getCpf()%></td>
                <td><%= lista.get(i).getCelular()%></td>
                <td><%= lista.get(i).getNomemedico()%></td>
                <td><%= lista.get(i).getAreamedica()%></td>
                
            </tr>                                                 
        <%
                n_cadastro++;                           
            }
        %>
        </table>
        <%                                                     
            out.println("<b>Cadastro: </b>" + n_cadastro + "<br>");
            
        %>
        
        
    </body>
</html>
