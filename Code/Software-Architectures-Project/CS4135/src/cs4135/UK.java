package cs4135;
import java.util.Observable;
import java.util.Observer;

public class UK extends region {

public double addVat(double preVatTotal){
    switch (TransactionManager.ComponentEnum){
        case IRELAND: {
            return preVatTotal * 1.20;
        }
        case UK:{

        }

    }


}

}