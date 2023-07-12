package utilidades.requerimientos;

public class Lote_Requerimientos_Especificos extends Requerimientos_Generales {

    public String uso_actual;
    public boolean topografia;

    public Lote_Requerimientos_Especificos() {
        this.uso_actual = "";
        this.topografia = false;
    }

    public Lote_Requerimientos_Especificos(String uso_actual, boolean topografia) {
        this.uso_actual = uso_actual;
        this.topografia = topografia;
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
