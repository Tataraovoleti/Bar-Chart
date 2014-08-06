/**
 * Copyright 2014@ fazalcode
 * All Rights Reserved to fazalcode
 */

/**
 * @author Tatarao voleti
 * @date   05-Feb-2014
 *
 */
public class EffortBean {
	
	public String efforId;
	public String effortCatName;
	public String effortplan;
	public String efforactual;
	
	public String getEfforId() {
		return efforId;
	}
	public void setEfforId(String efforId) {
		this.efforId = efforId;
	}
	public String getEffortCatName() {
		return effortCatName;
	}
	public void setEffortCatName(String effortCatName) {
		this.effortCatName = effortCatName;
	}
	public String getEffortplan() {
		return effortplan;
	}
	public void setEffortplan(String effortplan) {
		this.effortplan = effortplan;
	}
	public String getEfforactual() {
		return efforactual;
	}
	public void setEfforactual(String efforactual) {
		this.efforactual = efforactual;
	}
	
	@Override
	public String toString() {
		return "EffortBean [efforId=" + efforId + ", effortCatName="
				+ effortCatName + ", effortplan=" + effortplan
				+ ", efforactual=" + efforactual + "]";
	}
}
