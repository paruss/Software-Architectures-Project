package tester;

import static org.junit.Assert.*;

import org.junit.Before;
import org.junit.Test;

import cs4135.RegionEnum;
import cs4135.TransactionManager;

public class NewTest {

	TransactionManager transManager;
	
	@Before
	public void setUp() throws Exception {
		
	}

	@Test
	public void testTransactionManager() {
		transManager = new TransactionManager();
		assertNotNull(transManager);
		
	}

	@Test
	public void testGetRegion() {
		transManager = new TransactionManager();

		assertNotNull(transManager.getRegion());
		transManager.setRegion(RegionEnum.IRELAND);
		assertEquals(RegionEnum.IRELAND, transManager.getRegion());
		
	}

	@Test
	public void testGetNumber() {
		fail("Not yet implemented");
	}

	@Test
	public void testChooseProduct() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpdateTotal() {
		fail("Not yet implemented");
	}

	@Test
	public void testSetRegion() {
		fail("Not yet implemented");
	}

	@Test
	public void testUpgradeProduct() {
		fail("Not yet implemented");
	}

}
