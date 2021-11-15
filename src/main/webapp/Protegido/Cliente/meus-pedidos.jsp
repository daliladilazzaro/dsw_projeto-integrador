<%-- 
    Document   : ConsultaProduto
    Created on : 12/09/2021, 09:40:39
    Author     : ygor.oliveira
--%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">       
        <title>Meus Pedidos</title>
        <link href="//cdn.datatables.net/1.10.15/css/jquery.dataTables.min.css" rel="stylesheet">
        
    </head>
    <body>
       <c:import url="../../Publico/menu-cliente-logado.jsp"/>
       
       
        <style>
            
            #grad {
                height: auto;
                background-color: rgba(95, 216, 229, 0.70); /* For browsers that do not support gradients */
                background-image: linear-gradient(to bottom right, #c0c0c0, transparent);
                border-radius: 30px;
            }
            body{
                background-position:center;
                background-image: url(../../img/FundoWallpaper04.jpg);
                position: relative;
                height: 100vh;
                width: 100vw;
                /* adicionando imagem de fundo */
                background-size: cover;
            }
                .container{
                display: flex;
                align-items: center;
                margin-top: 5%;
                }
                
                .w-auto legend{
                    display: flex;
                    align-items: center;
                    left: 50%;
                    font-style: bold;
                    font-family: "Segoe UI", "Arial";
                }
                
            
        </style>
        
        <center>
               <fieldset class="border p-3 fieldset mb-25 col py-3 px-md-5 border" id="grad">
                    <legend  class="w-auto legend">
                            <div class="container">
                                <h3>Pedidos realizados</h3>
                            </div>
                     </legend>
                
                
 <table class="table table-hover" id="tabelaProd">
            <thead>
                <th>N�mero do pedido</th>
                <th>Data</th>
                <th>Valor total</th>
                <th>Mais detalhes</th>
            </thead>
            <tbody>
                <c:forEach var="pedido" items="${listaPedidos}">
                    <tr>
                        <td>${pedido.numero}</td>
                        <td>${pedido.data}</td>
                        <td>${pedido.total}</td>
                        <td><center><a href="#"><img src="../../img/view-icon.png" alt="Detalhes"/></a></center></td>
                        </tr>
                </c:forEach>
            </tbody>
        </table></fieldset></center>
    
    <script src="//code.jquery.com/jquery-3.2.1.min.js"></script>
    <script src="//cdn.datatables.net/1.10.15/js/jquery.dataTables.min.js"></script>

        <script>
        $(document).ready(function(){
                $('#tabelaProd').DataTable({
                          "language": {
                          "lengthMenu": "Mostrando _MENU_ registros por p�gina",
                          "zeroRecords": "Nada encontrado",
                          "info": "Mostrando p�gina _PAGE_ de _PAGES_",
                          "infoEmpty": "Nenhum registro dispon�vel",
                          "infoFiltered": "(filtrado de _MAX_ registros no total)"
                      }
                  });
  });
  </script>
  </body>
</html>
