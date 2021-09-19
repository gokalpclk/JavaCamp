package com.kodlamaio.hrms.core.utilities.resutls;

public class ErrorDataResult<T> extends DataResult<T>{
	
	public ErrorDataResult(T data, String message) {
		super(data, false, message);
		// TODO Auto-f constructor stub
	}
	
	public ErrorDataResult(T data) {
		super(data, false);
	}
	
	public ErrorDataResult(String message) {
		super(null, false, message);
		// TODO Auto-generated constructor stub
	}
	
	public ErrorDataResult() {
		super(null, false);
		// TODO Auto-generated constructor stub
	}

}
