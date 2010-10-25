
package cs4135;
public abstract class Product {

 // public ComponentComposite myComponentComposite;



  //public abstract double cost();

    /* Because some of these methods only make sense for Components
     * the default implmentation is UnsupportedOperationException.
     * That way if a Product doesnt support an operation they dont have to do
     * anything
     */

  public double getPrice() {
      throw new UnsupportedOperationException();
  }

  public void getType(){
      throw new UnsupportedOperationException();
  }

  public void addComponent(){
       throw new UnsupportedOperationException();
  }

  public void removeComponent(){
       throw new UnsupportedOperationException();
  }

  public Product getChild(){
       throw new UnsupportedOperationException();
  }
  public RegionEnum getRegion(){
        throw new UnsupportedOperationException();
    }

  public enum ComponentEnum{RAM, CPU, SOUNDCARD, GRAPHICSCARD, HARDDRIVE}
  public enum ProductTypeEnum{LAPTOP, DESKTOP}
  public enum RegionEnum{IRELAND, UK}


      /*having problems accessing this in UK class, problems with extending
      from the abstract class*/


}