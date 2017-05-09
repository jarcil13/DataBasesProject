/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basededatos;

import java.sql.SQLException;
import javax.swing.JOptionPane;

/**
 *
 * @author María Arango
 */
public class SignUp extends BaseDeDatos {

    public static String auxPass;
    public static int auxItem;
    /**
     * Creates new form SignIn
     */
    public SignUp(String auxPass, int auxItem) {
        initComponents();
        this.auxPass = auxPass;
        this.auxItem = auxItem;
        collect();
    }

    private void collect() {
        if(auxItem == 1) {
            name.setVisible(true);
            date.setVisible(true);
            address.setVisible(false);
            activity.setVisible(false);
            yearFormat.setVisible(true);
            //recorlectar datos y enviar a la base de datos
            
        } else{
            name.setVisible(false);
            date.setVisible(false);
            address.setVisible(true);
            activity.setVisible(true);
            yearFormat.setVisible(false);
        }
     
    }
    /**
     * This method is called from within the constructor to initialize the form.
     * WARNING: Do NOT modify this code. The content of this method is always
     * regenerated by the Form Editor.
     */
    @SuppressWarnings("unchecked")
    // <editor-fold defaultstate="collapsed" desc="Generated Code">//GEN-BEGIN:initComponents
    private void initComponents() {

        jLabel1 = new javax.swing.JLabel();
        jLabel2 = new javax.swing.JLabel();
        password = new javax.swing.JPasswordField();
        goOn = new javax.swing.JButton();
        toReturn1 = new javax.swing.JButton();
        name = new javax.swing.JLabel();
        lNameAddress = new javax.swing.JTextField();
        date = new javax.swing.JLabel();
        address = new javax.swing.JLabel();
        activity = new javax.swing.JLabel();
        lDateActivity = new javax.swing.JTextField();
        yearFormat = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 0, 48)); // NOI18N
        jLabel1.setText("Sign Up");

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel2.setText("Por favor, confirme su identificación");

        password.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        goOn.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        goOn.setText("Continuar");
        goOn.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                goOnActionPerformed(evt);
            }
        });

        toReturn1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        toReturn1.setText("Regresar");
        toReturn1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                toReturn1ActionPerformed(evt);
            }
        });

        name.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        name.setText("Nombre");

        lNameAddress.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lNameAddress.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                lNameAddressActionPerformed(evt);
            }
        });

        date.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        date.setText("Fecha de recaudo");

        address.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        address.setText("Dirección");

        activity.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        activity.setText("Actividad");

        lDateActivity.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        yearFormat.setFont(new java.awt.Font("Dialog", 1, 18)); // NOI18N
        yearFormat.setText("Formato de fecha: YYYY-MM-DD");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(77, 77, 77)
                        .addComponent(toReturn1, javax.swing.GroupLayout.PREFERRED_SIZE, 117, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(goOn, javax.swing.GroupLayout.PREFERRED_SIZE, 117, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(190, 190, 190)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addComponent(lNameAddress, javax.swing.GroupLayout.PREFERRED_SIZE, 215, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(name, javax.swing.GroupLayout.PREFERRED_SIZE, 82, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                    .addComponent(address))
                                .addGroup(layout.createSequentialGroup()
                                    .addComponent(date)
                                    .addGap(18, 18, 18)
                                    .addComponent(activity)))
                            .addComponent(lDateActivity, javax.swing.GroupLayout.PREFERRED_SIZE, 215, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(0, 67, Short.MAX_VALUE)))
                .addGap(78, 78, 78))
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(163, 163, 163)
                        .addComponent(jLabel2))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(216, 216, 216)
                        .addComponent(password, javax.swing.GroupLayout.PREFERRED_SIZE, 156, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(216, 216, 216)
                        .addComponent(jLabel1, javax.swing.GroupLayout.PREFERRED_SIZE, 215, javax.swing.GroupLayout.PREFERRED_SIZE)))
                .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE))
            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                .addGap(0, 0, Short.MAX_VALUE)
                .addComponent(yearFormat)
                .addGap(116, 116, 116))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(27, 27, 27)
                .addComponent(jLabel1)
                .addGap(18, 18, 18)
                .addComponent(jLabel2)
                .addGap(18, 18, 18)
                .addComponent(password, javax.swing.GroupLayout.PREFERRED_SIZE, 32, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(25, 25, 25)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(name)
                    .addComponent(address))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                .addComponent(lNameAddress, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(15, 15, 15)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(date)
                    .addComponent(activity))
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                .addComponent(lDateActivity, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addGap(18, 18, 18)
                .addComponent(yearFormat)
                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 36, Short.MAX_VALUE)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(toReturn1, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE)
                    .addComponent(goOn, javax.swing.GroupLayout.PREFERRED_SIZE, 33, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(29, 29, 29))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void goOnActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_goOnActionPerformed
        try {
            if(!(new String(password.getPassword()).equals(auxPass)) && auxItem == 1) {
                JOptionPane.showMessageDialog(null,
                    "La identificación que ha ingresado es diferente",
                    "Error Message",
                    JOptionPane.ERROR_MESSAGE);
            } else if(!(new String(password.getPassword()).equals(auxPass)) && auxItem == 2) {
                JOptionPane.showMessageDialog(null,
                    "Ingresó un contrato diferente al que digitó anteriormente",
                    "Error Message",
                    JOptionPane.ERROR_MESSAGE);
            }
        
            if(auxItem == 1 && lDateActivity.getText().length() == 0) {
                JOptionPane.showMessageDialog(null,
                    "Debe indicar cuáles servicios presta su empresa",
                    "Error Message",
                    JOptionPane.ERROR_MESSAGE);
            } else if(auxItem == 2 &&  lDateActivity.getText().length() == 0) {
                JOptionPane.showMessageDialog(null,
                    "Debe indicar si el contrato pertenece a una casa o una empresa",
                    "Error Message",
                    JOptionPane.ERROR_MESSAGE);
            } else {
                if(new String(password.getPassword()).equals(auxPass)){
                    if(auxItem == 1) this.update("Enterprise", ("'" + auxPass + "', '" + lNameAddress.getText() + "', '" + lDateActivity.getText()) + "'");
                    
                    if(auxItem == 2) this.update("Organization", ("'" + auxPass + "', '" + lNameAddress.getText() + "', '" + lDateActivity.getText()) + "'");
                    
                    JOptionPane.showMessageDialog(null,
                        "La información se ha guardado exitosamente",
                        "",
                        JOptionPane.INFORMATION_MESSAGE);
                    Inicio in = new Inicio();
                    this.setVisible(false);
                    in.setVisible(true);
                }
            }
        } catch(SQLException e) {
            System.out.println("Error en la ejecución:" 
            + e.getErrorCode() + " " + e.getMessage());
            if(e.getMessage().equals("Duplicate entry '1' for key 'PRIMARY'")) {
                JOptionPane.showMessageDialog(null,
                    "Usted ya está registrado en el sistema",
                    "",
                    JOptionPane.ERROR_MESSAGE);
            }
        }
    }//GEN-LAST:event_goOnActionPerformed

    private void toReturn1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_toReturn1ActionPerformed
        Inicio in = new Inicio();
        this.setVisible(false);
        in.setVisible(true);
    }//GEN-LAST:event_toReturn1ActionPerformed

    private void lNameAddressActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_lNameAddressActionPerformed
        
    }//GEN-LAST:event_lNameAddressActionPerformed

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
            java.util.logging.Logger.getLogger(SignUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(SignUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(SignUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(SignUp.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new SignUp(auxPass, auxItem).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JLabel activity;
    private javax.swing.JLabel address;
    private javax.swing.JLabel date;
    private javax.swing.JButton goOn;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JTextField lDateActivity;
    private javax.swing.JTextField lNameAddress;
    private javax.swing.JLabel name;
    private javax.swing.JPasswordField password;
    private javax.swing.JButton toReturn1;
    private javax.swing.JLabel yearFormat;
    // End of variables declaration//GEN-END:variables
}
