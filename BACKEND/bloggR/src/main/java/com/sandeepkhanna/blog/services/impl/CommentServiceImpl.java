package com.sandeepkhanna.blog.services.impl;

import com.sandeepkhanna.blog.entities.User;
import com.sandeepkhanna.blog.exceptions.ResourceNotFoundException;
import com.sandeepkhanna.blog.repositories.CommentRepo;
import com.sandeepkhanna.blog.repositories.PostRepo;
import com.sandeepkhanna.blog.repositories.UserRepo;
import org.modelmapper.ModelMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sandeepkhanna.blog.entities.Comment;
import com.sandeepkhanna.blog.entities.Post;
import com.sandeepkhanna.blog.payloads.CommentDto;
import com.sandeepkhanna.blog.services.CommentService;

@Service
public class CommentServiceImpl implements CommentService {
	
	@Autowired
	private PostRepo postRepo;
	
	@Autowired
	private CommentRepo commentRepo;
	
	@Autowired
	private UserRepo userRepo;
	
	@Autowired
	private ModelMapper modelMapper;

	@Override
	public CommentDto createComment(CommentDto commentDto, Integer postId, Integer userId) {
		Post post = this.postRepo.findById(postId).orElseThrow(() -> new ResourceNotFoundException("Post", "Id", postId));
		User user = this.userRepo.findById(userId).orElseThrow(() -> new ResourceNotFoundException("User", "Id", userId));
		Comment comment = this.modelMapper.map(commentDto, Comment.class);
		comment.setPost(post);
		comment.setUser(user);
		Comment savedComment = commentRepo.save(comment);
		return this.modelMapper.map(savedComment, CommentDto.class);
	}

	@Override
	public void deleteComment(Integer commentId) {
		Comment comment = this.commentRepo.findById(commentId).orElseThrow(() -> new ResourceNotFoundException("Comment", "Id", commentId));
		this.commentRepo.delete(comment);
	}

}
