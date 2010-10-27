package cs4135;

import java.util.Observable;

public abstract class DecoratorManager extends Observable implements DecoratorInterface 
{
  public void decorateProduct(Product product, ComponentEnum componentEnum, int quantity)
  {
	  if( ComponentEnum.RAM == componentEnum)
	  {
		  Product ramitem = product.findItem("ram");
		  
	  }
  }
  public void addHardDrive(int quantity) {
	  
  }

 

  public void addGraphics(int quantity) {
	  
  }

}