/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Vistas;

import UML.Usuario;
import javax.swing.BorderFactory;
import javax.swing.JOptionPane;
import jems.JEMS;

/**
 *
 * @author Miguel Barros
 * @author Eric Muñoz
 *
 * @version %I%, %G%
 * @since 1.0
 */
public class V_Admin_Usuario extends javax.swing.JFrame {

    /**
     * Creates new form V_Usuario
     */
    public V_Admin_Usuario() {
        setUndecorated(true);
        initComponents();
        myInitComponents();
    }
    
    public void myInitComponents() {
        setSize(1280, 720);
        setLocationRelativeTo(null);
        tfCodigoUsuario.setBorder(BorderFactory.createCompoundBorder(
                tfCodigoUsuario.getBorder(),
                BorderFactory.createEmptyBorder(5, 5, 5, 5)));
        tfContraseña.setBorder(BorderFactory.createCompoundBorder(
                tfContraseña.getBorder(),
                BorderFactory.createEmptyBorder(5, 5, 5, 5)));
        tfUsuario.setBorder(BorderFactory.createCompoundBorder(
                tfUsuario.getBorder(),
                BorderFactory.createEmptyBorder(5, 5, 5, 5)));
    }

    public V_Admin_Usuario(String operacion) {
        setUndecorated(true);
        initComponents();
        myInitComponents();
        ope = operacion;
        switch (ope) {
            case "modificar":
                tfUsuario.setEditable(false);
                tfContraseña.setEditable(false);
                bAceptar.setEnabled(false);
                break;
            case "baja":
                tfUsuario.setEditable(false);
                tfContraseña.setEditable(false);
                bAceptar.setEnabled(false);
                break;
            case "alta":
                tfCodigoUsuario.setVisible(false);
                bAceptar.setEnabled(true);
                break;
            case "consulta":
                tfUsuario.setEditable(false);
                tfContraseña.setEditable(false);
                bAceptar.setEnabled(false);
                break;
        }

    }

    public boolean validarDatos() {
        if (validarUsuario(tfUsuario.getText()) && validarContraseña(tfContraseña.getText())) {
            return true;
        } else {
            return false;
        }
    }

    public boolean validarNombre(String nombre) {
        return true;
    }

    public boolean validarApellido(String apellido) {
        return true;
    }

    public boolean validarUsuario(String usuario) {
        return true;
    }

    public boolean validarContraseña(String contraseña) {
        return true;
    }
    private static String ope;

    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        bAceptar = new javax.swing.JButton();
        bVolver = new javax.swing.JButton();
        lbSubtitulo = new javax.swing.JLabel();
        tfUsuario = new javax.swing.JTextField();
        lbUsuario = new javax.swing.JLabel();
        lbContraseña = new javax.swing.JLabel();
        tfContraseña = new javax.swing.JTextField();
        lbCodigoUsuario = new javax.swing.JLabel();
        tfCodigoUsuario = new javax.swing.JTextField();
        bSalir = new javax.swing.JButton();
        lbBorde = new javax.swing.JLabel();
        lbRiot = new javax.swing.JLabel();
        lbVersion = new javax.swing.JLabel();
        lbFiller = new javax.swing.JLabel();
        lbBackgroundJugador = new javax.swing.JLabel();

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
        bAceptar.setBounds(500, 540, 280, 50);

