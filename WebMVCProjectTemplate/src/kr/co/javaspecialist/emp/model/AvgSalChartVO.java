package kr.co.javaspecialist.emp.model;

public class AvgSalChartVO {
	private int deptno;
	private double avgSal;
	private double maxSal;
	private int dashLengthLine;
	private int dashLengthColumn;
	private double alpha = 1;
	private String additional;
	
	public int getDeptno() {
		return deptno;
	}
	public void setDeptno(int deptno) {
		this.deptno = deptno;
	}
	public double getAvgSal() {
		return avgSal;
	}
	public void setAvgSal(double avgSal) {
		this.avgSal = avgSal;
	}
	public double getMaxSal() {
		return maxSal;
	}
	public void setMaxSal(double maxSal) {
		this.maxSal = maxSal;
	}
	public int getDashLengthColumn() {
		return dashLengthColumn;
	}
	public void setDashLengthColumn(int dashLengthColumn) {
		this.dashLengthColumn = dashLengthColumn;
	}
	public double getAlpha() {
		return alpha;
	}
	public void setAlpha(double alpha) {
		this.alpha = alpha;
	}
	public String getAdditional() {
		return additional;
	}
	public void setAdditional(String additional) {
		this.additional = additional;
	}
	public int getDashLengthLine() {
		return dashLengthLine;
	}
	public void setDashLengthLine(int dashLengthLine) {
		this.dashLengthLine = dashLengthLine;
	}
	
}
