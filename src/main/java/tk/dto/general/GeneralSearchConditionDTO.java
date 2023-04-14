package tk.dto.general;

public class GeneralSearchConditionDTO {
	
	private String searchName;
	private String searchNickname;
	private int searchCommand;
	private int searchPower;
	private int searchBrain;
	private int searchPolitic;
	
	public String getSearchName() {
		return searchName;
	}
	public void setSearchName(String searchName) {
		this.searchName = searchName;
	}
	public String getSearchNickname() {
		return searchNickname;
	}
	public void setSearchNickname(String searchNickname) {
		this.searchNickname = searchNickname;
	}
	public int getSearchCommand() {
		return searchCommand;
	}
	public void setSearchCommand(int searchCommand) {
		this.searchCommand = searchCommand;
	}
	public int getSearchPower() {
		return searchPower;
	}
	public void setSearchPower(int searchPower) {
		this.searchPower = searchPower;
	}
	public int getSearchBrain() {
		return searchBrain;
	}
	public void setSearchBrain(int searchBrain) {
		this.searchBrain = searchBrain;
	}
	public int getSearchPolitic() {
		return searchPolitic;
	}
	public void setSearchPolitic(int searchPolitic) {
		this.searchPolitic = searchPolitic;
	}
}