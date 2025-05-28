package org.david.superproyecto1.services;

import org.david.superproyecto1.models.Productos;
import java.util.List;

public interface ProductoService {
    // Método para obtener la lista de productos
    List<Productos>listar();
}