package Service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import Util.UserParams;

import entity.User;

public interface UserService {
	User userLogin(String userCode,String userPassword);
	List<User> findUsers(UserParams up);
}
