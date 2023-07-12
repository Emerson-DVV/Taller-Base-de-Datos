package utilidades.requerimientos;

public class Requerimientos_Especificos extends Requerimientos_Generales {

    public int dormitorios, banios, antiguedad_construccion;
    public boolean sala, comedor, cocina;

    public Requerimientos_Especificos() {
        this.dormitorios = 0;
        this.banios = 0;
        this.antiguedad_construccion = 0;
        this.sala = false;
        this.comedor = false;
        this.cocina = false;
    }

    public Requerimientos_Especificos(int dormitorios, int banios, int antiguedad_construccion, boolean sala, boolean comedor, boolean cocina) {
        this.dormitorios = dormitorios;
        this.banios = banios;
        this.antiguedad_construccion = antiguedad_construccion;
        this.sala = sala;
        this.comedor = comedor;
        this.cocina = cocina;
    }

    public void save_data(Requerimientos_Generales rg) {
        this.ubicacion = rg.ubicacion;
        this.tipo_inmueble = rg.tipo_inmueble;
        this.tipo_oferta = rg.tipo_oferta;
        this.precio_minimo = rg.precio_minimo;
        this.precio_maximo = rg.precio_maximo;
        this.superficie = rg.superficie;
    }
}
