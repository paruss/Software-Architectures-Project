package cs4135;
import java.util.*;

public class ComponentComposite extends Product {
  ArrayList productComponents = new ArrayList();
  String description;
  Double price;
  TransactionManager.ComponentEnum name;
  String type;
  private TransactionManager.ComponentEnum ComponentName;
  //
  private Product product;

  public Product myProduct;

  public void getChild(int i) {
      return (ComponentComposite)productComponents.get(i);
      //return a child
  }

  public void removeComponent(ComponentComposite productComponent) {
      productComponents.remove(productComponent);
  }

  public void addComponent(ComponentComposite productComponent ) {
      productComponents.add(productComponent);
  }

  public void getType() {
      return type;
  }

}