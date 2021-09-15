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
public class Lab15 {
    
    
     public static void main(String[] args){
        
        System.out.println("Enter first string");
        Scanner sc1=new Scanner(System.in);
        String First=sc1.nextLine();
        
        System.out.println("Enter second string");
        Scanner sc2=new Scanner(System.in);
        String Second=sc2.nextLine();
       
        if(First.indexOf(Second)!= -1){
            System.out.println("Second string is contained in First sring");
        }
        else{
            System.out.println("Second string does not contains in First string");
        }
        
    }
}
