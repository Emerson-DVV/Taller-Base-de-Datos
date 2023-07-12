package utilidades;

import java.util.List;

public class Cliente {
    public int ci;
    public String nombres, apellidos, direccion;
    public List<String> telefonos;

    public Cliente() {
        this.ci = 0;
        this.nombres = "";
        this.apellidos = "";
        this.direccion = "";
        this.telefonos = null;
    }

    public Cliente(int ci, String nombres, String apellidos, String direccion, List<String> telefonos) {
        this.ci = ci;
        this.nombres = nombres;
        this.apellidos = apellidos;
        this.direccion = direccion;
        this.telefonos = telefonos;
    }
}


