package utilidades.requerimientos;

public class Garzonier_Requerimientos_Especificos extends Requerimientos_Especificos {

    public int capacidad_maxima;
    public boolean amueblado;

    public Garzonier_Requerimientos_Especificos() {
        this.capacidad_maxima = 0;
        this.amueblado = false;
    }

    public Garzonier_Requerimientos_Especificos(int capacidad_maxima, boolean amueblado) {
        this.capacidad_maxima = capacidad_maxima;
        this.amueblado = amueblado;
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
