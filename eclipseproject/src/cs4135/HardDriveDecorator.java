package cs4135;
public class HardDriveDecorator extends DecoratorManager implements HardDriveInterface  {
	public HardDriveDecorator (DecoratorInterface decoratedRam){
		this.decoratedRam = decoratedRam;
	}
	@Override
	public double getPrice() {
		// TODO Auto-generated method stub
		return 0;
	}

	@Override
	public void getType() {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void addComponent(Product product ) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public void removeComponent(Product product ) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Product getChild(int i) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public String getName() {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public Product findItem(String toBeFound) {
		// TODO Auto-generated method stub
		return null;
	}

	
}