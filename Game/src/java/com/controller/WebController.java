/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.controller;

import com.game1.game;
import java.util.ArrayList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping(value="/web/")
public class WebController {
    
    
    
    @Autowired
    private game game;
    
       @RequestMapping(value = "home")
    public String home(ModelMap map) {
        return "index";
    }
    
      @RequestMapping(value = "user")
    public String input(ModelMap map,HttpServletRequest req) {
     int t[][]=game.result();
     HttpSession ss=req.getSession();
     for(int i=0;i<4;i++)
     {
         for(int j=0;j<4;j++)
         {
         System.out.print(t[i][j]);
        
         }
          System.out.println("\n");
     }
    map.put("array",t);
    
    
    List<String> userinput=game.input();
    map.put("input",userinput);
        return "home";
    }
    
}
