package cs4135;
public interface DecoratorInterface {
	public void decorateProduct(Product product, ComponentEnum componentEnum, int quantity);
	public  void addRam(int quantity);
    public void addHardDrive(int quantity);
    public void addGraphics(int quantity);

}