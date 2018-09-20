package Dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import Util.UserParams;

import entity.User;

public interface UserDao {
	User userLogin(@Param("userCode")String userCode,@Param("userPassword")String userPassword);
	List<User> findUsers(UserParams up);
}
