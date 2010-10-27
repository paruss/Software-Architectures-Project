package cs4135;
public class RAM implements RamInterface, Product {
  
	@Override
	public double getPrice() {
		// TODO Auto-generated method stub
		return 30.00;
	}

	@Override
	public void getType() {
		// TODO Auto-generated method stub
		
	}
	public String getName(){
		return "ram";
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
	public Product findItem(String toBeFound) {
		// TODO Auto-generated method stub
		return null;
	}

	
}