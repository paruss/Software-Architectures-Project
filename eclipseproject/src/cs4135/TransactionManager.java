package cs4135;
import java.util.*;

public class TransactionManager implements Observer{

  public int quantity;

  public Region Region;
  
  private RegionEnum region;
  public TransactionManager(){
	  setRegion(RegionEnum.IRELAND);
  }
  public Product chosenProduct;
  public Float subTotal;
  public Float Total;
  //public ComputerFactory myComputerFactory; //trying to create a computer fac instance
  //Product computer = createProduct(ProductTypeEnum );
  Product found = null;
  public RegionEnum getRegion(){
      return region;
      /*having problems accessing this in UK class, problems with extending
      from the abstract class*/
  }
  ProductTypeEnum test;


      // normally only called by classes implementing the State interface
	
   
  public int getNumber() {
      return quantity;
  }

  public Product chooseProduct(ProductFactory productFactory, ProductTypeEnum productTypeEnum) {
	 
	  return productFactory.createProduct(productTypeEnum);
	  //return (Product) new ProductFactory(productTypeEnum)
	
	  
	  	
  } //TODO
  
  
  public void updateTotal(RegionEnum regionEnum){
	  	if (RegionEnum.IRELAND == regionEnum){
	  		Region uk = new UK();
	  		 Total = uk.getVat(subTotal);
	  	}
	  	else if(RegionEnum.UK == regionEnum){
	  		this.region = regionEnum;
	  		Region ireland = new Ireland();
	  		ireland.getVat(subTotal);
	  	}
  }
  public void setRegion(RegionEnum newRegion) {

	  	region = newRegion;	
	   
  }
  

  public void upgradeProduct(Product product, ComponentEnum componentEnum, int quantity) {
      switch (componentEnum){
      		  
              case RAM : 
              break;
              case GRAPHICSCARD: {
            	  
            	  if (computer.getName() == "graphics")
            	  found = chosenProduct.findItem("graphics");
            	  computer = new GraphicsCardDecorator(computer);
            	  DecoratorInterface decoratedRam = new GraphicsCardDecorator(found);
            	  GraphicsCardInterface graphics = new GraphicsCardDecorator(found);
            	  
           
            	  }
            	  
            	  
              
              case HARDDRIVE:
              default : System.out.println("Error");
              break;

              /* decorator stuff here, problem there with it not knowing about
               addRam, need the other products too*/
             }

  }
 

public void update(Observable o, Object arg) {
	
		updateTotal(region);
	
}







}