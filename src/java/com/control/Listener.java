/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.control;

import java.text.SimpleDateFormat;
import java.util.Date;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

/**
 *
 * @author Jinno
 */
@WebListener
public class Listener implements ServletContextListener {
    
        Date date = new Date();
        SimpleDateFormat fmt = new SimpleDateFormat("EEEE, dd MMMM yyyy HH:mm:ss a z");
        
    @Override    
    public void contextInitialized(ServletContextEvent e){
            e.getServletContext().setAttribute("time", fmt.format(date));
        }
    @Override
        public void contextDestroyed(ServletContextEvent date){
        
        }
    
}
