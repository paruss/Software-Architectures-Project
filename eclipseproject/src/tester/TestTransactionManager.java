package tester;


import org.junit.Assert;
import org.junit.Before;

import cs4135.TransactionManager;

public class TestTransactionManager {

	@Before
	public void setUp() throws Exception {
		 TransactionManager transactionManager = new TransactionManager();
	}
	
	public void testAddingAProduct(){
		
		
		//do somethign to the transaction manager
		//create an object the represnents what the transaction manager should
		//look like and then compare the two.
		
		Assert.assertEquals(expected, actual);
		
		
		
	}

}
