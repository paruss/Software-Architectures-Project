
 package cs4135;
import java.util.*;

public class ComponentComposite implements Product {
  ArrayList<Product> productComponents = new ArrayList<Product>();
  String description;
  String name;
  Double price;
  //TransactionManager.ComponentEnum name;
  String type;
  
  public Product myProduct;
  
  public Product findItem(String toBeFound){
 	  Iterator<Product> iterator = productComponents.iterator();
	  while (iterator.hasNext()){
		  Product product =
			  (Product)iterator.next();
		  String compname = product.getName();
		  if (compname.equals(toBeFound))
		  return product;
	
	  }
	      return null;
	  }
  public Product getChild(int i) {
	  
		  
	  return (Product) productComponents.get(i);
	 /* int leaves = productComponents.size();
	  if(leaves < 1)
		  return ;
	  while(leaves > i){
      
	  }
	  
	  i++;
	  */
      //return a child
  }

  public void removeComponent(Product product) {
      productComponents.remove(product);
  }

  public void addComponent(Product product ) {
      productComponents.add(product);
  }

  public void getType() {
      return;
  }
  
  public String getName() {
	  return name;
  }

@Override
public double getPrice() {
	// TODO Auto-generated method stub
	return 0;
}





}