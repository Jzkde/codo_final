<%@page import="modelo.Oradores"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Actualizar Orador</title>
        <link rel="icon" type="image/x-icon" href="./src/codoacodo.png">
        <link rel="stylesheet" href="./css/style.css">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
              integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-5">
            <div class="row d-flex justify-content-center">
                <div class="col-6">
                    <h2>Actualizar Orador</h2>

                    <form action="GestionOradorServlet" method="post" class="row d-flex justify-content-center formulario">
                        <input type="hidden" name="accion" value="confirmarActualizacion">
                        <input type="hidden" name="id" value="${orador.idOrador}">
                        <div class="col">
                            <label for="nombre">Nombre:</label>
                            <input type="text" class="form-control" id="nombre" name="nombre" value="${orador.nombre}" required>
                        </div>
                        <div class="col">
                            <label for="apellido">Apellido:</label>
                            <input type="text" class="form-control" id="apellido" name="apellido" value="${orador.apellido}" required>
                        </div>
                        <div class="row">
                            <div class="col">
                                <label for="mail">Mail:</label>
                                <input type="email" name="mail" id="mail"  class="form-control" value="${orador.mail}" required>
                            </div>
                            <div class="col">
                                <label for="fechaAlta">Fecha Alta:</label>
                                <input type="date" class="form-control" id="fechaAlta" name="fechaAlta" value="${orador.fechaAlta}" required>
                            </div>
                        </div>
                        <div>
                            <label for="tema">Tema:</label>
                            <input type="text" class="form-control" id="tema" name="tema" value="${orador.tema}" required>
                        </div>


                        <div class="mt-3">

                            <button type="submit" class="btn btn-primary">Guardar</button>
                            <a href="gestionOradores.jsp" class="btn btn-success">Volver</a>
                        </div>

                    </form>







                    </form>
                </div>
            </div>
        </div>
    </body>
</html>
