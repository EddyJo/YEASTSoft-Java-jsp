package kr.co.javaspecialist.analysis.model;

public class AnalysisVO {
	private String med_name;
	private String food_name;
	private int score;
	private String med_ingredient;
	private String med_group;
	private String disease;
	private String relation;
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
	public String getMed_ingredient() {
		return med_ingredient;
	}
	public void setMed_ingredient(String med_ingredient) {
		this.med_ingredient = med_ingredient;
	}
	public String getMed_group() {
		return med_group;
	}
	public void setMed_group(String med_group) {
		this.med_group = med_group;
	}
	public String getDisease() {
		return disease;
	}
	public void setDisease(String disease) {
		this.disease = disease;
	}
	public String getRelation() {
		return relation;
	}
	public void setRelation(String relation) {
		this.relation = relation;
	}
	@Override
	public String toString() {
		return "AnalysisVO [med_name=" + med_name + ", food_name=" + food_name + ", score=" + score
				+ ", med_ingredient=" + med_ingredient + ", med_group=" + med_group + ", disease=" + disease
				+ ", relation=" + relation + "]";
	}
	@Override


}
