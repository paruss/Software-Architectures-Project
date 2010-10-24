import java.util.*;

public class TransactionManager extends Observable {

  public int quantity;

  public RegionEnum Region;

  public Product ChosenProduct;

  public Observer o;

  public Double preVatTotal;

  public Double postVatTotal;

  public ComputerFactory myComputerFactory;

  public enum ComponentEnum{RAM, CPU, SOUNDCARD, GRAPHICSCARD, HARDDRIVE}
  public enum ProductTypeEnum{LAPTOP, DESKTOP}
  public enum RegionEnum{IRELAND, UK}


  public void getNumber() {
  }

  public void chooseProduct(void productTypeEnum) {
  }

  public void somethingChanged(){
      setChanged();
      notifyObservers();
  }


  public void removeObserver(void componentEnum) {
  }

/*  public void notifyObservers(Observer o) {
      if(changed){
          
      }

  }
*/
  public void setNumber(int quantity) {
      this.quantity = quantity;
      somethingChanged();
  }

//  public void registerObserver(Observer o) {
//      this.o = o;
//      o.addObserver(this);
//  }

  public void setRegion(void regionEnum) {
  }

  public void upgradeProduct(Product product, ComponentEnum componentEnum, int quantity) {
      switch (componentEnum){
              case RAM : addRam(quantity);
              break;
              default : System.out.println("Error");
              break;
             }

  }

  public void updateTotalCost(void TotalPrice) {
  }

}