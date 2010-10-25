package cs4135;
import java.util.*;

import cs4135.TransactionManager.RegionEnum;

public class UK extends region {

   public UK(Observable observable) {
		super(observable);
		// TODO Auto-generated constructor stub
	}

RegionEnum region = getRegion();
   //Trying to obtain the current region enum, having trouble as you can see!

public double addVat(double preVatTotal){
    //this is a fucking mess, iv no idea whats wrong! Opinions desired
    switch (region){
        case IRELAND: {
            return preVatTotal * 1.20;
        }
        case UK:
            return 0;
        default
            throws IOExeption e;
            /* if the enum doesnt match either of these
            throw some sort of exception please fix so it works */

/* If the state of the transaction is UK then add the vat, otherwise do nothing
            (will be picked up by ireland)

  */
        }

    }


}

