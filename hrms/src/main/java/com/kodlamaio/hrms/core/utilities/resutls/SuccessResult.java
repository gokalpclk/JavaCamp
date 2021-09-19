package com.kodlamaio.hrms.core.utilities.resutls;

public class SuccessResult extends Result{
	public SuccessResult() {
		super(true);
	}
	
public SuccessResult(String message) {
		super(true, message);
	}
	
}
