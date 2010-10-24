public class SoundCard extends Product {
    double price = 10.00;
    public double getPrice(){
        return price;
    }

    public ProductTypeEnum getType(){ //get type from TransactionManager
        return type;
    }

}