package edu.bridgeport.cpsc350.project1.serviceImpl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.github.pagehelper.PageHelper;

import edu.bridgeport.cpsc350.project1.dao.UserMapper;
import edu.bridgeport.cpsc350.project1.model.User;
import edu.bridgeport.cpsc350.project1.model.UserExample;
import edu.bridgeport.cpsc350.project1.service.IUserService;
@Service("userService")
public class UserServiceImpl implements IUserService {
    @Resource
	private UserMapper userMapper;
	@Override
	public User getUserById(int userId) {
		return userMapper.selectByPrimaryKey(userId);
	}
	@Override
	public List<User> getPageList(UserExample example){
		PageHelper.startPage(1, 5);
		return userMapper.selectByExample(example);
	}

}
