/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package cs4135;
import java.util.*;


/**
 *
 * @author patrickrussell
 */
public class Basket extends Observable {

      int quantity = 0;
      double preVat;
      double postVat;


      public int getNumber() {
      return quantity;
  }
      public void updateTotalCost(void TotalPrice) {

  }
      public void setNumber(int quantity) {
      this.quantity = quantity;
      somethingChanged();
  }

      public void somethingChanged(){
      setChanged();
      notifyObservers();
  }


}
