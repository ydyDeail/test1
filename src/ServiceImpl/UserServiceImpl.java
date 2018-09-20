package ServiceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import entity.User;
import Dao.UserDao;
import Service.UserService;
import Util.UserParams;
@Service("userService")
public class UserServiceImpl implements UserService{
	@Autowired
	private UserDao udao;
	public UserDao getUdao() {
		return udao;
	}
	public void setUdao(UserDao udao) {
		this.udao = udao;
	}
	public User userLogin(String userCode, String userPassword) {
		// TODO Auto-generated method stub
		return udao.userLogin(userCode, userPassword);
	}
	public List<User> findUsers(UserParams up) {
		// TODO Auto-generated method stub
		return udao.findUsers(up);
	}
	
}
