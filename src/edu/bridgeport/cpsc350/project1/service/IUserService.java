package edu.bridgeport.cpsc350.project1.service;

import java.util.List;

import edu.bridgeport.cpsc350.project1.model.User;
import edu.bridgeport.cpsc350.project1.model.UserExample;

public interface IUserService {
	public User getUserById(int userId);
	public List<User> getPageList(UserExample example);
}
