package tester;

import junit.framework.Test;
import junit.framework.TestSuite;

public class AllTests {

	public static Test suite() {
		TestSuite suite = new TestSuite(AllTests.class.getName());
		//$JUnit-BEGIN$
		TransManagerTest test = new TransManagerTest();
		test.testAddingAProduct();
		//$JUnit-END$
		return suite;
	}

}
