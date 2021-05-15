package hw2.Entities;

import hw2.Abstract.Entity;

public class Customer implements Entity {
	private int id;
	private String fistName;
	private String LastName;
	private int dateOfBirth;
	private String nationalityId;

	public Customer() {

	}

	public Customer(int id, String fistName, String lastName, int dateOfBirth, String nationalityId) {
		super();
		this.id = id;
		this.fistName = fistName;
		LastName = lastName;
		this.dateOfBirth = dateOfBirth;
		this.nationalityId = nationalityId;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getFistName() {
		return fistName;
	}

	public void setFistName(String fistName) {
		this.fistName = fistName;
	}

	public String getLastName() {
		return LastName;
	}

	public void setLastName(String lastName) {
		LastName = lastName;
	}

	public int getDateOfBirth() {
		return dateOfBirth;
	}

	public void setDateOfBirth(int dateOfBirth) {
		this.dateOfBirth = dateOfBirth;
	}

	public String getNationalityId() {
		return nationalityId;
	}

	public void setNationalityId(String nationalityId) {
		this.nationalityId = nationalityId;
	}

}