        bVolver.setBackground(new java.awt.Color(86, 88, 149));
        bVolver.setFont(new java.awt.Font("Bahnschrift", 0, 18)); // NOI18N
        bVolver.setForeground(new java.awt.Color(255, 255, 255));
        bVolver.setText("VOLVER");
        bVolver.setBorder(javax.swing.BorderFactory.createEmptyBorder(1, 1, 1, 1));
        bVolver.setBorderPainted(false);
        bVolver.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        bVolver.setFocusPainted(false);
        bVolver.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bVolverActionPerformed(evt);
            }
        });
        getContentPane().add(bVolver);
        bVolver.setBounds(560, 630, 170, 30);

        lbSubtitulo.setFont(new java.awt.Font("Bahnschrift", 1, 48)); // NOI18N
        lbSubtitulo.setForeground(new java.awt.Color(86, 88, 149));
        lbSubtitulo.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbSubtitulo.setText("ADMINISTRAR USUARIOS");
        getContentPane().add(lbSubtitulo);
        lbSubtitulo.setBounds(350, 80, 640, 120);

        tfUsuario.setFont(new java.awt.Font("Bahnschrift", 1, 14)); // NOI18N
        tfUsuario.setBorder(null);
        getContentPane().add(tfUsuario);
        tfUsuario.setBounds(500, 350, 280, 30);

        lbUsuario.setFont(new java.awt.Font("Bahnschrift", 0, 18)); // NOI18N
        lbUsuario.setText("Usuario");
        getContentPane().add(lbUsuario);
        lbUsuario.setBounds(500, 310, 150, 40);

        lbContraseña.setFont(new java.awt.Font("Bahnschrift", 0, 18)); // NOI18N
        lbContraseña.setText("Contraseña");
        getContentPane().add(lbContraseña);
        lbContraseña.setBounds(500, 400, 150, 40);

        tfContraseña.setFont(new java.awt.Font("Bahnschrift", 1, 14)); // NOI18N
        tfContraseña.setBorder(null);
        getContentPane().add(tfContraseña);
        tfContraseña.setBounds(500, 440, 280, 30);

        lbCodigoUsuario.setFont(new java.awt.Font("Bahnschrift", 0, 18)); // NOI18N
        lbCodigoUsuario.setText("Codigo Usuario");
        getContentPane().add(lbCodigoUsuario);
        lbCodigoUsuario.setBounds(500, 220, 150, 40);

        tfCodigoUsuario.setFont(new java.awt.Font("Bahnschrift", 1, 14)); // NOI18N
        tfCodigoUsuario.setBorder(null);
        tfCodigoUsuario.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tfCodigoUsuarioActionPerformed(evt);
            }
        });
        getContentPane().add(tfCodigoUsuario);
        tfCodigoUsuario.setBounds(500, 260, 280, 30);

        bSalir.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/error.png"))); // NOI18N
        bSalir.setBorderPainted(false);
        bSalir.setContentAreaFilled(false);
        bSalir.setCursor(new java.awt.Cursor(java.awt.Cursor.HAND_CURSOR));
        bSalir.setFocusPainted(false);
        bSalir.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bSalirActionPerformed(evt);
            }
        });
        getContentPane().add(bSalir);
        bSalir.setBounds(1230, 10, 40, 40);

        lbBorde.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/blur.png"))); // NOI18N
        lbBorde.setBorder(new javax.swing.border.LineBorder(new java.awt.Color(86, 88, 149), 1, true));
        getContentPane().add(lbBorde);
        lbBorde.setBounds(470, 210, 340, 290);

        lbRiot.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/riotLogo.png"))); // NOI18N
        getContentPane().add(lbRiot);
        lbRiot.setBounds(10, 670, 100, 50);

        lbVersion.setFont(new java.awt.Font("Source Serif Pro Black", 3, 12)); // NOI18N
        lbVersion.setHorizontalAlignment(javax.swing.SwingConstants.CENTER);
        lbVersion.setText("FINAL_BUILD_V1.0.0");
        getContentPane().add(lbVersion);
        lbVersion.setBounds(1100, 680, 180, 30);

        lbFiller.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/Zoe.jpg"))); // NOI18N
        getContentPane().add(lbFiller);
        lbFiller.setBounds(0, 0, 1280, 720);

        lbBackgroundJugador.setBackground(new java.awt.Color(13, 9, 32));
        lbBackgroundJugador.setForeground(new java.awt.Color(13, 9, 32));
        lbBackgroundJugador.setIcon(new javax.swing.ImageIcon(getClass().getResource("/IMG/background_main_color.png"))); // NOI18N
        getContentPane().add(lbBackgroundJugador);
        lbBackgroundJugador.setBounds(0, 0, 1280, 720);

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void bAceptarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bAceptarActionPerformed
        try {
            if (validarDatos()) {
                switch (ope) {
                    case "modificar":
                        JEMS.modificarUsuario(Integer.parseInt(tfCodigoUsuario.getText()),tfUsuario.getText(), tfContraseña.getText());
                        ControladorVistas.abrirVentanaAviso("Usuario modificado con exito!");
                        break;
                    case "alta":
                        JEMS.altaUsuario(tfUsuario.getText(), tfContraseña.getText());
                        ControladorVistas.abrirVentanaAviso("Usuario dado de alta con exito!");
                        break;
                    case "baja":
                        JEMS.bajaUsuario(Integer.parseInt(tfCodigoUsuario.getText()));
                        ControladorVistas.abrirVentanaAviso("Usuario dado de baja con exito!");
                        break;
                }
            }
        } catch (Exception e) {
            ControladorVistas.abrirVentanaAviso("Error: " + e.getClass());
        }

    }//GEN-LAST:event_bAceptarActionPerformed

    private void tfCodigoUsuarioActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tfCodigoUsuarioActionPerformed
        try {
            Usuario usuario = JEMS.consultarUsuario(Integer.parseInt(tfCodigoUsuario.getText()));
            switch (ope) {
                case "modificar":
                    tfUsuario.setEditable(true);
                    tfContraseña.setEditable(true);
                    bAceptar.setEnabled(true);
                    tfUsuario.setText(usuario.getUsuario());
                    tfContraseña.setText(usuario.getContraseña());
                    tfCodigoUsuario.setEditable(false);
                    break;
                case "baja":
                    tfUsuario.setEditable(false);
                    tfContraseña.setEditable(false);
                    bAceptar.setEnabled(true);
                    tfUsuario.setText(usuario.getUsuario());
                    tfContraseña.setText(usuario.getContraseña());
                    break;
                case "consulta":
                    tfUsuario.setEditable(false);
                    tfContraseña.setEditable(false);
                    bAceptar.setEnabled(true);
                    tfUsuario.setText(usuario.getUsuario());
                    tfContraseña.setText(usuario.getContraseña());
                    break;
            }
        } catch (Exception e) {
            ControladorVistas.abrirVentanaAviso("Error: " + e.getClass());
        }
    }//GEN-LAST:event_tfCodigoUsuarioActionPerformed

    private void bVolverActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bVolverActionPerformed
        ControladorVistas.cerrarVentanaAdminUsuario();
    }//GEN-LAST:event_bVolverActionPerformed

    private void bSalirActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bSalirActionPerformed
        System.exit(0);
    }//GEN-LAST:event_bSalirActionPerformed

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
            java.util.logging.Logger.getLogger(V_Admin_Usuario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(V_Admin_Usuario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(V_Admin_Usuario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(V_Admin_Usuario.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new V_Admin_Usuario().setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JButton bAceptar;
    private javax.swing.JButton bSalir;
    private javax.swing.JButton bVolver;
    private javax.swing.JLabel lbBackgroundJugador;
    private javax.swing.JLabel lbBorde;
    private javax.swing.JLabel lbCodigoUsuario;
    private javax.swing.JLabel lbContraseña;
    private javax.swing.JLabel lbFiller;
    private javax.swing.JLabel lbRiot;
    private javax.swing.JLabel lbSubtitulo;
    private javax.swing.JLabel lbUsuario;
    private javax.swing.JLabel lbVersion;
    private javax.swing.JTextField tfCodigoUsuario;
    private javax.swing.JTextField tfContraseña;
    private javax.swing.JTextField tfUsuario;
    // End of variables declaration//GEN-END:variables
}
