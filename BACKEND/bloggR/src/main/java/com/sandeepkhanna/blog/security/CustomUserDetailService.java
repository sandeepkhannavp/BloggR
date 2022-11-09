package com.sandeepkhanna.blog.security;

import com.sandeepkhanna.blog.entities.User;
import com.sandeepkhanna.blog.exceptions.ResourceNotFoundException;
import com.sandeepkhanna.blog.repositories.UserRepo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Service;

@Service
public class CustomUserDetailService implements UserDetailsService {
// whenever spring security needs to know the user details,It will call this method
	
	@Autowired
	private UserRepo userRepo;
	
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		// loading user from database by username
		User user = this.userRepo.findByEmail(username).orElseThrow(() -> new ResourceNotFoundException("User", "Email", username));
		return user;
		// since user has implemented UserDetails so returning User only
	}
	
}
