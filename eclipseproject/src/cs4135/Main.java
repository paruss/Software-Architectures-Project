/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
import java.io.*;

package cs4135;

/**
 *
 * @author patrickrussell
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
        String currLine = "";


        System.out.println("Please enter a computer type");
        InputStreamReader compTypeRead = new InputStreamReader(System.in);
        BufferedReader in = new BufferedReader(compTypeRead);

         while (!(currLine.equals("quit"))){
             currLine = in.readLine();
         }

          if (!(currLine.equals("enter")))
          System.out.println("your chosen computer is:" + currLine);
          
       
        


    }

}
