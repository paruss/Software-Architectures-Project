package cs4135;
import java.util.*;
public abstract class region implements Observer {

  Observable observable;
  public int PreVat;
  //public RegionEnum region;
  //public enum RegionEnum{IRELAND, UK}
  public region(Observable observable){
      this.observable = observable;
      observable.addObserver(this); //setting region as observable
  }
  public abstract double addVat(double preVatTotal);

  public void update(Observable obs, Object arg) {
      if (obs instanceof Basket){ //make sure the observer is of Basket
          addVat(PreVat);
          /*add the vat, maybe we should pass its state here
                            too? */
      }
  }
}