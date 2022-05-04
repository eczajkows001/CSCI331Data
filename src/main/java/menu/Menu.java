package menu;

public class Menu {
	
	private String resNum; 
	private String menuItem; 
	
	public Menu(String resNum, String menuItem) {
		this.resNum = resNum;
		this.menuItem = menuItem;
		
	}
	
	public Menu() {
		
	}
	
	/**
	 *  Getters and setters for all variables
	 */
	public String getResNum() {
		return resNum;
	}
	public void setResNum(String resNum) {
		this.resNum = resNum;
	}
	
	
	public String getMenuItem() {
		return menuItem;
	}
	
	public void setMenuItem(String menuItem) {
		this.menuItem = menuItem;
	}
	

}
