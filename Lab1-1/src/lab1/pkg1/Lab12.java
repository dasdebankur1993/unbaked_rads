/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1.pkg1;

import java.util.*;
/**
 *
 * @author ADMIN
 */
public class Lab12 {
        
         public static void main(String[] args) {
          double Ship2=1.89;   
          double Ship1=1.99;
          
        System.out.println("Number of bags of salt");
        Scanner sc=new Scanner(System.in);
        int Bags=sc.nextInt();
        
        double BagCost=11.99;
        double TotalCost=Bags*BagCost;
        System.out.println("Total cost of salt     $"+ TotalCost );
        
        if(Bags>=11){
            
            double Shipping2=TotalCost*Ship2;
            System.out.println("Total including Shipping charges of 1.89 is    $"+ Shipping2 );
        }
        else if(Bags<=10){
            
                double Shipping1=TotalCost*Ship1;
                System.out.println("Total inchuding Shipping charges of 1.99 is    $"+ Shipping1 );
         }
                    
            
      
        
        
    }    
}
