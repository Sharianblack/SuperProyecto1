<%--
  Created by IntelliJ IDEA.
  User: ESTUDIANTE-ITQ
  Date: 28/5/2025
  Time: 14:39
  To change this template use File | Settings | File Templates.
--%>
<%--
  Página JSP para mostrar el listado de categorías.
  Autentificación: Se espera que el usuario esté autenticado (username en request)
  Atributos requeridos:
    - categorias: Lista de objetos Categoria
    - username: Nombre de usuario (opcional) para sesión
--%>

<%-- Directiva de página: Configuración inicial --%>
<%@ page contentType="text/html;charset=UTF-8" language="java"
         import="java.util.*, org.david.superproyecto1.models.*" %>

<%-- Scriptlet: Obtener datos del request --%>
<%
    // Recuperar lista de categorías desde el request (casting explícito)
    List<Categoria> categorias = (List<Categoria>) request.getAttribute("categorias");

    // Obtener nombre de usuario (si existe) de la sesión
    Optional<String> username = (Optional<String>) request.getAttribute("username");
%>

<%-- Comienzo del documento HTML --%>
<html>
<head>
    <title>Listado Categoria</title>
    <%-- Metadatos implícitos: charset UTF-8 gestionado por directiva --%>
</head>
<body>

<%-- Cabecera principal --%>
<h1>Listado Categoria</h1>

<%-- Tabla de visualización de datos --%>
<table>
    <thead>
    <%-- Cabeceras de columna --%>
    <th>Id Categoria</th>
    <th>Nombre</th>
    <th>Descripción</th> <%-- Corregida tilde --%>
    <th>Condición</th>
    <th>Acciones</th> <%-- Columna para operaciones CRUD --%>
    </thead>

    <%-- Scriptlet: Iterar sobre cada categoría --%>
    <%
        for (Categoria cat : categorias) {
    %>
    <tbody>
    <%-- Fila por categoría: Mostrar propiedades --%>
    <td><%= cat.getIdCategoria() %></td>       <%-- ID --%>
    <td><%= cat.getNombre() %></td>             <%-- Nombre --%>
    <td><%= cat.getDescripcion() %></td>        <%-- Descripción --%>
    <td><%= cat.getCondicion() %></td>          <%-- Estado (Activo/Inactivo) --%>

    <%-- Enlaces de acciones --%>
    <td>
        <a href="">Editar</a>                   <%-- Enlace para edición (pendiente implementar) --%>
    </td>
    <td>
        <%-- Enlace para cambiar estado (pendiente implementar) --%>
        <a href="">Activar o Desactivar</a>
    </td>
    </tbody>
    <%
        }  // Fin del bucle for
    %>
</table>

</body>
</html>