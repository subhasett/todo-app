package com.subha.test.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.subha.test.model.Todo;
import com.subha.test.repository.TodoRepository;

@Service
public class TodoService {

	@Autowired
	TodoRepository repository;

	

	public List<Todo> retrieveTodos(String user) {
       
        return repository.findByUser(user);
    }

	public Optional<Todo> retrieveTodo(int id) {
		return repository.findById(id);
		
	}

	public void updateTodo(Todo todo) {

		repository.save(todo);
	}

	public void addTodo(String name, String desc, Date targetDate, boolean isDone, int priority) {
		repository.save(new Todo(name, desc, targetDate, isDone, priority));
	}

	public void deleteTodo(int id) {
		repository.deleteById(id);
	}
}