<%@page import="dao.OradoresDao"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Oradores"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>Lista de Oradores</title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    </head>
    <body>
        <div class="container mt-5">
            <h2>Lista de Oradores</h2>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th>ID</th>
                        <th>Nombre</th>
                        <th>Apellido</th>
                        <th>Mail</th>
                        <th>Tema</th>
                        <th>Fecha Alta</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        // Crear una instancia de OradoresDAO para acceder a la base de datos
                        OradoresDao oradoresDAO = new OradoresDao();

                        // Obtener la lista de oradores desde la base de datos
                        List<Oradores> oradores = oradoresDAO.obtenerTodos();

                        if (oradores != null && !oradores.isEmpty()) {
                            // Iterar sobre la lista de oradores y mostrar sus datos en la tabla
                            for (Oradores orador : oradores) {
                    %>
                    <tr>
                        <td><%= orador.getIdOrador()%></td>
                        <td><%= orador.getNombre()%></td>
                        <td><%= orador.getApellido()%></td>
                        <td><%= orador.getMail()%></td>
                        <td><%= orador.getTema()%></td>
                        <td><%= orador.getFechaAlta()%></td>
                    </tr>
                    <%
                        }
                    } else {
                    %>
                    <tr>
                        <td colspan="6">No hay oradores registrados.</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <!-- Botón para volver al índice -->
            <button class="btn btn-outline-success" onclick="location.href='../'">Volver</button>
            <button class="btn btn-outline-primary" onclick="location.href='login.jsp'">Login</button>
        </div>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN"
        crossorigin="anonymous"></script>
    </body>
</html>

