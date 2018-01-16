package yan.com.yankart_backend.test;

import static org.junit.Assert.assertEquals;

import org.junit.BeforeClass;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import yan.com.yankart_backend.dao.UserDAO;
import yan.com.yankart_backend.dto.User;

public class UserTestCase {

	private static AnnotationConfigApplicationContext context;
	private static UserDAO userDAO;
	private User user = null;
/*	private Cart cart = null;
	private Address address = null;
*/	
	
	@BeforeClass
	public static void init() {
		context = new AnnotationConfigApplicationContext();
		context.scan("yan.com.yankart_backend");
		context.refresh();
		
		userDAO = (UserDAO) context.getBean("userDAO");
	}

			/*	@Test
				public void testAdd() {
				
					user = new User() ;
					user.setFirstName("god");
					user.setLastName("shiva");
					user.setEmail("shivan@gmail.com");
					user.setContactNumber("9876543210");
					user.setRole("USER");
					user.setPassword("123456");
					// add the user
							assertEquals("Failed to add user!",true, userDAO.addUser(user));
							
							address = new Address();
							address.setAddressLineOne("z-9 drangon booster, disneyxd");
							address.setAddressLineTwo("Near jetex");
							address.setCity("madurai");
							address.setState("tamilnadu");
							address.setCountry("India");
							address.setPostalCode("666661");
							address.setBilling(true);
							
							// link the user with the address using user id
							address.setUserId(user.getId());
							
							// add the address
							assertEquals("Failed to add address!",true, userDAO.addAddress(address));
			
							if(user.getRole().equals("USER")) {
								
								// create a cart for this user
								cart = new Cart();
								
								cart.setUser(user);
			
								// add the cart
								assertEquals("Failed to add cart!",true, userDAO.addCart(cart));
							
			
								// add a shipping address for this user
			
								address = new Address();
								address.setAddressLineOne("99/8 dorahouse, chutitv");
								address.setAddressLineTwo("Near suntv");
								address.setCity("Chennai");
								address.setState("Tamilnadu");
								address.setCountry("India");
								address.setPostalCode("600001");
								// set shipping to true
								address.setShipping(true);
								
								// link it with the user
								address.setUserId(user.getId());
								
								// add the shipping address
								assertEquals("Failed to add shipping address!",true, userDAO.addAddress(address));
							}
							
				}
*/			

	
	/*	@Test
			public void testAdd() {
				user = new User() ;
				user.setFirstName("god");
				user.setLastName("shiva");
				user.setEmail("shivan@gmail.com");
				user.setContactNumber("9876543210");
				user.setRole("USER");
				user.setPassword("123456");
				
				if(user.getRole().equals("USER")) {			
					// create a cart for this user
					cart = new Cart();
					
					cart.setUser(user);
					
					// attach cart with the user
					user.setCart(cart);
		
		
				}
				// add the user
				assertEquals("Failed to add user!",true, userDAO.addUser(user));
			}*/
			

	
		/*	@Test
			public void testUpdateCart() {
				
				// fetch the user by its email
				user = userDAO.getByEmail("shivan@gmail.com");
				
				// get the cart of the user
				cart = user.getCart();
				
				cart.setGrandTotal(8989);
				
				cart.setCartLines(3);
				
				assertEquals("Failed to update the cart!", true, userDAO.updateCart(cart));
				
				
			}
		*/

	
		/*	
		
		@Test 
		public void testAddAddress() {
			// add the user	
			user = new User() ;
			user.setFirstName("god");
			user.setLastName("shiva");
			user.setEmail("shivan@gmail.com");
			user.setContactNumber("9876543210");
			user.setRole("USER");
			user.setPassword("123456");
		
					assertEquals("Failed to add user!",true, userDAO.addUser(user));
					//add address
					address = new Address();
					address.setAddressLineOne("z-9 drangon booster, disneyxd");
					address.setAddressLineTwo("Near jetex");
					address.setCity("madurai");
					address.setState("tamilnadu");
					address.setCountry("India");
					address.setPostalCode("666661");
					address.setBilling(true);
					
					//attached the user to the address
					
					address.setUser(user);
					
					assertEquals("Failed to add address!", true, userDAO.addAddress(address));
					
					//shipping address
		
					address = new Address();
					address.setAddressLineOne("99/8 dorahouse, chutitv");
					address.setAddressLineTwo("Near suntv");
					address.setCity("Chennai");
					address.setState("Tamilnadu");
					address.setCountry("India");
					address.setPostalCode("600001");
					// set shipping to true
					address.setShipping(true);
					
				//attached the user to the address
					
					address.setUser(user);
					
					assertEquals("Failed to add shiping address!", true, userDAO.addAddress(address));
					
			
		}
		*/

	
	
			/*@Test
			public void testAddAddress() {
				// fetch the user by its email
						user = userDAO.getByEmail("shivan@gmail.com");
						
				
				//shipping address
			
				address = new Address();
				address.setAddressLineOne("111/8 dorahouse, chutitv");
				address.setAddressLineTwo("Near suntv");
				address.setCity("kochi");
				address.setState("kerala");
				address.setCountry("India");
				address.setPostalCode("500001");
				// set shipping to true
				address.setShipping(true);
				
			//attached the user to the address
				
				address.setUser(user);
				
				assertEquals("Failed to add shiping address!", true, userDAO.addAddress(address));
				
			
			}
			*/

	
	
	
		@Test
		public void testGetAddresses() {
			// fetch the user by its email
						user = userDAO.getByEmail("shivan@gmail.com");
				
			assertEquals("fail to fetch the list of address and size does not match",2,userDAO.listShippingAddresses(user).size());
		
			assertEquals("fail to fetch the billing address and size does not match","madurai",userDAO.getBillingAddress(user).getCity());
		}


}