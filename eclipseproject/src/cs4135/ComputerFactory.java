package cs4135;
public class ComputerFactory implements ProductFactory {

  public ProductTypeEnum newProduct;
  
  @Override
	public Product createProduct(ProductTypeEnum productTypeEnum) {
		if(ProductTypeEnum.DESKTOP == productTypeEnum){
			return createDesktopComputer();
			
		}
		
		return null;
		
	}
  
  public Product createDesktopComputer() {
	  
		Product motherboard = new ComponentComposite();
		
		Product ram = new RAM();
		Product cpu = new CPU();
		Product sound = new SoundCard();
		Product screen = new Screen();
		Product graphics = new GraphicsCard();
		Product harddrive = new HardDrive();
		
		motherboard.addComponent(ram);
		motherboard.addComponent(cpu);
		motherboard.addComponent(sound);
		motherboard.addComponent(graphics);
		
		Product chassis = new ComponentComposite();
		chassis.addComponent(motherboard);
		chassis.addComponent(harddrive);
		
		Product computer = new ComponentComposite();
		computer.addComponent(chassis);
		computer.addComponent(screen);
		computer.addComponent(motherboard);


		return computer;
      
  }

  public Product createLaptopComputer() {
  

	Product motherboard = new ComponentComposite();
	
	Product ram = new RAM();
	Product cpu = new CPU();
	Product sound = new SoundCard();
	Product screen = new Screen();
	Product graphics = new GraphicsCard();
	Product harddrive = new HardDrive();
	
	motherboard.addComponent(ram);
	motherboard.addComponent(cpu);
	motherboard.addComponent(sound);
	motherboard.addComponent(graphics);
	
	Product chassis = new ComponentComposite();
	chassis.addComponent(motherboard);

	chassis.addComponent(harddrive);
	Product computer = new ComponentComposite();
	computer.addComponent(chassis);
	computer.addComponent(screen);
	computer.addComponent(motherboard);


	return computer;
  } 

}