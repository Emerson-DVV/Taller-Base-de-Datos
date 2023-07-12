package interfaz;

/**
 * @author Emer
 */
import dao.RequerimientosDAO;
import java.sql.SQLException;
import sql.Conexion;
import utilidades.requerimientos.*;

public class Requerimientos extends javax.swing.JFrame {

    private Requerimientos_Generales rg;
    private final Conexion con;
    private RequerimientosDAO rdao;

    public Requerimientos() {
        initComponents();
        con = new Conexion();
        jgrb_tipo_inmueble.add(jr_rg_casa);
        jgrb_tipo_inmueble.add(jr_rg_departamento);
        jgrb_tipo_inmueble.add(jr_rg_garzonier);
        jgrb_tipo_inmueble.add(jr_rg_lote);
        jp_Casa.setVisible(false);
        jp_Departamento.setVisible(false);
        jp_Garzonier.setVisible(false);
        jp_Lote.setVisible(false);
        setLocationRelativeTo(null);
    }

    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jgrb_tipo_inmueble = new javax.swing.ButtonGroup();
        jc_rg_tipo_oferta = new javax.swing.JComboBox<>();
        jt_rg_ubicacion = new javax.swing.JTextField();
        jt_rg_precio_max = new javax.swing.JTextField();
        jt_rg_precio_min = new javax.swing.JTextField();
        jt_rg_superficie = new javax.swing.JTextField();
        jt_rg_ci = new javax.swing.JTextField();
        jb_guardar = new javax.swing.JButton();
        jb_cancelar = new javax.swing.JButton();
        jr_rg_casa = new javax.swing.JRadioButton();
        jr_rg_departamento = new javax.swing.JRadioButton();
        jr_rg_garzonier = new javax.swing.JRadioButton();
        jr_rg_lote = new javax.swing.JRadioButton();
        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel7 = new javax.swing.JLabel();
        jLabel27 = new javax.swing.JLabel();
        jp_Casa = new javax.swing.JPanel();
        jc_re_casa_cocina = new javax.swing.JCheckBox();
        jc_re_casa_sala = new javax.swing.JCheckBox();
        js_re_casa_dormitorios = new javax.swing.JSpinner();
        js_re_casa_numero_plantas = new javax.swing.JSpinner();
        js_re_casa_banios = new javax.swing.JSpinner();
        jt_re_casa_superficie_construccion = new javax.swing.JTextField();
        jt_re_casa_antiguedad_construccion = new javax.swing.JTextField();
        jc_re_casa_garaje = new javax.swing.JCheckBox();
        jc_re_casa_comedor = new javax.swing.JCheckBox();
        jc_re_casa_patio = new javax.swing.JCheckBox();
        jLabel8 = new javax.swing.JLabel();
        jLabel9 = new javax.swing.JLabel();
        jLabel10 = new javax.swing.JLabel();
        jLabel11 = new javax.swing.JLabel();
        jLabel12 = new javax.swing.JLabel();
        jLabel13 = new javax.swing.JLabel();
        fonfo_Casa = new javax.swing.JLabel();
        jp_Departamento = new javax.swing.JPanel();
        js_re_departamento_banios = new javax.swing.JSpinner();
        js_re_departamento_dormitorios = new javax.swing.JSpinner();
        jt_re_departamento_antiguedad_construccion = new javax.swing.JTextField();
        jt_re_departamento_numero_piso = new javax.swing.JTextField();
        jt_re_departamento_numero_estacionamiento = new javax.swing.JTextField();
        jc_re_departamento_sala = new javax.swing.JCheckBox();
        jc_re_departamento_comedor = new javax.swing.JCheckBox();
        jc_re_departamento_permiso_mascota = new javax.swing.JCheckBox();
        jc_re_departamento_cocina = new javax.swing.JCheckBox();
        jLabel14 = new javax.swing.JLabel();
        jLabel15 = new javax.swing.JLabel();
        jLabel16 = new javax.swing.JLabel();
        jLabel17 = new javax.swing.JLabel();
        jLabel18 = new javax.swing.JLabel();
        jLabel19 = new javax.swing.JLabel();
        fondo_Departamento = new javax.swing.JLabel();
        jp_Garzonier = new javax.swing.JPanel();
        js_re_garzonier_banios = new javax.swing.JSpinner();
        js_re_garzonier_dormitorios = new javax.swing.JSpinner();
        jt_re_garzonier_antiguedad_construccion = new javax.swing.JTextField();
        jt_re_garzonier_capacidad_maxima = new javax.swing.JTextField();
        jc_re_garzonier_cocina = new javax.swing.JCheckBox();
        jc_re_garzonier_comedor = new javax.swing.JCheckBox();
        jc_re_garzonier_sala = new javax.swing.JCheckBox();
        jc_re_garzonier_amueblado = new javax.swing.JCheckBox();
        jLabel20 = new javax.swing.JLabel();
        jLabel21 = new javax.swing.JLabel();
        jLabel22 = new javax.swing.JLabel();
        jLabel23 = new javax.swing.JLabel();
        jLabel24 = new javax.swing.JLabel();
        fondo_Garzonier = new javax.swing.JLabel();
        jp_Lote = new javax.swing.JPanel();
        jLabel25 = new javax.swing.JLabel();
        jco_re_lote_uso_actual = new javax.swing.JComboBox<>();
        jc_re_lote_topografia = new javax.swing.JCheckBox();
        jLabel26 = new javax.swing.JLabel();
        fondo_Lote = new javax.swing.JLabel();
        fondo = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Ingresar Requerimientos");
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jc_rg_tipo_oferta.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Alquiler", "Anticretico", "Venta" }));
        getContentPane().add(jc_rg_tipo_oferta, new org.netbeans.lib.awtextra.AbsoluteConstraints(420, 60, -1, 20));
        getContentPane().add(jt_rg_ubicacion, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 60, 240, -1));
        getContentPane().add(jt_rg_precio_max, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 110, 80, -1));
        getContentPane().add(jt_rg_precio_min, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 110, 80, -1));
        getContentPane().add(jt_rg_superficie, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 90, 240, -1));
        getContentPane().add(jt_rg_ci, new org.netbeans.lib.awtextra.AbsoluteConstraints(420, 30, 90, -1));

        jb_guardar.setText("Buscar");
        jb_guardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jb_guardarActionPerformed(evt);
            }
        });
        getContentPane().add(jb_guardar, new org.netbeans.lib.awtextra.AbsoluteConstraints(150, 440, -1, -1));

        jb_cancelar.setText("Cancelar");
        jb_cancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jb_cancelarActionPerformed(evt);
            }
        });
        getContentPane().add(jb_cancelar, new org.netbeans.lib.awtextra.AbsoluteConstraints(310, 440, -1, -1));

        jr_rg_casa.setText("Casa");
        jr_rg_casa.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                jr_rg_casaItemStateChanged(evt);
            }
        });
        getContentPane().add(jr_rg_casa, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 120, -1, -1));

        jr_rg_departamento.setText("Departamento");
        jr_rg_departamento.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                jr_rg_departamentoItemStateChanged(evt);
            }
        });
        getContentPane().add(jr_rg_departamento, new org.netbeans.lib.awtextra.AbsoluteConstraints(90, 120, -1, -1));

        jr_rg_garzonier.setText("Garzonier");
        jr_rg_garzonier.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                jr_rg_garzonierItemStateChanged(evt);
            }
        });
        getContentPane().add(jr_rg_garzonier, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 120, -1, -1));

        jr_rg_lote.setText("Lote");
        jr_rg_lote.addItemListener(new java.awt.event.ItemListener() {
            public void itemStateChanged(java.awt.event.ItemEvent evt) {
                jr_rg_loteItemStateChanged(evt);
            }
        });
        getContentPane().add(jr_rg_lote, new org.netbeans.lib.awtextra.AbsoluteConstraints(280, 120, -1, -1));

        jLabel1.setText("Ubicacion");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 60, -1, 20));

        jLabel2.setText("Tipo de Oferta");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 60, -1, 20));

        jLabel3.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel3.setText("Requerimientos Generales");
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 30, -1, -1));

        jLabel4.setText("Superficie");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 90, -1, -1));

        jLabel5.setText("Precio Minimo");
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 90, -1, -1));

        jLabel6.setText("Precio Maximo");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(430, 90, -1, -1));

        jLabel7.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel7.setText("Requerimientos Especificos");
        getContentPane().add(jLabel7, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 150, -1, -1));

        jLabel27.setText("Cliente");
        getContentPane().add(jLabel27, new org.netbeans.lib.awtextra.AbsoluteConstraints(340, 30, -1, 20));

        jp_Casa.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(255, 255, 255)));
        jp_Casa.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jc_re_casa_cocina.setText("Cocina");
        jp_Casa.add(jc_re_casa_cocina, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 160, -1, -1));

        jc_re_casa_sala.setText("Sala");
        jp_Casa.add(jc_re_casa_sala, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 160, -1, -1));
        jp_Casa.add(js_re_casa_dormitorios, new org.netbeans.lib.awtextra.AbsoluteConstraints(370, 60, -1, -1));
        jp_Casa.add(js_re_casa_numero_plantas, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 60, -1, -1));
        jp_Casa.add(js_re_casa_banios, new org.netbeans.lib.awtextra.AbsoluteConstraints(370, 90, -1, -1));
        jp_Casa.add(jt_re_casa_superficie_construccion, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 120, 65, -1));
        jp_Casa.add(jt_re_casa_antiguedad_construccion, new org.netbeans.lib.awtextra.AbsoluteConstraints(200, 90, 65, -1));

        jc_re_casa_garaje.setText("Garaje");
        jp_Casa.add(jc_re_casa_garaje, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 160, -1, -1));

        jc_re_casa_comedor.setText("Comedor");
        jp_Casa.add(jc_re_casa_comedor, new org.netbeans.lib.awtextra.AbsoluteConstraints(130, 160, -1, -1));

        jc_re_casa_patio.setText("Patio");
        jp_Casa.add(jc_re_casa_patio, new org.netbeans.lib.awtextra.AbsoluteConstraints(300, 160, -1, -1));

        jLabel8.setText("Dormitorios");
        jp_Casa.add(jLabel8, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 60, -1, 20));

        jLabel9.setText("Baños");
        jp_Casa.add(jLabel9, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 90, -1, 20));

        jLabel10.setText("Antiguedad de Construccion");
        jp_Casa.add(jLabel10, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 90, -1, 20));

        jLabel11.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel11.setText("Casa");
        jp_Casa.add(jLabel11, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 30, -1, -1));

        jLabel12.setText("Superficie de Construccion");
        jp_Casa.add(jLabel12, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 120, -1, 20));

        jLabel13.setText("Numero de Plantas");
        jp_Casa.add(jLabel13, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 60, -1, 20));

        fonfo_Casa.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagen/fondo.jpg"))); // NOI18N
        jp_Casa.add(fonfo_Casa, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 480, 250));

        getContentPane().add(jp_Casa, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 180, 480, 250));

        jp_Departamento.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jp_Departamento.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        jp_Departamento.add(js_re_departamento_banios, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 60, -1, -1));
        jp_Departamento.add(js_re_departamento_dormitorios, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 90, -1, -1));
        jp_Departamento.add(jt_re_departamento_antiguedad_construccion, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 90, 65, -1));
        jp_Departamento.add(jt_re_departamento_numero_piso, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 60, 65, -1));
        jp_Departamento.add(jt_re_departamento_numero_estacionamiento, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 120, 65, -1));

        jc_re_departamento_sala.setText("Sala");
        jp_Departamento.add(jc_re_departamento_sala, new org.netbeans.lib.awtextra.AbsoluteConstraints(250, 160, -1, -1));

        jc_re_departamento_comedor.setText("Comedor");
        jp_Departamento.add(jc_re_departamento_comedor, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 160, -1, -1));

        jc_re_departamento_permiso_mascota.setText("Permiso Mascota");
        jp_Departamento.add(jc_re_departamento_permiso_mascota, new org.netbeans.lib.awtextra.AbsoluteConstraints(330, 160, -1, -1));

        jc_re_departamento_cocina.setText("Cocina");
        jp_Departamento.add(jc_re_departamento_cocina, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 160, -1, -1));

        jLabel14.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel14.setText("Departamento");
        jp_Departamento.add(jLabel14, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 30, -1, -1));

        jLabel15.setText("Dormitorios");
        jp_Departamento.add(jLabel15, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 90, -1, 20));

        jLabel16.setText("Antiguedad de Construccion");
        jp_Departamento.add(jLabel16, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 90, -1, 20));

        jLabel17.setText("Baños");
        jp_Departamento.add(jLabel17, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 60, -1, 20));

        jLabel18.setText("Numero de Estacionamiento");
        jp_Departamento.add(jLabel18, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 120, -1, 20));

        jLabel19.setText("Numero de Piso");
        jp_Departamento.add(jLabel19, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 60, -1, 20));

        fondo_Departamento.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagen/fondo.jpg"))); // NOI18N
        jp_Departamento.add(fondo_Departamento, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 480, 250));

        getContentPane().add(jp_Departamento, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 180, 480, 250));

        jp_Garzonier.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jp_Garzonier.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        jp_Garzonier.add(js_re_garzonier_banios, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 90, -1, -1));
        jp_Garzonier.add(js_re_garzonier_dormitorios, new org.netbeans.lib.awtextra.AbsoluteConstraints(380, 60, -1, -1));
        jp_Garzonier.add(jt_re_garzonier_antiguedad_construccion, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 60, 65, -1));
        jp_Garzonier.add(jt_re_garzonier_capacidad_maxima, new org.netbeans.lib.awtextra.AbsoluteConstraints(210, 90, 65, -1));

        jc_re_garzonier_cocina.setText("Cocina");
        jp_Garzonier.add(jc_re_garzonier_cocina, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 130, -1, -1));

        jc_re_garzonier_comedor.setText("Comedor");
        jp_Garzonier.add(jc_re_garzonier_comedor, new org.netbeans.lib.awtextra.AbsoluteConstraints(140, 130, -1, -1));

        jc_re_garzonier_sala.setText("Sala");
        jp_Garzonier.add(jc_re_garzonier_sala, new org.netbeans.lib.awtextra.AbsoluteConstraints(270, 130, -1, -1));

        jc_re_garzonier_amueblado.setText("Amueblado");
        jp_Garzonier.add(jc_re_garzonier_amueblado, new org.netbeans.lib.awtextra.AbsoluteConstraints(360, 130, -1, -1));

        jLabel20.setText("Antiguedad de Construccion");
        jp_Garzonier.add(jLabel20, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 60, -1, 20));

        jLabel21.setText("Dormitorios");
        jp_Garzonier.add(jLabel21, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 60, -1, 20));

        jLabel22.setText("Baños");
        jp_Garzonier.add(jLabel22, new org.netbeans.lib.awtextra.AbsoluteConstraints(290, 90, -1, 20));

        jLabel23.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel23.setText("Garzonier");
        jp_Garzonier.add(jLabel23, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 30, -1, -1));

        jLabel24.setText("Capacidad Maxima");
        jp_Garzonier.add(jLabel24, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 90, -1, 20));

        fondo_Garzonier.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagen/fondo.jpg"))); // NOI18N
        jp_Garzonier.add(fondo_Garzonier, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 480, 250));

        getContentPane().add(jp_Garzonier, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 180, 480, 250));

        jp_Lote.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));
        jp_Lote.setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());

        jLabel25.setFont(new java.awt.Font("Segoe UI", 1, 14)); // NOI18N
        jLabel25.setText("Lote");
        jp_Lote.add(jLabel25, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 30, -1, -1));

        jco_re_lote_uso_actual.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Libre", "Residencial", "Agricultura", "Comercial", "Industrial", "Educativo", "Turistico" }));
        jp_Lote.add(jco_re_lote_uso_actual, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 60, -1, -1));

        jc_re_lote_topografia.setText("Topografia");
        jp_Lote.add(jc_re_lote_topografia, new org.netbeans.lib.awtextra.AbsoluteConstraints(220, 60, -1, 20));

        jLabel26.setText("Uso Actual");
        jp_Lote.add(jLabel26, new org.netbeans.lib.awtextra.AbsoluteConstraints(40, 60, -1, 20));

        fondo_Lote.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagen/fondo.jpg"))); // NOI18N
        jp_Lote.add(fondo_Lote, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 480, 250));

        getContentPane().add(jp_Lote, new org.netbeans.lib.awtextra.AbsoluteConstraints(30, 180, 480, 250));

        fondo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagen/fondo.jpg"))); // NOI18N
        getContentPane().add(fondo, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 540, 490));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jr_rg_casaItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jr_rg_casaItemStateChanged
        show(1);
    }//GEN-LAST:event_jr_rg_casaItemStateChanged

    private void jr_rg_departamentoItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jr_rg_departamentoItemStateChanged
        show(2);
    }//GEN-LAST:event_jr_rg_departamentoItemStateChanged

    private void jr_rg_garzonierItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jr_rg_garzonierItemStateChanged
        show(3);
    }//GEN-LAST:event_jr_rg_garzonierItemStateChanged

    private void jr_rg_loteItemStateChanged(java.awt.event.ItemEvent evt) {//GEN-FIRST:event_jr_rg_loteItemStateChanged
        show(4);
    }//GEN-LAST:event_jr_rg_loteItemStateChanged

    private void jb_guardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jb_guardarActionPerformed
        try {
            con.conectar();
            rdao = new RequerimientosDAO(con.conexion);
            rdao.ci = Integer.parseInt(jt_rg_ci.getText().trim());
            assignment();
            Object requerimientos = toDrillDown();
            rdao.insertar(requerimientos);
            drop();
            con.desconectar();
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
    }//GEN-LAST:event_jb_guardarActionPerformed

    private void jb_cancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jb_cancelarActionPerformed
        try {
            con.desconectar();
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        dispose();
    }//GEN-LAST:event_jb_cancelarActionPerformed

    
    private void drop() {
        jt_rg_ubicacion.setText("");
        jt_rg_superficie.setText("");
        jt_rg_precio_min.setText("");
        jt_rg_precio_max.setText("");
        jc_rg_tipo_oferta.setSelectedIndex(0);
        String tipo_inmueble = getShow();
        if(tipo_inmueble.equals("Casa")){
            js_re_casa_dormitorios.setValue(0);            
            js_re_casa_banios.setValue(0);
            jt_re_casa_antiguedad_construccion.setText("");
            jc_re_casa_sala.setSelected(false);            
            jc_re_casa_comedor.setSelected(false);
            jc_re_casa_cocina.setSelected(false);
            jt_re_casa_superficie_construccion.setText("");
            jc_re_casa_garaje.setSelected(false);
            jc_re_casa_patio.setSelected(false);            
            js_re_casa_numero_plantas.setValue(0);
        }else if(tipo_inmueble.equals("Departamento")){
            js_re_departamento_dormitorios.setValue(0);
            js_re_departamento_banios.setValue(0);
            jt_re_departamento_antiguedad_construccion.setText("");
            jc_re_departamento_sala.setSelected(false);
            jc_re_departamento_comedor.setSelected(false);
            jc_re_departamento_cocina.setSelected(false);
            jt_re_departamento_numero_piso.setText("");
            jc_re_departamento_permiso_mascota.setSelected(false);
            jt_re_departamento_numero_estacionamiento.setText("");
        }else if(tipo_inmueble.equals("Garzonier")){
            js_re_garzonier_dormitorios.setValue(0);
            js_re_garzonier_banios.setValue(0);
            jt_re_garzonier_antiguedad_construccion.setText("");
            jc_re_garzonier_sala.setSelected(false);
            jc_re_garzonier_comedor.setSelected(false);
            jc_re_garzonier_cocina.setSelected(false);
            jt_re_garzonier_capacidad_maxima.setText("");
            jc_re_garzonier_amueblado.setSelected(false);
        }else{
            jco_re_lote_uso_actual.setSelectedIndex(0);
            jc_re_lote_topografia.setSelected(false);
        }
    }
    
    private Object toDrillDown() {
        Requerimientos_Especificos re = new Requerimientos_Especificos();
        Object object;
        if (rg.tipo_inmueble.equals("Casa")) {
            // Requerimientos especificos de vivienda
            re.dormitorios = (int) js_re_casa_dormitorios.getValue();
            re.banios = (int) js_re_casa_banios.getValue();
            re.antiguedad_construccion = Integer.parseInt(jt_re_casa_antiguedad_construccion.getText().trim());
            re.sala = jc_re_casa_sala.isSelected();
            re.comedor = jc_re_casa_comedor.isSelected();
            re.cocina = jc_re_casa_cocina.isSelected();
            // Requerimientos especificos de una casa
            Casa_Requerimientos_Especificos cre = new Casa_Requerimientos_Especificos();
            cre.save_data(re);
            cre.save_data(rg);
            cre.superficie_construccion = Integer.parseInt(jt_re_casa_superficie_construccion.getText().trim());
            cre.numero_plantas = (int)js_re_casa_numero_plantas.getValue();
            cre.patio = jc_re_casa_patio.isSelected();
            cre.garaje = jc_re_casa_garaje.isSelected();
            object = cre;
        } else if (rg.tipo_inmueble.equals("Departamento")) {
            // Requerimientos especificos de vivienda
            re.dormitorios = (int) js_re_departamento_dormitorios.getValue();
            re.banios = (int) js_re_departamento_banios.getValue();
            re.antiguedad_construccion = Integer.parseInt(jt_re_departamento_antiguedad_construccion.getText().trim());
            re.sala = jc_re_departamento_sala.isSelected();
            re.comedor = jc_re_departamento_comedor.isSelected();
            re.cocina = jc_re_departamento_cocina.isSelected();
            // Requerimientos especificos de un departamento
            Departamento_Requerimientos_Especificos dre = new Departamento_Requerimientos_Especificos();
            dre.save_data(re);
            dre.save_data(rg);
            dre.numero_piso = Integer.parseInt(jt_re_departamento_numero_piso.getText().trim());
            dre.permiso_mascota = jc_re_departamento_permiso_mascota.isSelected();
            dre.numero_estacionamiento = jt_re_departamento_numero_estacionamiento.getText();
            object = dre;
        } else if (rg.tipo_inmueble.equals("Garzonier")) {
            // Requerimientos especificos de vivienda
            re.dormitorios = (int) js_re_garzonier_dormitorios.getValue();
            re.banios = (int) js_re_garzonier_banios.getValue();
            re.antiguedad_construccion = Integer.parseInt(jt_re_garzonier_antiguedad_construccion.getText().trim());
            re.sala = jc_re_garzonier_sala.isSelected();
            re.comedor = jc_re_garzonier_comedor.isSelected();
            re.cocina = jc_re_garzonier_cocina.isSelected();
            // Requerimientos especificos de un garzonier
            Garzonier_Requerimientos_Especificos gre = new Garzonier_Requerimientos_Especificos();
            gre.save_data(re);
            gre.save_data(rg);
            gre.capacidad_maxima = Integer.parseInt(jt_re_garzonier_capacidad_maxima.getText().trim());
            gre.amueblado = jc_re_garzonier_amueblado.isSelected();
            object = gre;
        }else{
            // Requerimientos especificos de un lote
            Lote_Requerimientos_Especificos lre = new Lote_Requerimientos_Especificos();
            lre.save_data(rg);
            lre.uso_actual = (String)jco_re_lote_uso_actual.getSelectedItem();
            lre.topografia = jc_re_lote_topografia.isSelected();
            object = lre;
        }
        return object;
    }
     
    private void assignment() {
        String ubicacion = jt_rg_ubicacion.getText();
        String tipo_inmueble = getShow();
        String tipo_oferta = (String) jc_rg_tipo_oferta.getSelectedItem();
        int precio_minimo = Integer.parseInt(jt_rg_precio_min.getText().trim());
        int precio_maximo = Integer.parseInt(jt_rg_precio_max.getText().trim());
        int superficie = Integer.parseInt(jt_rg_superficie.getText().trim());
        rg = new Requerimientos_Generales(ubicacion, tipo_inmueble, tipo_oferta, precio_minimo, precio_maximo, superficie);
    }

    private String getShow() {
        String inmobiliaria;
        if (jr_rg_casa.isSelected()) {
            inmobiliaria = "Casa";
        } else if (jr_rg_departamento.isSelected()) {
            inmobiliaria = "Departamento";
        } else if (jr_rg_garzonier.isSelected()) {
            inmobiliaria = "Garzonier";
        } else {
            inmobiliaria = "Lote";
        }
        return inmobiliaria;
    }

    private void show(int jpanel) {
        if (jpanel == 1) {
            jp_Casa.setVisible(true);
        } else {
            jp_Casa.setVisible(false);
        }
        if (jpanel == 2) {
            jp_Departamento.setVisible(true);
        } else {
            jp_Departamento.setVisible(false);
        }
        if (jpanel == 3) {
            jp_Garzonier.setVisible(true);
        } else {
            jp_Garzonier.setVisible(false);
        }
        if (jpanel == 4) {
            jp_Lote.setVisible(true);
        } else {
            jp_Lote.setVisible(false);
        }
    }

    /**
     * @param args the command line arguments
     */
    public static void main(String args[]) {
        /* Set the Nimbus look and feel */
        //<editor-fold defaultstate="collapsed" desc=" Look and feel setting code (optional) ">
        /* If Nimbus (introduced in Java SE 6) is not available, stay with the default look and feel.
         * For details see http://download.oracle.com/javase/tutorial/uiswing/lookandfeel/plaf.html 
         */
        try {
            for (javax.swing.UIManager.LookAndFeelInfo info : javax.swing.UIManager.getInstalledLookAndFeels()) {
                if ("Nimbus".equals(info.getName())) {
                    javax.swing.UIManager.setLookAndFeel(info.getClassName());
                    break;
                }
            }
        } catch (ClassNotFoundException ex) {
            java.util.logging.Logger.getLogger(Requerimientos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Requerimientos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Requerimientos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Requerimientos.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Requerimientos().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel fondo;
    private javax.swing.JLabel fondo_Departamento;
    private javax.swing.JLabel fondo_Garzonier;
    private javax.swing.JLabel fondo_Lote;
    private javax.swing.JLabel fonfo_Casa;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel10;
    private javax.swing.JLabel jLabel11;
    private javax.swing.JLabel jLabel12;
    private javax.swing.JLabel jLabel13;
    private javax.swing.JLabel jLabel14;
    private javax.swing.JLabel jLabel15;
    private javax.swing.JLabel jLabel16;
    private javax.swing.JLabel jLabel17;
    private javax.swing.JLabel jLabel18;
    private javax.swing.JLabel jLabel19;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel20;
    private javax.swing.JLabel jLabel21;
    private javax.swing.JLabel jLabel22;
    private javax.swing.JLabel jLabel23;
    private javax.swing.JLabel jLabel24;
    private javax.swing.JLabel jLabel25;
    private javax.swing.JLabel jLabel26;
    private javax.swing.JLabel jLabel27;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JLabel jLabel7;
    private javax.swing.JLabel jLabel8;
    private javax.swing.JLabel jLabel9;
    private javax.swing.JButton jb_cancelar;
    private javax.swing.JButton jb_guardar;
    private javax.swing.JCheckBox jc_re_casa_cocina;
    private javax.swing.JCheckBox jc_re_casa_comedor;
    private javax.swing.JCheckBox jc_re_casa_garaje;
    private javax.swing.JCheckBox jc_re_casa_patio;
    private javax.swing.JCheckBox jc_re_casa_sala;
    private javax.swing.JCheckBox jc_re_departamento_cocina;
    private javax.swing.JCheckBox jc_re_departamento_comedor;
    private javax.swing.JCheckBox jc_re_departamento_permiso_mascota;
    private javax.swing.JCheckBox jc_re_departamento_sala;
    private javax.swing.JCheckBox jc_re_garzonier_amueblado;
    private javax.swing.JCheckBox jc_re_garzonier_cocina;
    private javax.swing.JCheckBox jc_re_garzonier_comedor;
    private javax.swing.JCheckBox jc_re_garzonier_sala;
    private javax.swing.JCheckBox jc_re_lote_topografia;
    private javax.swing.JComboBox<String> jc_rg_tipo_oferta;
    private javax.swing.JComboBox<String> jco_re_lote_uso_actual;
    private javax.swing.ButtonGroup jgrb_tipo_inmueble;
    private javax.swing.JPanel jp_Casa;
    private javax.swing.JPanel jp_Departamento;
    private javax.swing.JPanel jp_Garzonier;
    private javax.swing.JPanel jp_Lote;
    private javax.swing.JRadioButton jr_rg_casa;
    private javax.swing.JRadioButton jr_rg_departamento;
    private javax.swing.JRadioButton jr_rg_garzonier;
    private javax.swing.JRadioButton jr_rg_lote;
    private javax.swing.JSpinner js_re_casa_banios;
    private javax.swing.JSpinner js_re_casa_dormitorios;
    private javax.swing.JSpinner js_re_casa_numero_plantas;
    private javax.swing.JSpinner js_re_departamento_banios;
    private javax.swing.JSpinner js_re_departamento_dormitorios;
    private javax.swing.JSpinner js_re_garzonier_banios;
    private javax.swing.JSpinner js_re_garzonier_dormitorios;
    private javax.swing.JTextField jt_re_casa_antiguedad_construccion;
    private javax.swing.JTextField jt_re_casa_superficie_construccion;
    private javax.swing.JTextField jt_re_departamento_antiguedad_construccion;
    private javax.swing.JTextField jt_re_departamento_numero_estacionamiento;
    private javax.swing.JTextField jt_re_departamento_numero_piso;
    private javax.swing.JTextField jt_re_garzonier_antiguedad_construccion;
    private javax.swing.JTextField jt_re_garzonier_capacidad_maxima;
    private javax.swing.JTextField jt_rg_ci;
    private javax.swing.JTextField jt_rg_precio_max;
    private javax.swing.JTextField jt_rg_precio_min;
    private javax.swing.JTextField jt_rg_superficie;
    private javax.swing.JTextField jt_rg_ubicacion;
    // End of variables declaration//GEN-END:variables
}
