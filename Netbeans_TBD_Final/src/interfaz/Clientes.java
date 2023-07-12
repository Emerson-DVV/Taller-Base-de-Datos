package interfaz;

import java.sql.SQLException;
import javax.swing.DefaultListModel;
import sql.Conexion;
import dao.ClienteDAO;
import java.util.ArrayList;
import java.util.Collections;
import utilidades.Cliente;

/**
 * @author Emer
 */
public class Clientes extends javax.swing.JFrame {
    private DefaultListModel<String> modelo;
    private final Conexion con;
    private ClienteDAO cdao;
    
    public Clientes() {
        initComponents();
        modelo = new DefaultListModel<>();
        con = new Conexion();
        setLocationRelativeTo(null);
    }
    
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jt_Nombres = new javax.swing.JTextField();
        jt_Direccion = new javax.swing.JTextField();
        jt_Apellido_Paterno = new javax.swing.JTextField();
        jt_Apellido_Materno = new javax.swing.JTextField();
        jt_Ci = new javax.swing.JTextField();
        jt_Telefono = new javax.swing.JTextField();
        jb_Guardar = new javax.swing.JButton();
        jb_Cancelar = new javax.swing.JButton();
        jb_Aniadir = new javax.swing.JButton();
        jLabel2 = new javax.swing.JLabel();
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        jLabel1 = new javax.swing.JLabel();
        jScrollPane2 = new javax.swing.JScrollPane();
        jl_Lista_Telefonos = new javax.swing.JList<>();
        jl_Fondo = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        setTitle("Agregar Cliente");
        setResizable(false);
        getContentPane().setLayout(new org.netbeans.lib.awtextra.AbsoluteLayout());
        getContentPane().add(jt_Nombres, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 100, 200, -1));
        jt_Nombres.getAccessibleContext().setAccessibleName("");

        getContentPane().add(jt_Direccion, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 250, 410, -1));
        jt_Direccion.getAccessibleContext().setAccessibleName("");

        getContentPane().add(jt_Apellido_Paterno, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 150, 200, -1));
        jt_Apellido_Paterno.getAccessibleContext().setAccessibleName("");

        getContentPane().add(jt_Apellido_Materno, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 200, 200, -1));
        jt_Apellido_Materno.getAccessibleContext().setAccessibleName("");

        getContentPane().add(jt_Ci, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 50, 200, -1));
        jt_Ci.getAccessibleContext().setAccessibleName("");

        jt_Telefono.setToolTipText("");
        getContentPane().add(jt_Telefono, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 50, 110, -1));
        jt_Telefono.getAccessibleContext().setAccessibleName("");

        jb_Guardar.setText("Guardar");
        jb_Guardar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jb_GuardarActionPerformed(evt);
            }
        });
        getContentPane().add(jb_Guardar, new org.netbeans.lib.awtextra.AbsoluteConstraints(110, 300, 80, 25));

        jb_Cancelar.setText("Cancelar");
        jb_Cancelar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jb_CancelarActionPerformed(evt);
            }
        });
        getContentPane().add(jb_Cancelar, new org.netbeans.lib.awtextra.AbsoluteConstraints(260, 300, 80, 25));

        jb_Aniadir.setText("Añadir");
        jb_Aniadir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jb_AniadirActionPerformed(evt);
            }
        });
        getContentPane().add(jb_Aniadir, new org.netbeans.lib.awtextra.AbsoluteConstraints(350, 50, 80, 25));

        jLabel2.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel2.setText("Nombres");
        getContentPane().add(jLabel2, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 80, -1, -1));

        jLabel3.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel3.setText("Apellido Paterno");
        getContentPane().add(jLabel3, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 130, -1, -1));

        jLabel4.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel4.setText("Apellido Materno");
        getContentPane().add(jLabel4, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 180, -1, -1));

        jLabel5.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel5.setText("Direccion");
        getContentPane().add(jLabel5, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 230, -1, -1));

        jLabel6.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel6.setText("Cedula de Identidad");
        getContentPane().add(jLabel6, new org.netbeans.lib.awtextra.AbsoluteConstraints(20, 30, -1, -1));

        jLabel1.setFont(new java.awt.Font("Segoe UI", 0, 14)); // NOI18N
        jLabel1.setText("Telefono");
        getContentPane().add(jLabel1, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 30, -1, -1));

        jl_Lista_Telefonos.setBorder(new javax.swing.border.SoftBevelBorder(javax.swing.border.BevelBorder.RAISED));
        jScrollPane2.setViewportView(jl_Lista_Telefonos);

        getContentPane().add(jScrollPane2, new org.netbeans.lib.awtextra.AbsoluteConstraints(230, 80, 200, 150));

        jl_Fondo.setIcon(new javax.swing.ImageIcon(getClass().getResource("/imagen/fondo.jpg"))); // NOI18N
        getContentPane().add(jl_Fondo, new org.netbeans.lib.awtextra.AbsoluteConstraints(0, 0, 450, 350));

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void jb_AniadirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jb_AniadirActionPerformed
        jl_Lista_Telefonos.setModel(modelo);
        String telefono = jt_Telefono.getText().trim();
        if(!telefono.equals("")){
            modelo.addElement(telefono);
            jt_Telefono.setText("");
        }
    }//GEN-LAST:event_jb_AniadirActionPerformed

    private void jb_CancelarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jb_CancelarActionPerformed
        try {
            con.desconectar();
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        dispose();
    }//GEN-LAST:event_jb_CancelarActionPerformed

    private void jb_GuardarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jb_GuardarActionPerformed
        try {
            con.conectar();
            cdao = new ClienteDAO(con.conexion);
            Cliente cliente = get();
            cdao.insertar(cliente);
            drop();
            con.desconectar();
        } catch (SQLException ex) {
            System.out.println(ex.toString());
        }
        
    }//GEN-LAST:event_jb_GuardarActionPerformed

    private Cliente get(){
        String cit = jt_Ci.getText().trim();
        int ci = Integer.parseInt(cit);
        String nombres = jt_Nombres.getText();
        String apellido_paterno = jt_Apellido_Paterno.getText();
        String apellido_materno = jt_Apellido_Materno.getText();
        String apellidos = apellido_paterno + " " + apellido_materno;
        String direccion = jt_Direccion.getText();
        ArrayList<String> telefonos = Collections.list(modelo.elements());
        return new Cliente(ci, nombres, apellidos, direccion, telefonos);
    }
    
    private void drop(){
        jt_Ci.setText("");
        jt_Nombres.setText("");
        jt_Apellido_Paterno.setText("");
        jt_Apellido_Materno.setText("");
        jt_Direccion.setText("");
        modelo = new DefaultListModel<>();
        jl_Lista_Telefonos.setModel(modelo);
    }
    
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
            java.util.logging.Logger.getLogger(Clientes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Clientes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Clientes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Clientes.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Clientes().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JButton jb_Aniadir;
    private javax.swing.JButton jb_Cancelar;
    private javax.swing.JButton jb_Guardar;
    private javax.swing.JLabel jl_Fondo;
    private javax.swing.JList<String> jl_Lista_Telefonos;
    private javax.swing.JTextField jt_Apellido_Materno;
    private javax.swing.JTextField jt_Apellido_Paterno;
    private javax.swing.JTextField jt_Ci;
    private javax.swing.JTextField jt_Direccion;
    private javax.swing.JTextField jt_Nombres;
    private javax.swing.JTextField jt_Telefono;
    // End of variables declaration//GEN-END:variables
}
