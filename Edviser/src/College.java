
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.ResultSetMetaData;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Vector;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JFrame;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import javax.swing.table.DefaultTableModel;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author idebankurdas
 */
public class College extends javax.swing.JFrame {
    private Statement st1;

    /**
     * Creates new form College
     */
    public College() {
        initComponents();

        try {
                    FillTable(table,"select * from college;");
                } catch (Exception ex) {
                    Logger.getLogger(College.class.getName()).log(Level.SEVERE, null, ex);
                }
        
        table.addMouseListener(new java.awt.event.MouseAdapter() {
    @Override
    public void mouseClicked(java.awt.event.MouseEvent evt) {
         Object collageName=table.getValueAt(table.getSelectedRow(), 1);
         Object collageCountry=table.getValueAt(table.getSelectedRow(), 2);
         Object collageState=table.getValueAt(table.getSelectedRow(),3);
         Object collageCity=table.getValueAt(table.getSelectedRow(), 4);
         Object collageDetails =table.getValueAt(table.getSelectedRow(), 5);
         
         collegename_txt.setText(collageName.toString());
         country_txt.setText(collageCountry.toString());
         state_txt.setText(collageState.toString());
         city_txt.setText(collageCity.toString());
         detail_txt.setText(collageDetails.toString());
    }
});
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
        jLabel3 = new javax.swing.JLabel();
        jLabel4 = new javax.swing.JLabel();
        jLabel5 = new javax.swing.JLabel();
        jLabel6 = new javax.swing.JLabel();
        collegename_txt = new javax.swing.JTextField();
        country_txt = new javax.swing.JTextField();
        state_txt = new javax.swing.JTextField();
        city_txt = new javax.swing.JTextField();
        detail_txt = new javax.swing.JTextField();
        jButton1 = new javax.swing.JButton();
        jButton2 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();
        jScrollPane1 = new javax.swing.JScrollPane();
        table = new javax.swing.JTable();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel1.setText("College Detail");

        jLabel2.setText("College Name");

        jLabel3.setText("Country");

        jLabel4.setText("State");

        jLabel5.setText("City");

        jLabel6.setText("Details");

        country_txt.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                country_txtActionPerformed(evt);
            }
        });

        jButton1.setText("Back");
        jButton1.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton1ActionPerformed(evt);
            }
        });

        jButton2.setText("Insert");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton4.setText("Delete");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jButton5.setText("Update");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        table.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null},
                {null, null, null, null, null, null}
            },
            new String [] {
                "ID", "College name", "Country", "State", "City", "Details"
            }
        ));
        jScrollPane1.setViewportView(table);

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addContainerGap(javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addComponent(jButton2, javax.swing.GroupLayout.PREFERRED_SIZE, 66, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton4, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton1, javax.swing.GroupLayout.PREFERRED_SIZE, 65, javax.swing.GroupLayout.PREFERRED_SIZE))
                    .addGroup(layout.createSequentialGroup()
                        .addGap(40, 40, 40)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addGap(4, 4, 4)
                                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                    .addGroup(layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                            .addComponent(jLabel5, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .addComponent(jLabel6))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                            .addComponent(city_txt)
                                            .addComponent(detail_txt, javax.swing.GroupLayout.PREFERRED_SIZE, 121, javax.swing.GroupLayout.PREFERRED_SIZE)))
                                    .addGroup(javax.swing.GroupLayout.Alignment.TRAILING, layout.createSequentialGroup()
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING, false)
                                            .addComponent(jLabel4, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .addComponent(jLabel3, javax.swing.GroupLayout.Alignment.LEADING, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                                            .addComponent(jLabel2, javax.swing.GroupLayout.Alignment.LEADING))
                                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                            .addComponent(collegename_txt)
                                            .addComponent(country_txt)
                                            .addComponent(state_txt, javax.swing.GroupLayout.PREFERRED_SIZE, 121, javax.swing.GroupLayout.PREFERRED_SIZE))))
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)
                                .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 381, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addComponent(jLabel1)
                                .addGap(0, 0, Short.MAX_VALUE)))))
                .addContainerGap(37, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(29, 29, 29)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 175, javax.swing.GroupLayout.PREFERRED_SIZE)
                        .addGap(0, 25, Short.MAX_VALUE))
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(collegename_txt, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(country_txt, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(state_txt, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED, javax.swing.GroupLayout.DEFAULT_SIZE, Short.MAX_VALUE)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel5)
                            .addComponent(city_txt, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                            .addGroup(layout.createSequentialGroup()
                                .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                                .addComponent(detail_txt, javax.swing.GroupLayout.PREFERRED_SIZE, 50, javax.swing.GroupLayout.PREFERRED_SIZE))
                            .addGroup(layout.createSequentialGroup()
                                .addGap(19, 19, 19)
                                .addComponent(jLabel6)))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.RELATED)))
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton4)
                    .addComponent(jButton1)
                    .addComponent(jButton5)
                    .addComponent(jButton2))
                .addGap(20, 20, 20))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void country_txtActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_country_txtActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_country_txtActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
       
         try{
               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection cn = DriverManager.getConnection("jdbc:odbc:edviser");
        
               
               
               PreparedStatement p1 = cn.prepareStatement("insert into college(college_name,college_country,college_state,college_city,college_details) values(?,?,?,?,?)");
               
               p1.clearParameters();
               p1.setString(1,collegename_txt.getText());
               p1.setString(2,country_txt.getText());
               p1.setString(3,state_txt.getText());
               p1.setString(4,city_txt.getText());
               p1.setString(5,detail_txt.getText());
              
               p1.executeUpdate();
               
               p1.close();           
               cn.close();
                 
               DefaultTableModel dm = (DefaultTableModel)table.getModel();
               dm.getDataVector().removeAllElements();
               dm.fireTableDataChanged();

               FillTable(table,"select * from college;");
               
               JOptionPane.showMessageDialog(null, "College added!!", "InfoBox: ", JOptionPane.INFORMATION_MESSAGE);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        

// TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

    private void jButton1ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton1ActionPerformed
          JFrame admin_main=new admin_main();
               admin_main.show();
               this.hide();
 // TODO add your handling code here:
    }//GEN-LAST:event_jButton1ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
            if  (JOptionPane.showConfirmDialog(null, "Are You Sure?", "WARNING ", JOptionPane.YES_NO_OPTION)==JOptionPane.YES_OPTION){
                 Object value=table.getValueAt(table.getSelectedRow(), 0);
   
      try{
               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection cn = DriverManager.getConnection("jdbc:odbc:edviser");        
               
               PreparedStatement p1 = cn.prepareStatement("delete from college where ID=?");
               
               p1.clearParameters();
               p1.setInt(1,(int)value);
             
               p1.executeUpdate();
               cn.close();

               DefaultTableModel dm = (DefaultTableModel)table.getModel();
               dm.getDataVector().removeAllElements();
               dm.fireTableDataChanged();

               FillTable(table,"select * from college;");
               
               JOptionPane.showMessageDialog(null, "College removed!!", "InfoBox: ", JOptionPane.INFORMATION_MESSAGE);

        }catch(Exception e){
            System.out.println(e.getMessage());
        }
            }else{
                
            
                }

       
// TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed
                if(table.getSelectedRow()==-1){
                        JOptionPane.showMessageDialog(null, "Select a Row.", "InfoBox: ", JOptionPane.INFORMATION_MESSAGE);

                }else{
                            try{
               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection cn = DriverManager.getConnection("jdbc:odbc:edviser");
        
                Object value=table.getValueAt(table.getSelectedRow(), 0);
   
               
               PreparedStatement p1 = cn.prepareStatement("update college set college_name=?,college_country=?,college_state=?,college_city=?,college_details=? where ID=?");
               p1.clearParameters();
               p1.setString(1,collegename_txt.getText());
               p1.setString(2,country_txt.getText());
               p1.setString(3,state_txt.getText());
               p1.setString(4,city_txt.getText());
               p1.setString(5,detail_txt.getText());
               p1.setInt(6,(int) value);
               p1.executeUpdate();
               
               p1.close();           
               cn.close();
                 
               DefaultTableModel dm = (DefaultTableModel)table.getModel();
               dm.getDataVector().removeAllElements();
               dm.fireTableDataChanged();

               FillTable(table,"select * from college;");
               
               JOptionPane.showMessageDialog(null, "College Updated!!", "InfoBox: ", JOptionPane.INFORMATION_MESSAGE);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        

                }
// TODO add your handling code here:
    }//GEN-LAST:event_jButton5ActionPerformed

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
            java.util.logging.Logger.getLogger(College.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(College.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(College.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(College.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new College().setVisible(true);             
            }
        });
        
    }

    public Connection createConnection(){
        try{
               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
              return DriverManager.getConnection("jdbc:odbc:edviser");

        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        return null;
    }
    
    public void FillTable(JTable table, String Query) throws Exception{
        Connection conn=createConnection();
        Statement stat = conn.createStatement();
        ResultSet rs = stat.executeQuery(Query);
        while(table.getRowCount() > 0) 
        {
            ((DefaultTableModel) table.getModel()).removeRow(0);
        }
        int columns = rs.getMetaData().getColumnCount();
        while(rs.next())
        {  
            Object[] row = new Object[columns];
            for (int i = 1; i <= columns; i++)
            {  
                row[i - 1] = rs.getObject(i);
            }
            ((DefaultTableModel) table.getModel()).insertRow(rs.getRow()-1,row);
        }
        rs.close();
        stat.close();
        conn.close();
}
    
    // Variables declaration - do not modify//GEN-BEGIN:variables
    private javax.swing.JTextField city_txt;
    private javax.swing.JTextField collegename_txt;
    private javax.swing.JTextField country_txt;
    private javax.swing.JTextField detail_txt;
    private javax.swing.JButton jButton1;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JLabel jLabel6;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField state_txt;
    private javax.swing.JTable table;
    // End of variables declaration//GEN-END:variables
}
