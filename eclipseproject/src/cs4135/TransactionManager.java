package cs4135;
import java.util.*;

public class TransactionManager {

  public int quantity;

  public RegionEnum Region;

  public Product ChosenProduct;

  public Observer o;

  //productList[] = new Product[];

  public Double preVatTotal;

  public Double postVatTotal;

  public ComputerFactory myComputerFactory; //trying to create a computer fac instance

  public RegionEnum getRegion(){
      return Region;
      /*having problems accessing this in UK class, problems with extending
      from the abstract class*/
  }

  public int getNumber() {
      return quantity;
  }

  public void chooseProduct(productTypeEnum productTypeEnum) {
  } //TODO

  public void setRegion(RegionEnum region) {
	  Region = region;
  }

  public void upgradeProduct(Product product, ComponentEnum componentEnum, int quantity) {
      switch (componentEnum){
              case RAM : addRam(quantity);
              break;
              default : System.out.println("Error");
              break;

              /* decorator stuff here, problem there with it not knowing about
               addRam, need the other products too*/
             }

  }
/*
  public void updateTotalCost(void TotalPrice) {

  }
*/
}