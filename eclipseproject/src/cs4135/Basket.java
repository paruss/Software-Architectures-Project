/*
 Holds information about what is in the basket
 */
package cs4135;
import java.util.*;
/*
 * @author patrickrussell
 */
public class Basket extends Observable {

      int quantity = 0;
      double preVat;
      double postVat;
      /*pre and post vat as the value of postvat will be calculated numerous
      times and we dont and we dont want to add vat to a products more
      than once @@@@TEST@@@*/
      public int getNumber() {
      return quantity;
      //returns the number of computers currently in basket
  }
  //    public updateTotalCost(TotalPrice) {

  //}
      public void setNumber(int quantity) {
      this.quantity = quantity;
      somethingChanged();
      //Updating the quantity for the baskete and calling somethingChanged() for observers
  }

      public void somethingChanged(){
      setChanged();
      notifyObservers();
      //Observer stuff here
  }


}
