package utilidades.requerimientos;

public class Casa_Requerimientos_Especificos extends Requerimientos_Especificos {
    public int superficie_construccion, numero_plantas;
    public boolean patio, garaje;
    public Casa_Requerimientos_Especificos(){
        this.superficie_construccion = 0;
        this.numero_plantas = 0;
        this.patio = false;
        this.garaje = false;
    }
    public Casa_Requerimientos_Especificos(int superficie_construccion, int numero_plantas, boolean patio, boolean garaje){
        this.superficie_construccion = superficie_construccion;
        this.numero_plantas = numero_plantas;
        this.patio = patio;
        this.garaje = garaje;
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
