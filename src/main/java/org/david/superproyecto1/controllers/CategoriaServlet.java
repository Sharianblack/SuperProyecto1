package org.david.superproyecto1.controllers;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import org.david.superproyecto1.models.Categoria;
import org.david.superproyecto1.services.CategoriaService;
import org.david.superproyecto1.services.CategoriaServiceJdbcImplement;
import org.david.superproyecto1.services.LoginService;
import org.david.superproyecto1.services.LoginServiceSessionImplement;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.util.List;
import java.util.Optional;

@WebServlet("/categoria")
public class CategoriaServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        //Creamos la conexion
        Connection conn = (Connection) req.getAttribute("conn");
        //Creamos el nuevo objeto de Categorias
        CategoriaService service= new CategoriaServiceJdbcImplement(conn);
        List<Categoria> categorias = service.Listar();

        //Obtengo el username
        LoginService auth= new LoginServiceSessionImplement();
        Optional<String> userName= auth.getUserName(req);

        //Seteamos los parámetros
        req.setAttribute("categorias", categorias);
        req.setAttribute("username", userName);
        //redireccionamos a la vista de categoria
        getServletContext().getRequestDispatcher("/categoriaListar.jsp").forward(req, resp);


    }
}