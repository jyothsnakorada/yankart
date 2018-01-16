package yan.com.yankart_backend.dao;

import java.util.List;

import yan.com.yankart_backend.dto.Address;
import yan.com.yankart_backend.dto.Cart;
import yan.com.yankart_backend.dto.User;

public interface UserDAO {
	boolean addUser(User user);
	User getByEmail(String email);
	
	boolean addAddress(Address address);
	Address getBillingAddress(User user);
	List<Address> listShippingAddresses(User user);
	
	boolean updateCart(Cart cart);
	

	
}
