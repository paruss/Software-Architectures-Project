/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package cs4135;
import java.io.*;

import javax.swing.JOptionPane;
/**
 *
 * @author patrickrussell
 */
public class Main {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) throws IOException {
     
        TransactionManager transManager = new TransactionManager();
        Object[] options = {"Ireland","UK"};
int n = JOptionPane.showOptionDialog(null,
		"What Region would you like ", "Region",
		JOptionPane.YES_NO_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE,
		null, options, options[1]);
if (n==0)
{
	
	transManager.setRegion(RegionEnum.IRELAND);
	System.out.println(transManager.getRegion());
}
else if (n==1){
	transManager.setRegion(RegionEnum.UK);
	System.out.println(transManager.getRegion());
}

Object[] computerType = {"Desktop","Laptop"};
int ct = JOptionPane.showOptionDialog(null,
		"What type of computer would you like ", "Computer Type",
		JOptionPane.YES_NO_CANCEL_OPTION, JOptionPane.QUESTION_MESSAGE,
		null, computerType, computerType[1]);

String quantity = JOptionPane.showInputDialog(parentComponent, "Enter Number", title, messageType, icon, selectionValues, initialSelectionValue)

//If a string was returned, say so.
if ((s != null) && (s.length() > 0)) {
    setLabel("Green eggs and... " + s + "!");
    return;
}


if (ct==0)
{
	
	transManager.addProductToList(ProductTypeEnum.DESKTOP);
	
}
else if (ct==1){
	transManager.addProductToList(ProductTypeEnum.LAPTOP);

}


      
          
       
        


    }

}
