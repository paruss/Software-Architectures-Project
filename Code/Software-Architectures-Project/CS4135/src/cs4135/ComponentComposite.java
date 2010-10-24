import java.util.*;

public class ComponentComposite implements Product {
  ArrayList productComponents = new ArrayList();
  String description;
  Double price;
  ComponentEnum name;
  String type;
  private componentEnum ComponentName;

  private Product product;

    /**
   * 
   * @element-type Computer
   */
    public Computer myComputer;

    /**
   * 
   * @element-type Computer
   */

    public Product myProduct;

  public void getChild(int i) {
      return (ComponentComposite)productComponents.get(i);
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