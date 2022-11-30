package Eventos;

import javax.servlet.http.HttpSessionEvent;
import javax.servlet.http.HttpSessionListener;

/**
 *
 * @author Augusto
 */
public class UserCounter implements HttpSessionListener{

   private static int count;

    public UserCounter() {
        count =0;
    }
   
   @Override
    public void sessionCreated(HttpSessionEvent event) {
     System.out.println("Session created by Id : " + event.getSession().getId());
     count++;
    }

   @Override
    public void sessionDestroyed(HttpSessionEvent event) {
            System.out.println("Session destroyed by Id : " + event.getSession().getId());
            count--;
    }

    public static int getCount() {
        return count;
    }
    
}
