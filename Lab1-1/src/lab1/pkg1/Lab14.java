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
public class Lab14 {
     
    
    
    public static void main(String[] args){
        
        double Total;
        int loonie, quarter, dime, nickel;
        
        System.out.println("Make your Choice");
        System.out.println("1.	Candy bar $1.15");
        System.out.println("2.	Soda $1.25");
        System.out.println("3.	Chips $1.30");
        System.out.println("4.	Candy $1.05");
        
        
        Scanner sc=new Scanner(System.in);
        int Choice=sc.nextInt();
        
                    
        
            switch(Choice){
            
                case 1:
                    
                    System.out.println("Candy bar $1.15");
                    System.out.print("enter ammount you are paying   ");
                    int Amount1=sc.nextInt();
                    System.out.println("Ammount Paid   $"+ Amount1);
                    double ReturnAmount1=Amount1-1.15;
                    System.out.println("Ammount to be returned   $"+ ReturnAmount1);
                    
                    loonie = (int)ReturnAmount1/1;
                    ReturnAmount1 = ReturnAmount1%1;
                    System.out.println("Numbers of loonies   "+ loonie);
                    
                    ReturnAmount1=ReturnAmount1*100;
                    
                    quarter = (int)ReturnAmount1/25;
                    ReturnAmount1 = ReturnAmount1%25;
                    System.out.println("Numbers of quarters   "+ quarter);
                    
                    dime = (int)ReturnAmount1/10;
                    ReturnAmount1= ReturnAmount1%10;
                    System.out.println("Numbers of dimes  "+ dime);
                    
                    nickel = (int)ReturnAmount1/5;
                    ReturnAmount1 = ReturnAmount1%5;
                    System.out.println("Numbers of nickels   "+ nickel);
                    
                    // System.out.println("Total due $1.15");
                    break;
                    
                case 2:
                        
                    System.out.println("Soda $1.25");
                    System.out.print("enter ammount you are paying  ");
                    double Amount2=sc.nextInt();
                    System.out.println("Ammount Paid   $"+ Amount2);
                    double ReturnAmount2=Amount2-1.25;
                    System.out.println("Ammount to be returned   $"+ ReturnAmount2);
                    
                    loonie = (int)ReturnAmount2/1;
                    ReturnAmount2 = ReturnAmount2%1;
                    System.out.println("Numbers of loonies  "+ loonie);
                    
                    ReturnAmount2=ReturnAmount2*100;
                    
                    quarter = (int)ReturnAmount2/25;
                    ReturnAmount2 = ReturnAmount2%25;
                    System.out.println("Numbers of quarters   "+ quarter);
                    
                    dime = (int)ReturnAmount2/10;
                    ReturnAmount2= ReturnAmount2%10;
                    System.out.println("Numbers of dimes   "+ dime);
                    
                    nickel = (int)ReturnAmount2/5;
                    ReturnAmount2 = ReturnAmount2%5;
                    System.out.println("Numbers of nickels   "+ nickel);
                    
                    //System.out.println("Total due $1.25");
                    break;
                    
                case 3:
                    
                    System.out.println("Chips $1.30");
                    System.out.print("enter ammount you are paying   ");
                    int Amount3=sc.nextInt();
                    System.out.println("Ammount Paid   $"+ Amount3);
                    double ReturnAmount3=Amount3-1.30;
                    System.out.println("Ammount to be returned   $"+ ReturnAmount3);
                    
                    loonie = (int)ReturnAmount3/1;
                    ReturnAmount3 = ReturnAmount3%1;
                    System.out.println("Numbers of loonies  "+ loonie);
                    
                    ReturnAmount3=ReturnAmount3*100;
                    
                    quarter = (int)ReturnAmount3/25;
                    ReturnAmount3 = ReturnAmount3%25;
                    System.out.println("Numbers of quarters   "+ quarter);
                    
                    dime = (int)ReturnAmount3/10;
                    ReturnAmount3= ReturnAmount3%10;
                    System.out.println("Numbers of dimes   "+ dime);
                    
                    nickel = (int)ReturnAmount3/5;
                    ReturnAmount3 = ReturnAmount3%5;
                    System.out.println("Numbers of nickels   "+ nickel);
                    //System.out.println("Total due $1.30");
                    break;
                    
                case 4:
                    
                    System.out.println("Candy $1.05");
                    System.out.print("enter ammount you are paying  ");
                    int Amount4=sc.nextInt();
                    System.out.println("Ammount Paid   $"+ Amount4);
                    double ReturnAmount4=Amount4-1.05;
                    System.out.println("Ammount to be returned   $"+ ReturnAmount4);
                    
                    
                    loonie = (int)ReturnAmount4/1;
                    ReturnAmount4 = ReturnAmount4%1;
                    System.out.println("Numbers of loonies   "+ loonie);
                    
                    ReturnAmount4=ReturnAmount4*100;
                    
                    quarter = (int)ReturnAmount4/25;
                    ReturnAmount4 = ReturnAmount4%25;
                    System.out.println("Numbers of quarters   "+ quarter);
                    
                    dime = (int)ReturnAmount4/10;
                    ReturnAmount4= ReturnAmount4%10;
                    System.out.println("Numbers of dimes   "+ dime);
                    
                    nickel = (int)ReturnAmount4/5;
                    ReturnAmount4 = ReturnAmount4%5;
                    System.out.println("Numbers of nickels   "+ nickel);
                    //System.out.println("Total due $1.05");
                    break;
            
            
                    
            
            }
                
            
    }
}
