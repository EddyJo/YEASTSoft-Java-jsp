package kr.co.javaspecialist.food.model;

public class FoodInfoVO {
		public int serialNum;
		public String foodName;
		public String goodDisease;
		public String badDisease;
		
		public int getSerialNum() {
			return serialNum;
		}
		public void setSerialNum(int serialNum) {
			this.serialNum = serialNum;
		}
		public String getFoodName() {
			return foodName;
		}
		public void setFoodName(String foodName) {
			this.foodName = foodName;
		}
		public String getGoodDisease() {
			return goodDisease;
		}
		public void setGoodDisease(String goodDisease) {
			this.goodDisease = goodDisease;
		}
		public String getBadDisease() {
			return badDisease;
		}
		public void setBadDisease(String badDisease) {
			this.badDisease = badDisease;
		}
		
		@Override
		public String toString() {
			return "FoodInfoVO [serialNum=" + serialNum + ", foodName=" + foodName + ", goodDisease=" + goodDisease
					+ ", badDisease=" + badDisease + "]";
		}
	}
	

