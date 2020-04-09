
package com.game1;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;
import org.springframework.stereotype.Service;

@Service
public class game {
    
   //Player1 
    public int player1()
    {
    Random rn=new Random();
   return  rn.nextInt(3)+1;
    }
    
    
    //Player2
    public int player2()
    {
    Random rn=new Random();
   return  rn.nextInt(3)+1;
    }
    
    
    //Player3
    public int player3()
    {
    Random rn=new Random();
   return  rn.nextInt(3)+1;
    }
    
    
    //Player4
    public int player4()
    {
    Random rn=new Random();
   return  rn.nextInt(3)+1;
    }
    
    
    public List<String> input()
    {
    int a=player1();
    int b=player2();
    int c=player3();
    int d=player4();
    
   List<Integer> number=new ArrayList<>();
   number.add(a);
   number.add(b);
   number.add(c);
   number.add(d);
 List<String> userinput = new ArrayList<>();
    
    for(int ran:number)
    {
    if(ran==1)
    {
    userinput.add("Rock");
    }
    else if(ran==2)
    {
    userinput.add("Paper");
    }
    else{
    userinput.add("Scissors");
    }
    }
        return userinput;
    }
        
       
    
     List<String> assign=new ArrayList<>();
        int players[][]=new int[4][4];
    public int[][] result(){
       
       
        
        List<String> player=input();
        for(int i=0;i<4;i++)
        {
            for(int j=i+1;j<4;j++)
            {
             if(player.get(i).equals("Rock")&&player.get(j).equals("Paper"))
             {
               players[j][i]++;
                 
             }
             else if(player.get(i).equals("Rock")&&player.get(j).equals("Scissors"))
             {
                  players[i][j]++;
             }
              else if(player.get(i).equals("Paper")&&player.get(j).equals("Scissors"))
             {
                  players[j][i]++;
             }
             
              else if(player.get(i).equals("Paper")&&player.get(j).equals("Rock"))
             {
                  players[i][j]++;
             }
             
              else if(player.get(i).equals("Scissors")&&player.get(j).equals("Rock"))
             {
                  players[j][i]++;
             }
             
              else if(player.get(i).equals("Scissors")&&player.get(j).equals("Paper"))
             {
                  players[i][j]++;
             }
             else
              {
              continue;
              }
            
            }
            
        
        }
        return players;
        
        
         
        
        
    }
    
    }
    


