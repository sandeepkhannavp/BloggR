package com.sandeepkhanna.blog.repositories;

import java.util.List;

import com.sandeepkhanna.blog.entities.User;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;

import com.sandeepkhanna.blog.entities.Category;
import com.sandeepkhanna.blog.entities.Post;

public interface PostRepo extends JpaRepository<Post, Integer> {

	// custom finder methods
	List<Post> findByUser(User user);
	Page<Post> findByCategory(Category category, Pageable pageable);
	
	// title wise search
	List<Post> findByTitleContaining(String title);
	
	/* Finding by param value using query
	 * @Query("select p from Post p where p.title like :key")
	 * List<Post> searchByTitle(@Param("key") String title);
	 * 
	 * now to use this in Impl class before sending keyword to this add %Keyword_value_anything% 
	 */
}
