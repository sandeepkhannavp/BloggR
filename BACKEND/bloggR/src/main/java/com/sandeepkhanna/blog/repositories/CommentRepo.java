package com.sandeepkhanna.blog.repositories;

import org.springframework.data.jpa.repository.JpaRepository;

import com.sandeepkhanna.blog.entities.Comment;

public interface CommentRepo extends JpaRepository<Comment, Integer> {

}
