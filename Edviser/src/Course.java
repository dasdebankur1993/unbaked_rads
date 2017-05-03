
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
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
public class Course extends javax.swing.JFrame {
private Statement st1;
    /**
     * Creates new form Course
     */
    public Course() {
        initComponents();
        
        try {
                    FillTable(table1,"select * from course;");
                } catch (Exception ex) {
                    Logger.getLogger(Course.class.getName()).log(Level.SEVERE, null, ex);
                }
        
        table1.addMouseListener(new java.awt.event.MouseAdapter() {
    @Override
    public void mouseClicked(java.awt.event.MouseEvent evt) {
         Object courseName=table1.getValueAt(table1.getSelectedRow(), 1);
         Object courseLevel=table1.getValueAt(table1.getSelectedRow(), 2);
         Object courseStream=table1.getValueAt(table1.getSelectedRow(),3);
         Object courseDiscription=table1.getValueAt(table1.getSelectedRow(), 4);
         
         coursename_txt.setText(courseName.toString());
         level_txt.setText(courseLevel.toString());
         stream_txt.setText(courseStream.toString());
         discription_txt.setText(courseDiscription.toString());
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
        coursename_txt = new javax.swing.JTextField();
        level_txt = new javax.swing.JTextField();
        stream_txt = new javax.swing.JTextField();
        discription_txt = new javax.swing.JTextField();
        jScrollPane1 = new javax.swing.JScrollPane();
        table1 = new javax.swing.JTable();
        jButton2 = new javax.swing.JButton();
        jButton3 = new javax.swing.JButton();
        jButton4 = new javax.swing.JButton();
        jButton5 = new javax.swing.JButton();

        setDefaultCloseOperation(javax.swing.WindowConstants.EXIT_ON_CLOSE);

        jLabel1.setFont(new java.awt.Font("Tahoma", 1, 18)); // NOI18N
        jLabel1.setText("Course Detail");

        jLabel2.setText("Course Name");

        jLabel3.setText("Level");

        jLabel4.setText("Stream");

        jLabel5.setText("Discription");

        coursename_txt.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                coursename_txtActionPerformed(evt);
            }
        });

        table1.setModel(new javax.swing.table.DefaultTableModel(
            new Object [][] {
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null},
                {null, null, null, null, null}
            },
            new String [] {
                "ID", "Course Name", "Level", "Stream", "Discription"
            }
        ));
        jScrollPane1.setViewportView(table1);

