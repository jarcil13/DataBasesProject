/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package basededatos;

import java.io.File;
import javax.swing.JFileChooser;
import javax.swing.JOptionPane;

/**
 *
 * @author María Arango
 */
public class ReadOrg extends BaseDeDatos {
    private static String user;   
    /**
     * Creates new form ReadOrg
     */
    public ReadOrg(String user) {
        initComponents();
        this.user = user;
        setEnable();
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
        jPanel1 = new javax.swing.JPanel();
        energy = new javax.swing.JRadioButton();
        aqueduct = new javax.swing.JRadioButton();
        internet = new javax.swing.JRadioButton();
        sewerage = new javax.swing.JRadioButton();
        gas = new javax.swing.JRadioButton();
        jLabel3 = new javax.swing.JLabel();
        tv = new javax.swing.JRadioButton();
        telephony = new javax.swing.JRadioButton();
        bTabla = new javax.swing.JButton();
        bEliminar = new javax.swing.JButton();
        bGraficar = new javax.swing.JButton();
        jScrollPane2 = new javax.swing.JScrollPane();
        list = new javax.swing.JList<>();
        boxMonth2 = new javax.swing.JComboBox<>();
        lblmonth2 = new javax.swing.JLabel();
        lblyear2 = new javax.swing.JLabel();
        year2 = new javax.swing.JTextField();
        lblmonth1 = new javax.swing.JLabel();
        boxMonth1 = new javax.swing.JComboBox<>();
        year1 = new javax.swing.JTextField();
        lblyear1 = new javax.swing.JLabel();
        vs = new javax.swing.JLabel();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jLabel2.setText("Criterios de consulta");

        jPanel1.setBorder(javax.swing.BorderFactory.createLineBorder(new java.awt.Color(0, 0, 0)));

        javax.swing.GroupLayout jPanel1Layout = new javax.swing.GroupLayout(jPanel1);
        jPanel1.setLayout(jPanel1Layout);
        jPanel1Layout.setHorizontalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 433, Short.MAX_VALUE)
        );
        jPanel1Layout.setVerticalGroup(
            jPanel1Layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGap(0, 0, Short.MAX_VALUE)
        );

        energy.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        energy.setText("Energía");
        energy.setActionCommand("Energía");
        energy.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                energyActionPerformed(evt);
            }
        });

        aqueduct.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        aqueduct.setText("Acueducto");
        aqueduct.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                aqueductActionPerformed(evt);
            }
        });

        internet.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        internet.setText("Internet");
        internet.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                internetActionPerformed(evt);
            }
        });

        sewerage.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        sewerage.setText("Alcantarillado");
        sewerage.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                sewerageActionPerformed(evt);
            }
        });

        gas.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        gas.setText("Gas");
        gas.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                gasActionPerformed(evt);
            }
        });

        jLabel3.setFont(new java.awt.Font("Tahoma", 0, 36)); // NOI18N
        jLabel3.setText("Consultas");

        tv.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        tv.setText("Televisión");
        tv.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                tvActionPerformed(evt);
            }
        });

        telephony.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        telephony.setText("Telefonía");
        telephony.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                telephonyActionPerformed(evt);
            }
        });

        bTabla.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        bTabla.setText("Tabla");
        bTabla.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bTablaActionPerformed(evt);
            }
        });

        bEliminar.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        bEliminar.setText("Eliminar");
        bEliminar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bEliminarActionPerformed(evt);
            }
        });

        bGraficar.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        bGraficar.setText("Graficar");
        bGraficar.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                bGraficarActionPerformed(evt);
            }
        });

        list.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        jScrollPane2.setViewportView(list);

        boxMonth2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        boxMonth2.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre" }));

        lblmonth2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblmonth2.setText("Mes");

        lblyear2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblyear2.setText("Año");

        year2.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        lblmonth1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblmonth1.setText("Mes");

        boxMonth1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        boxMonth1.setModel(new javax.swing.DefaultComboBoxModel<>(new String[] { "Enero", "Febrero", "Marzo", "Abril", "Mayo", "Junio", "Julio", "Agosto", "Septiembre", "Octubre", "Noviembre", "Diciembre" }));

        year1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N

        lblyear1.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        lblyear1.setText("Año");

        vs.setFont(new java.awt.Font("Tahoma", 0, 18)); // NOI18N
        vs.setText("VS");

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGap(64, 64, 64)
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jLabel1))
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap()
                        .addComponent(bEliminar)
                        .addGap(31, 31, 31)
                        .addComponent(bTabla)
                        .addGap(18, 18, 18)
                        .addComponent(bGraficar)
                        .addGap(0, 0, Short.MAX_VALUE)))
                .addGap(411, 411, 411))
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(7, 7, 7)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addComponent(internet)
                                    .addComponent(tv)
                                    .addComponent(gas)
                                    .addComponent(energy)
                                    .addComponent(sewerage)
                                    .addComponent(aqueduct)
                                    .addComponent(telephony)))
                            .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(year1, javax.swing.GroupLayout.PREFERRED_SIZE, 87, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addContainerGap()
                                .addComponent(year2, javax.swing.GroupLayout.PREFERRED_SIZE, 87, javax.swing.GroupLayout.PREFERRED_SIZE)))
                        .addGap(2, 2, 2)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                                    .addComponent(boxMonth1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                                    .addComponent(boxMonth2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED))
                            .addGroup(layout.createSequentialGroup()
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addComponent(jScrollPane2, javax.swing.GroupLayout.PREFERRED_SIZE, 196, javax.swing.GroupLayout.PREFERRED_SIZE))
                                    .addGroup(layout.createSequentialGroup()
                                        .addGap(14, 14, 14)
                                        .addComponent(vs)))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, 12, Short.MAX_VALUE))))
                    .addGroup(javax.swing.GroupLayout.Alignment.LEADING, layout.createSequentialGroup()
                        .addGap(37, 37, 37)
                        .addComponent(lblyear1)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(lblmonth1)
                        .addGap(48, 48, 48))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(35, 35, 35)
                        .addComponent(lblyear2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(lblmonth2)
                        .addGap(52, 52, 52)))
                .addComponent(jPanel1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                .addContainerGap())
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                    .addContainerGap(339, Short.MAX_VALUE)
                    .addComponent(jLabel3)
                    .addGap(299, 299, 299)))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(73, 73, 73)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addComponent(jPanel1, javax.swing.GroupLayout.Alignment.TRAILING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jLabel2)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addComponent(jLabel1)
                        .addGap(10, 10, 10)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(energy)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(aqueduct)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(sewerage)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(gas)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(tv)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(internet)
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(telephony))
                            .addComponent(jScrollPane2))
                        .addGap(18, 18, 18)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblyear1)
                            .addComponent(lblmonth1))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(boxMonth2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(year1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(vs)
                        .addGap(11, 11, 11)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(lblmonth2)
                            .addComponent(lblyear2, javax.swing.GroupLayout.PREFERRED_SIZE, 22, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(year2, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)
                            .addComponent(boxMonth1, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGap(32, 32, 32)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(bTabla)
                            .addComponent(bGraficar)
                            .addComponent(bEliminar))))
                .addContainerGap())
            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                .addGroup(layout.createSequentialGroup()
                    .addGap(5, 5, 5)
                    .addComponent(jLabel3)
                    .addContainerGap(525, Short.MAX_VALUE)))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void bTablaActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bTablaActionPerformed
        Tabla tabla = new Tabla(); // se le envia el set de datos tabular
        tabla.setVisible(true);
    }//GEN-LAST:event_bTablaActionPerformed

    private void bEliminarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bEliminarActionPerformed
        JOptionPane.showMessageDialog(null,
            "PERMISO DENEGADO",
            "Error Message",
            JOptionPane.WARNING_MESSAGE);
    }//GEN-LAST:event_bEliminarActionPerformed

    private void bGraficarActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_bGraficarActionPerformed
        // Grafica con ayuda de JFreeCharp
    }//GEN-LAST:event_bGraficarActionPerformed

    private void energyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_energyActionPerformed
        if(energy.isSelected()) {
            aqueduct.setEnabled(false);
            sewerage.setEnabled(false);
            gas.setEnabled(false);
            telephony.setEnabled(false);
            tv.setEnabled(false);
            internet.setEnabled(false);
            String[] es = {"Costo por mes", "Consumo (KHW)", "Costo unitario", "Beneficio", "Otra mierda", "Otra mierda", "Otra mierda"};
            list.setListData(es);
            setEnableT();
        } else {
           aqueduct.setEnabled(true);
            sewerage.setEnabled(true);
            gas.setEnabled(true);
            telephony.setEnabled(true);
            tv.setEnabled(true);
            internet.setEnabled(true); 
            clearList();
            setEnable();
        }
    }//GEN-LAST:event_energyActionPerformed

    private void aqueductActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_aqueductActionPerformed
        if(aqueduct.isSelected()) {
            sewerage.setEnabled(false);
            gas.setEnabled(false);
            telephony.setEnabled(false);
            tv.setEnabled(false);
            internet.setEnabled(false);
            energy.setEnabled(false);
            String[] es = {"Costo por mes", "Consumo (M3)", "Costo unitario", "Beneficio", "Otra mierda", "Otra mierda", "Otra mierda"};
            list.setListData(es);
            setEnableT();
        } else {
            sewerage.setEnabled(true);
            gas.setEnabled(true);
            telephony.setEnabled(true);
            tv.setEnabled(true);
            internet.setEnabled(true);
            energy.setEnabled(true);
            clearList();
            setEnable();
        }
    }//GEN-LAST:event_aqueductActionPerformed

    private void sewerageActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_sewerageActionPerformed
        if(sewerage.isSelected()) {
            gas.setEnabled(false);
            telephony.setEnabled(false);
            tv.setEnabled(false);
            internet.setEnabled(false);
            energy.setEnabled(false);
            aqueduct.setEnabled(false);
            String[] es = {"Costo por mes", "Consumo (M3)", "Costo unitario", "Beneficio", "Otra mierda", "Otra mierda", "Otra mierda"};
            list.setListData(es);
            setEnableT();
        } else {
            gas.setEnabled(true);
            telephony.setEnabled(true);
            tv.setEnabled(true);
            internet.setEnabled(true);
            energy.setEnabled(true);
            aqueduct.setEnabled(true);
            clearList();
            setEnable();
        }
    }//GEN-LAST:event_sewerageActionPerformed

    private void gasActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_gasActionPerformed
        if(gas.isSelected()) {
            telephony.setEnabled(false);
            tv.setEnabled(false);
            internet.setEnabled(false);
            energy.setEnabled(false);
            aqueduct.setEnabled(false);
            sewerage.setEnabled(false);
            String[] es = {"Costo por mes", "Consumo (M3)", "Costo unitario", "Beneficio", "Diferencia (M3)", "Equivalencia (KHW)", "Otra mierda"};
            list.setListData(es);
            setEnableT();
        } else {
            telephony.setEnabled(true);
            tv.setEnabled(true);
            internet.setEnabled(true);
            energy.setEnabled(true);
            aqueduct.setEnabled(true);
            sewerage.setEnabled(true);
            clearList();
            setEnable();
        }
    }//GEN-LAST:event_gasActionPerformed

    private void tvActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_tvActionPerformed
        if(tv.isSelected()) {
            internet.setEnabled(false);
            energy.setEnabled(false);
            aqueduct.setEnabled(false);
            sewerage.setEnabled(false);
            gas.setEnabled(false);
            telephony.setEnabled(false);
            String[] es = {"Costo por mes", "Canales"};
            list.setListData(es);
            setEnableT();
        } else {
            internet.setEnabled(true);
            energy.setEnabled(true);
            aqueduct.setEnabled(true);
            sewerage.setEnabled(true);
            gas.setEnabled(true);
            telephony.setEnabled(true);
            clearList();
            setEnable();
        }
    }//GEN-LAST:event_tvActionPerformed

    private void internetActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_internetActionPerformed
        if(internet.isSelected()) {
            energy.setEnabled(false);
            aqueduct.setEnabled(false);
            sewerage.setEnabled(false);
            gas.setEnabled(false);
            telephony.setEnabled(false);
            tv.setEnabled(false);
            String[] es = {"Costo por mes", "Velocidad (MBS)"};
            list.setListData(es);
            setEnableT();
        } else {
           energy.setEnabled(true);
            aqueduct.setEnabled(true);
            sewerage.setEnabled(true);
            gas.setEnabled(true);
            telephony.setEnabled(true);
            tv.setEnabled(true); 
            clearList();
            setEnable();
        }
    }//GEN-LAST:event_internetActionPerformed

    private void telephonyActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_telephonyActionPerformed
        if(telephony.isSelected()) {
            tv.setEnabled(false);
            internet.setEnabled(false);
            energy.setEnabled(false);
            aqueduct.setEnabled(false);
            sewerage.setEnabled(false);
            gas.setEnabled(false);
            String[] es = {"Costo por mes", "Minutos"};
            list.setListData(es);
            setEnableT();
        } else {
           tv.setEnabled(true);
            internet.setEnabled(true);
            energy.setEnabled(true);
            aqueduct.setEnabled(true);
            sewerage.setEnabled(true);
            gas.setEnabled(true); 
            clearList();
            setEnable();
        }
    }//GEN-LAST:event_telephonyActionPerformed
    
    public void clearList() {
        String[] es = {};
        list.setListData(es);
    }
    
    public void setEnable() {
        year1.setEnabled(false);
        year2.setEnabled(false);
        boxMonth1.setEnabled(false);
        boxMonth2.setEnabled(false);
    }
    
    public void setEnableT() {
        year1.setEnabled(true);
        year2.setEnabled(true);
        boxMonth1.setEnabled(true);
        boxMonth2.setEnabled(true);
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
            java.util.logging.Logger.getLogger(ReadOrg.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(ReadOrg.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(ReadOrg.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(ReadOrg.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new ReadOrg(user).setVisible(true);
            }
        });
    }

    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JRadioButton aqueduct;
    private javax.swing.JButton bEliminar;
    private javax.swing.JButton bGraficar;
    private javax.swing.JButton bTabla;
    private javax.swing.JComboBox<String> boxMonth1;
    private javax.swing.JComboBox<String> boxMonth2;
    private javax.swing.JRadioButton energy;
    private javax.swing.JRadioButton gas;
    private javax.swing.JRadioButton internet;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JPanel jPanel1;
    private javax.swing.JScrollPane jScrollPane2;
    private javax.swing.JLabel lblmonth1;
    private javax.swing.JLabel lblmonth2;
    private javax.swing.JLabel lblyear1;
    private javax.swing.JLabel lblyear2;
    private javax.swing.JList<String> list;
    private javax.swing.JRadioButton sewerage;
    private javax.swing.JRadioButton telephony;
    private javax.swing.JRadioButton tv;
    private javax.swing.JLabel vs;
    private javax.swing.JTextField year1;
    private javax.swing.JTextField year2;
    // End of variables declaration//GEN-END:variables
}
