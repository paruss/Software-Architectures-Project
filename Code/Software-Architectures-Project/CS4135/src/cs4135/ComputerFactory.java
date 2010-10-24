public class ComputerFactory implements ProductFactory, Product {

  public productTypeEnum newProduct;

  public void createDesktopComputer(Product productTypeEnum) {
      public Ram createRam() {
          return new RAM(productTypeEnum);
      }
      
  }

  public void createLaptopComputer(void productTypeEnum) {
  }

}