        jButton2.setText("Back");
        jButton2.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton2ActionPerformed(evt);
            }
        });

        jButton3.setText("Delete");
        jButton3.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton3ActionPerformed(evt);
            }
        });

        jButton4.setText("Update");
        jButton4.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton4ActionPerformed(evt);
            }
        });

        jButton5.setText("Insert");
        jButton5.addActionListener(new java.awt.event.ActionListener() {
            public void actionPerformed(java.awt.event.ActionEvent evt) {
                jButton5ActionPerformed(evt);
            }
        });

        javax.swing.GroupLayout layout = new javax.swing.GroupLayout(getContentPane());
        getContentPane().setLayout(layout);
        layout.setHorizontalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addGap(41, 41, 41)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.TRAILING)
                    .addGroup(layout.createSequentialGroup()
                        .addComponent(jButton5)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton4)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton3)
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addComponent(jButton2))
                    .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                        .addComponent(jLabel1)
                        .addGroup(layout.createSequentialGroup()
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                                .addComponent(jLabel2)
                                .addComponent(jLabel3)
                                .addComponent(jLabel4)
                                .addComponent(jLabel5))
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                            .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING, false)
                                .addComponent(coursename_txt, javax.swing.GroupLayout.DEFAULT_SIZE, 87, Short.MAX_VALUE)
                                .addComponent(level_txt)
                                .addComponent(stream_txt)
                                .addComponent(discription_txt))
                            .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                            .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 402, javax.swing.GroupLayout.PREFERRED_SIZE))))
                .addContainerGap(30, Short.MAX_VALUE))
        );
        layout.setVerticalGroup(
            layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
            .addGroup(layout.createSequentialGroup()
                .addContainerGap()
                .addComponent(jLabel1)
                .addGap(24, 24, 24)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.LEADING)
                    .addGroup(layout.createSequentialGroup()
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel2)
                            .addComponent(coursename_txt, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel3)
                            .addComponent(level_txt, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel4)
                            .addComponent(stream_txt, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE))
                        .addPreferredGap(javax.swing.LayoutStyle.ComponentPlacement.UNRELATED)
                        .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                            .addComponent(jLabel5)
                            .addComponent(discription_txt, javax.swing.GroupLayout.PREFERRED_SIZE, javax.swing.GroupLayout.DEFAULT_SIZE, javax.swing.GroupLayout.PREFERRED_SIZE)))
                    .addComponent(jScrollPane1, javax.swing.GroupLayout.PREFERRED_SIZE, 122, javax.swing.GroupLayout.PREFERRED_SIZE))
                .addGap(30, 30, 30)
                .addGroup(layout.createParallelGroup(javax.swing.GroupLayout.Alignment.BASELINE)
                    .addComponent(jButton2)
                    .addComponent(jButton3)
                    .addComponent(jButton4)
                    .addComponent(jButton5))
                .addContainerGap(73, Short.MAX_VALUE))
        );

        pack();
    }// </editor-fold>//GEN-END:initComponents

    private void coursename_txtActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_coursename_txtActionPerformed
        // TODO add your handling code here:
    }//GEN-LAST:event_coursename_txtActionPerformed

    private void jButton5ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton5ActionPerformed

         try{
               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection cn = DriverManager.getConnection("jdbc:odbc:edviser");
        
               
               
               PreparedStatement p1 = cn.prepareStatement("insert into course(course_name,course_level,course_stream,course_discription) values(?,?,?,?)");
               
               p1.clearParameters();
               p1.setString(1,coursename_txt.getText());
               p1.setString(2,level_txt.getText());
               p1.setString(3,stream_txt.getText());
               p1.setString(4,discription_txt.getText());
              
               p1.executeUpdate();
               
               p1.close();           
               cn.close();
                 
               DefaultTableModel dm = (DefaultTableModel)table1.getModel();
               dm.getDataVector().removeAllElements();
               dm.fireTableDataChanged();

               FillTable(table1,"select * from course");
               
               JOptionPane.showMessageDialog(null, "Course added!!", "InfoBox: ", JOptionPane.INFORMATION_MESSAGE);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
               // TODO add your handling code here:
    }//GEN-LAST:event_jButton5ActionPerformed

    private void jButton4ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton4ActionPerformed
                if(table1.getSelectedRow()==-1){
                        JOptionPane.showMessageDialog(null, "Select a Row.", "InfoBox: ", JOptionPane.INFORMATION_MESSAGE);

                }else{
                            try{
               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection cn = DriverManager.getConnection("jdbc:odbc:edviser");
        
                Object value=table1.getValueAt(table1.getSelectedRow(), 0);
   
               
               PreparedStatement p1 = cn.prepareStatement("update course set course_name=?,course_level=?,course_stream=?,course_discription=? where ID=?");
               p1.clearParameters();
               p1.setString(1,coursename_txt.getText());
               p1.setString(2,level_txt.getText());
               p1.setString(3,stream_txt.getText());
               p1.setString(4,discription_txt.getText());
               p1.setInt(5,(int) value);
               p1.executeUpdate();
               
               p1.close();           
               cn.close();
                 
               DefaultTableModel dm = (DefaultTableModel)table1.getModel();
               dm.getDataVector().removeAllElements();
               dm.fireTableDataChanged();

               FillTable(table1,"select * from course;");
               
               JOptionPane.showMessageDialog(null, "Course Updated!!", "InfoBox: ", JOptionPane.INFORMATION_MESSAGE);
        }catch(Exception e){
            System.out.println(e.getMessage());
        }
        
        

                }
        // TODO add your handling code here:
    }//GEN-LAST:event_jButton4ActionPerformed

    private void jButton3ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton3ActionPerformed
         if  (JOptionPane.showConfirmDialog(null, "Are You Sure?", "WARNING ", JOptionPane.YES_NO_OPTION)==JOptionPane.YES_OPTION){
           
        Object value=table1.getValueAt(table1.getSelectedRow(), 0);
   
      try{
               Class.forName("sun.jdbc.odbc.JdbcOdbcDriver");
               Connection cn = DriverManager.getConnection("jdbc:odbc:edviser");        
               
               PreparedStatement p1 = cn.prepareStatement("delete from course where ID=?");
               
               p1.clearParameters();
               p1.setInt(1,(int)value);
             
               p1.executeUpdate();
               cn.close();

               DefaultTableModel dm = (DefaultTableModel)table1.getModel();
               dm.getDataVector().removeAllElements();
               dm.fireTableDataChanged();

               FillTable(table1,"select * from course;");
               
               JOptionPane.showMessageDialog(null, "Course removed!!", "InfoBox: ", JOptionPane.INFORMATION_MESSAGE);

        }catch(Exception e){
            System.out.println(e.getMessage());
        }

           
            }else{
                
            
                }
           
                // TODO add your handling code here:
    }//GEN-LAST:event_jButton3ActionPerformed

    private void jButton2ActionPerformed(java.awt.event.ActionEvent evt) {//GEN-FIRST:event_jButton2ActionPerformed
                JFrame admin_main=new admin_main();
                admin_main.show();
                    this.hide();

// TODO add your handling code here:
    }//GEN-LAST:event_jButton2ActionPerformed

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
            java.util.logging.Logger.getLogger(Course.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (InstantiationException ex) {
            java.util.logging.Logger.getLogger(Course.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (IllegalAccessException ex) {
            java.util.logging.Logger.getLogger(Course.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        } catch (javax.swing.UnsupportedLookAndFeelException ex) {
            java.util.logging.Logger.getLogger(Course.class.getName()).log(java.util.logging.Level.SEVERE, null, ex);
        }
        //</editor-fold>

        /* Create and display the form */
        java.awt.EventQueue.invokeLater(new Runnable() {
            public void run() {
                new Course().setVisible(true);
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
    private javax.swing.JTextField coursename_txt;
    private javax.swing.JTextField discription_txt;
    private javax.swing.JButton jButton2;
    private javax.swing.JButton jButton3;
    private javax.swing.JButton jButton4;
    private javax.swing.JButton jButton5;
    private javax.swing.JLabel jLabel1;
    private javax.swing.JLabel jLabel2;
    private javax.swing.JLabel jLabel3;
    private javax.swing.JLabel jLabel4;
    private javax.swing.JLabel jLabel5;
    private javax.swing.JScrollPane jScrollPane1;
    private javax.swing.JTextField level_txt;
    private javax.swing.JTextField stream_txt;
    private javax.swing.JTable table1;
    // End of variables declaration//GEN-END:variables

    
}
