package com.mindtree.entity;
public class Customer {
    
    private int custNo;
    private String custName;
    private String custCountry;
   // private int custSalary;
   // CustomerAddress custAddress;
    
    public int getCustNo() {
        return custNo;
    }
    public void setCustNo(int custNo) {
        this.custNo = custNo;
    }
    public String getCustName() {
        return custName;
    }
    public void setCustName(String custName) {
        this.custName = custName;
    }
    public String getCustCountry() {
        return custCountry;
    }
    public void setCustCountry(String custCountry) {
        this.custCountry = custCountry;
    }
	/*public int getCustSalary() {
		return custSalary;
	}
	public void setCustSalary(int custSalary) {
		this.custSalary = custSalary;
	}
	public CustomerAddress getCustAddress() {
		return custAddress;
	}
	public void setCustAddress(CustomerAddress custAddress) {
		this.custAddress = custAddress;
	}*/
	
}