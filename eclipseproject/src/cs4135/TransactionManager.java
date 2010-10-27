package cs4135;
import java.util.*;

public class TransactionManager implements Observer {

  public int quantity;

  public Region Region;
  ArrayList<Product> productList = new ArrayList<Product>(); 
  
  private RegionEnum region;
  public TransactionManager(){
	  setRegion(RegionEnum.IRELAND);
  }
  //public Product chosenProduct;
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
  //ProductTypeEnum test;


      // normally only called by classes implementing the State interface
	
   
  public int getNumber() {
      return quantity;
  }
  
  
 ProductFactory productFactory;

  public void addProductToList(ProductTypeEnum productTypeEnum) {
	 
	  productList.add(productFactory.createProduct(productTypeEnum));
	  //return productFactory.createProduct(productTypeEnum);
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
  
DecoratorInterface decoratorInterface;
ComponentEnum componentEnum; 
//int quantity;
  public void upgradeProduct(Product product, ComponentEnum componentEnum, int quantity) {
     
	   decoratorInterface.decorateProduct(product, componentEnum, quantity);

  }
 

public void update(Observable o, Object arg) {
	
		updateTotal(region);
	
}










}