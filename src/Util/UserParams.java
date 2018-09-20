package Util;

public class UserParams{
	private Integer pageNo=1;
	private Integer pageSize=3;
	private String userName;
	private Integer userRole=0;
	private Integer from;
	private Integer offset;
	@Override
	public String toString() {
		return "UserParams [pageNo=" + pageNo + ", pageSize=" + pageSize
				+ ", userName=" + userName + ", userRole=" + userRole
				+ ", from=" + from + ", offset=" + offset + "]";
	}
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public Integer getUserRole() {
		return userRole;
	}
	public void setUserRole(Integer userRole) {
		this.userRole = userRole;
	}
	public Integer getFrom() {
		from=(pageNo-1)*pageSize;
		return from;
	}
	public void setFrom(Integer from) {
		this.from = from;
	}
	public Integer getOffset() {
		offset=pageSize;
		return offset;
	}
	public void setOffset(Integer offset) {
		this.offset = offset;
	}
}
