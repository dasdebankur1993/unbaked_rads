/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package lab1.pkg1;

import java.util.*;

public class Lab11 {

    
    public static void main(String[] args) {
        // TODO code application logic here
        System.out.println("enter the number of tickets");
        java.util.Scanner sc=new java.util.Scanner(System.in);
        int Tickets=sc.nextInt();
        System.out.println("Number of Tickets"+ Tickets);
        
        double TicketCost=14.95;
        double TotalCost=Tickets*TicketCost;
        System.out.println("Total cost of Tickets"+ TotalCost);
    }
    
}
