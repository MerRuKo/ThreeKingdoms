package tk.dto.general;

public class SearchGeneralDTO {
	
	private int generalno;
	private String name;
	private String nickname;
	private String kingdoms;
	private String belongs;
	private int command;
	private int power;
	private int brain;
	private int politic;
	private String story;
	
	public int getGeneralno() {
		return generalno;
	}
	public void setGeneralno(int generalno) {
		this.generalno = generalno;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getKingdoms() {
		return kingdoms;
	}
	public void setKingdoms(String kingdoms) {
		this.kingdoms = kingdoms;
	}
	public String getBelongs() {
		return belongs;
	}
	public void setBelongs(String belongs) {
		this.belongs = belongs;
	}
	public int getCommand() {
		return command;
	}
	public void setCommand(int command) {
		this.command = command;
	}
	public int getPower() {
		return power;
	}
	public void setPower(int power) {
		this.power = power;
	}
	public int getBrain() {
		return brain;
	}
	public void setBrain(int brain) {
		this.brain = brain;
	}
	public int getPolitic() {
		return politic;
	}
	public void setPolitic(int politic) {
		this.politic = politic;
	}
	public String getStory() {
		return story;
	}
	public void setStory(String story) {
		this.story = story;
	}
	
	@Override
	public String toString() {
		return " SearchGeneralDTO [번호=" + generalno + ", 이름=" + name + ", 자=" + nickname + ", 국가="
				+ kingdoms + ", 소속=" + belongs + ", 통솔=" + command + ", 무력=" + power + ", 지력=" + brain
				+ ", 정치=" + politic + ", 열전=" + story + "]";
	}
	
}