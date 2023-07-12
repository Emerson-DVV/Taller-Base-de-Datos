package utilidades.requerimientos;

public class Requerimientos_Generales {

    public String ubicacion, tipo_inmueble, tipo_oferta;
    public int precio_minimo, precio_maximo, superficie;

    public Requerimientos_Generales() {
        ubicacion = "";
        tipo_inmueble = "";
        tipo_oferta = "";
        precio_minimo = 0;
        precio_maximo = 0;
        superficie = 0;
    }

    public Requerimientos_Generales(String ubicacion, String tipo_inmueble, String tipo_oferta, int precio_minimo, int precio_maximo, int superficie) {
        this.ubicacion = ubicacion;
        this.tipo_inmueble = tipo_inmueble;
        this.tipo_oferta = tipo_oferta;
        this.precio_minimo = precio_minimo;
        this.precio_maximo = precio_maximo;
        this.superficie = superficie;
    }

}
