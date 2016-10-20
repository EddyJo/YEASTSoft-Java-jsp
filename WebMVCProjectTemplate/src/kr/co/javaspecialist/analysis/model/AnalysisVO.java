package kr.co.javaspecialist.analysis.model;

import java.util.ArrayList;

public class AnalysisVO {
	private String med_name;
	private String food_name;
	private int score;
	private ArrayList<String> goodfoods;
	public String getMed_name() {
		return med_name;
	}
	public void setMed_name(String med_name) {
		this.med_name = med_name;
	}
	public String getFood_name() {
		return food_name;
	}
	public void setFood_name(String food_name) {
		this.food_name = food_name;
	}
	public int getScore() {
		return score;
	}
	public void setScore(int score) {
		this.score = score;
	}
	public ArrayList<String> getGoodfoods() {
		return goodfoods;
	}
	public void setGoodfoods(ArrayList<String> goodfoods) {
		this.goodfoods = goodfoods;
	}
	public ArrayList<String> getBadfoods() {
		return badfoods;
	}
	public void setBadfoods(ArrayList<String> badfoods) {
		this.badfoods = badfoods;
	}
	private ArrayList<String> badfoods;
}
