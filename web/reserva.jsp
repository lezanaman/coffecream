<%-- 
    Document   : reserva
    Created on : 30/10/2017, 11:47:57 AM
    Author     : bryan
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <meta name="description" content="">
        <meta name="author" content="">

        <title>Business Casual - Start Bootstrap Theme</title>

        <!-- Bootstrap core CSS -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800" rel="stylesheet" type="text/css">
        <link href="https://fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700,100italic,300italic,400italic,600italic,700italic" rel="stylesheet" type="text/css">

        <!-- Custom styles for this template -->
        <link href="css/business-casual.css" rel="stylesheet">
        <link rel="stylesheet" href="vendor/bootstrap/css/bootstrap-reboot.css" type="text/css"/>


        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>



    </head>
    <body>
        <div class="tagline-upper text-center text-heading text-shadow text-white mt-5 d-none d-lg-block">CoffeCream</div>
        <div class="tagline-lower text-center text-expanded text-shadow text-uppercase text-white mb-5 d-none d-lg-block">3481 Cayala | Ciudad De Guatemala, Local 90210 | 6774</div>

        <!-- Navigation -->
        <nav class="navbar navbar-expand-lg navbar-light bg-faded py-lg-4">
            <div class="container">
                <a class="navbar-brand text-uppercase text-expanded font-weight-bold d-lg-none" href="#">Start Bootstrap</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarResponsive">
                    <ul class="navbar-nav mx-auto">
                        <li class="nav-item active px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="index.jsp">Inicio
                                <span class="sr-only">(current)</span>
                            </a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="about.jsp">Quienes Somos</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="correo.html">Contactanos</a>
                        </li>
                        <li class="nav-item px-lg-4">
                            <a class="nav-link text-uppercase text-expanded" href="reserva.jsp">Reservas</a>
                        </li>
                    </ul>
                </div>
            </div>
        </nav>

        <div class="container">



            <div class="bg-faded p-4 my-4">
                <hr class="divider">
                <h2 class="text-center text-lg text-uppercase my-0">Formulario
                    <strong>Para Reservas</strong>
                </h2>
                <hr class="divider">


                <form >

                    <div class="row">
                        <div class="form-group col-lg-4">
                            <label for="NombreC">Nombre Completo</label>
                            <input type="text" class="form-control" name="NombreC" id="NombreC" required>
                        </div>
                        <div class="form-group col-lg-4">
                            <label for="Tel">Telefono</label>
                            <input type="text" class="form-control" name="Tel" id="Tel" required>
                        </div>
                        

                        <div class="form-group col-lg-4" >
                            <center><label class="align-content-center">Entrada</label></center> <br/>
                            <center><label >Horas</label>

                                <select name="horaE" id="horaE">
                                    <%
                                       for(int x=0; x<25  ; x++)
         
                                       {
                                    %>
                                    <option value="<%=x%>"><%=x%> </option>

                                    <%   
                                       }
                                    %>
                                </select>

                                <label>Minutos</label>

                                <select name="minutosE" id="minutosE">
                                    <%
                                       for(int x=0; x<60  ; x++)
         
                                       {
                                    %>
                                    <option value="<%=x%>"><%=x%> </option>

                                    <%   
                                       }
                                    %>
                                </select>

                            </center>

                        </div>


                        <div class="form-group col-lg-4" >
                            <center><label class="align-content-center">Salida</label></center> <br/>
                            <center><label >Horas</label>

                                <select name="horaS" id="horaS">
                                    <%
                                       for(int x=0; x<25  ; x++)
         
                                       {
                                    %>
                                    <option value="<%=x%>"><%=x%> </option>

                                    <%   
                                       }
                                    %>
                                </select>

                                <label>Minutos</label>

                                <select name="minutosS" id="minutosS">
                                    <%
                                       for(int x=0; x<60  ; x++)
         
                                       {
                                    %>
                                    <option value="<%=x%>"><%=x%> </option>

                                    <%   
                                       }
                                    %>
                                </select>

                            </center>

                        </div>

                        <div class="form-group col-lg-4">
                            <label for="fecha">Fecha</label>
                            <input type="text" class="form-control" name="fecha" id="fecha" required>
                        </div>

                        <div class="form-group col-lg-4">
                            <label>Cantidad de personas</label>
                            <br/>
                            <select name="cant" id="cant">
                                <%
                                   for(int x=15; x<46  ; x=x+15)
         
                                   {
                                %>
                                <option value="<%=x%>"><%=x%> </option>

                                <%   
                                   }
                                %>
                            </select>
                            
                        </div>
                          

                        <div class="form-group col-lg-4">
                            <label for="nit">Nit</label>
                            <input type="text" class="form-control" name="nit" id="nit" required>
                        </div>
                        <div class="form-group col-lg-4">
                            <label for="Correo">Correo</label>
                            <input type="text" class="form-control" name="Correo" id="Correo" required>
                        </div>
                        <div class="form-group col-lg-4">
                            <label for="direccion">Direccion</label>
                            <input type="text" class="form-control" name="direccion" id="direccion" required>
                        </div>

                        <div class="form-group col-lg-12">
                            <label for="mensaje">Comentarios</label>
                            <textarea name="mensaje" id="mensaje" class="form-control" rows="6" required ></textarea>
                        </div>
                        <div class="form-group col-lg-12">
                            <input type="submit" id="btn-enviar" class="btn btn-large">
                        </div>


                    </div>
                </form>
            </div>
        </div>
        <footer class="bg-faded text-center py-5">
            <div class="container">
                <p class="m-0">Copyright &copy; Your Website 2017</p>
            </div>
        </footer>
        <script>

            $('#btn-enviar').click(function (e) {
                e.preventDefault();
                var horaE = $('#horaE');
                var minutosE = $('#minutosE');
                var horaS = $('#horaS');
                var minutosS = $('#minutosS');
                var fecha = $('#fecha');
                var cant = $('#cant');
                var nit = $('#nit');
                var direccion = $('#direccion');
                var NombreC = $('#NombreC');
                var Tel = $('#Tel');
                var Correo = $('#Correo');
                var destino = $('#destino');
                var asunto = $('#asunto');
                var mensaje = $('#mensaje');

                var data = {
                    horaE: horaE.val(),
                    minutosE: minutosE.val(),
                    horaS: horaS.val(),
                    minutosS: minutosS.val(),
                    fecha: fecha.val(),
                    cant: cant.val(),
                    nit: nit.val(),
                    direccion: direccion.val(),
                    NombreC: NombreC.val(),
                    Tel: Tel.val(),
                    Correo: Correo.val(),
                    destino: destino.val(),
                    asunto: asunto.val(),
                    mensaje: mensaje.val()
                };

                $.post('sendR', data, function (resultado, estado, objetojqXHR) {
                    alert(resultado);
                    console.log(estado);
                    if (estado === "success") {
                        fecha.val("");
                        nit.val("");
                        direccion.val("");
                        NombreC.val("");
                        Tel.val("");
                        Correo.val("");
                        destino.val("");
                        asunto.val("");
                        mensaje.val("");
                    }
                });

            });

        </script>

    </body>
</html>

