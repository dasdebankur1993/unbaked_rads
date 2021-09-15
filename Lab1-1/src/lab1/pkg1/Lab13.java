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
public class Lab13 {
    
    public static void main(String[] args){
        
        System.out.println("Numbers of hours worked ?");
        Scanner sc=new Scanner(System.in);
        int Hours=sc.nextInt();
        
        System.out.println("hourly pay ?");
        Scanner sc1=new Scanner(System.in);
        int HourlyPay=sc.nextInt();
        
        double TotalPay= Hours*HourlyPay;
        System.out.println("Total Pay   $"+ TotalPay);
        
            if(Hours>40){
                int OT=Hours-40;
                double TotalPayout=OT*1.5;
                System.out.println("Overtime "+ OT +" hours");
                
        }
        
    }
}
