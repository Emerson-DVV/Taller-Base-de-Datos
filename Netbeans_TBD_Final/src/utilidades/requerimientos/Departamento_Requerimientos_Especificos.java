package utilidades.requerimientos;

public class Departamento_Requerimientos_Especificos extends Requerimientos_Especificos {

    public int numero_piso;
    public boolean permiso_mascota;
    public String numero_estacionamiento;

    public Departamento_Requerimientos_Especificos() {
        this.numero_piso = 0;
        this.permiso_mascota = false;
        this.numero_estacionamiento = "";
    }

    public Departamento_Requerimientos_Especificos(int numero_piso, boolean permiso_mascota, String numero_estacionamiento) {
        this.numero_piso = numero_piso;
        this.permiso_mascota = permiso_mascota;
        this.numero_estacionamiento = numero_estacionamiento;
    }

    public void save_data(Requerimientos_Especificos re) {
        this.dormitorios = re.dormitorios;
        this.banios = re.banios;
        this.antiguedad_construccion = re.antiguedad_construccion;
        this.sala = re.sala;
        this.comedor = re.comedor;
        this.cocina = re.cocina;
    }
}
