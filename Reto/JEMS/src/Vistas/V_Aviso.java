/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Vistas;

/**
 *
 * @author Joel Encinas
 * 
 * @version %I%, %G%
 * @since 1.0
 */
public class V_Aviso extends javax.swing.JFrame {

    /**
     * Creates new form V_Aviso
     */
    public V_Aviso() {
        initComponents();
    }

    public V_Aviso(String mensaje) {
        setUndecorated(true);
        initComponents();
        myInitComponents();
        lbMensaje.setText(mensaje);
    }

    public void myInitComponents() {
        setSize(400, 220);
        setLocationRelativeTo(this);
    }

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        bAceptar = new javax.swing.JButton();
        lbMensaje = new javax.swing.JLabel();
        lbFiller = new javax.swing.JLabel();
        lbBackgroundAviso = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);
        getContentPane().setLayout(null);

        bAceptar.setBackground(new java.awt.Color(252, 124, 0));
        bAceptar.setFont(new java.awt.Font("Bahnschrift", 0, 18)); // NOI18N
        bAceptar.setForeground(new java.awt.Color(255, 255, 255));
        bAceptar.setText("ACEPTAR");
        bAceptar.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        bAceptar.setBorderPainted(false);
        bAceptar.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        bAceptar.setFocusPainted(false);
        bAceptar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bAceptarActionPerformed(evt);
            }
        });
        getContentPane().add(bAceptar);
        bAceptar.setBounds(130, 170, 140, 35);

        lbMensaje.setFont(new java.awt.Font("Bahnschrift", 1, 14)); // NOI18N
        lbMensaje.setForeground(new java.awt.Color(255, 255, 255));
        lbMensaje.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbMensaje.setCursor(new java.awt.Cursor(java.awt.Cursor.DEFAULT_CURSOR));
        getContentPane().add(lbMensaje);
        lbMensaje.setBounds(50, 20, 300, 120);

        lbFiller.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/ventana_aviso.jpg"))); // NOI18N
        getContentPane().add(lbFiller);
        lbFiller.setBounds(0, 0, 400, 220);

        lbBackgroundAviso.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/background_main_color.png"))); // NOI18N
        getContentPane().add(lbBackgroundAviso);
        lbBackgroundAviso.setBounds(0, 0, 400, 220);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void bAceptarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bAceptarActionPerformed
        ControladorVistas.cerrarVentanaAviso();
    }//GEN-LAST:event_bAceptarActionPerformed

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
            java.util.logging.Logger.getLogger(V_Aviso.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(V_Aviso.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(V_Aviso.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(V_Aviso.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new V_Aviso().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton bAceptar;
    private javax.swing.JLabel lbBackgroundAviso;
    private javax.swing.JLabel lbFiller;
    private javax.swing.JLabel lbMensaje;
    // End of variables declaration//GEN-END:variables
}
