public class RamDecorator implements RamInterface {
    Product product;
    //instance variable to hold the product we are wrapping
    public RamDecorator(Product product) {
        this.product = product;
    //set instance variable to object we are wrapping
        }
    public double cost(){
        return 30.00 + product.cost();
    }

    }
