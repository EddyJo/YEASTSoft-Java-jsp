package kr.co.javaspecialist.foodDB.model;

public class FoodInfoVO {
		public int food_id;
		public String food_name;
		public String food_ingredient;
		public int getFood_id() {
			return food_id;
		}
		public void setFood_id(int food_id) {
			this.food_id = food_id;
		}
		public String getFood_name() {
			return food_name;
		}
		public void setFood_name(String food_name) {
			this.food_name = food_name;
		}
		public String getFood_ingredient() {
			return food_ingredient;
		}
		public void setFood_ingredient(String food_ingredient) {
			this.food_ingredient = food_ingredient;
		}
		@Override
		public String toString() {
			return "FoodInfoVO [food_id=" + food_id + ", food_name=" + food_name + ", food_ingredient="
					+ food_ingredient + "]";
		}
		
		
}
