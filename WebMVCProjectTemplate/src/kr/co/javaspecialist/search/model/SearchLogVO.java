package kr.co.javaspecialist.search.model;

public class SearchLogVO {
	private int serialNum;
	private String userId;
	private String medKey;
	private String foodKey;
	private String searchDate;
	public int getSerialNum() {
		return serialNum;
	}
	public void setSerialNum(int serialNum) {
		this.serialNum = serialNum;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	public String getMedKey() {
		return medKey;
	}
	public void setMedKey(String medKey) {
		this.medKey = medKey;
	}
	public String getFoodKey() {
		return foodKey;
	}
	public void setFoodKey(String foodKey) {
		this.foodKey = foodKey;
	}
	public String getSearchDate() {
		return searchDate;
	}
	public void setSearchDate(String searchDate) {
		this.searchDate = searchDate;
	}
	@Override
	public String toString() {
		return "SearchLogVO [serialNum=" + serialNum + ", userId=" + userId + ", medKey=" + medKey + ", foodKey="
				+ foodKey + ", searchDate=" + searchDate + "]";
	}
}
