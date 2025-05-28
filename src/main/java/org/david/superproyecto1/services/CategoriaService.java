package org.david.superproyecto1.services;

import org.david.superproyecto1.models.Categoria;
import java.util.List;
import java.util.Optional;

public interface CategoriaService {
    List<Categoria> Listar();
    Optional<Categoria> porId(Long id);
    //implementar metodos guardar,activar y desactivar
}
