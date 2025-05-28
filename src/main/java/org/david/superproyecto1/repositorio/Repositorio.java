package org.david.superproyecto1.repositorio;

import java.sql.SQLException;
import java.util.List;

/*
LOa variable es una parametro generico que permite que la interface seas utilizada como se desee o cualquier tpo de objeto (
(Entidad)que desea manehjar
 */
public interface Repositorio<T> {

    List<T> listar() throws SQLException;
    //permite buscar un elemneto de la base d datos por su id
    T PorId(Long id) throws SQLException;
    void guardar(T t) throws SQLException;
    //elimina un registro de la base de datos
    void eliminar(Long id) throws SQLException;
}
