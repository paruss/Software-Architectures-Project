
package cs4135;
public interface Product {

 // public ComponentComposite myComponentComposite;



  //public abstract double cost();

    /* Because some of these methods only make sense for Components
     * the default implmentation is UnsupportedOperationException.
     * That way if a Product doesnt support an operation they dont have to do
     * anything
     */

  public double getPrice();

  public void getType();

  public void addComponent(Product product);

  public void removeComponent(Product productComponent );
  
  public Product getChild(int i);
  
  public String getName();
  
  public Product findItem(String toBeFound);
 // public RegionEnum getRegion();

  //public enum ComponentEnum{RAM, CPU, SOUNDCARD, GRAPHICSCARD, HARDDRIVE}
  //public enum ProductTypeEnum{LAPTOP, DESKTOP}
 // public enum RegionEnum{IRELAND, UK}


      /*having problems accessing this in UK class, problems with extending
      from the abstract class*/


}