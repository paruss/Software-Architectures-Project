
 package cs4135;
import java.util.*;

public class ComponentComposite implements Product {
  ArrayList productComponents = new ArrayList();
  String description;
  Double price;
  //TransactionManager.ComponentEnum name;
  String type;
  //private TransactionManager.ComponentEnum ComponentName;
  //
  private Product product;

  public Product myProduct;

  public Product getChild(int i) {
      return (Product) productComponents.get(i);
      //return a child
  }

  public void removeComponent(ComponentComposite productComponent) {
      productComponents.remove(productComponent);
  }

  public void addComponent(ComponentComposite productComponent ) {
      productComponents.add(productComponent);
  }

  public void getType() {
      return;
  }

@Override
public double getPrice() {
	// TODO Auto-generated method stub
	return 0;
}





}