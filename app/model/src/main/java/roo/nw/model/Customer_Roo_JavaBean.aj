// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.model;

import java.util.Set;
import roo.nw.model.Customer;
import roo.nw.model.CustomerOrder;

privileged aspect Customer_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Customer.getCompanyName() {
        return this.companyName;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param companyName
     */
    public void Customer.setCompanyName(String companyName) {
        this.companyName = companyName;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Customer.getContactName() {
        return this.contactName;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contactName
     */
    public void Customer.setContactName(String contactName) {
        this.contactName = contactName;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Customer.getContactTitle() {
        return this.contactTitle;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param contactTitle
     */
    public void Customer.setContactTitle(String contactTitle) {
        this.contactTitle = contactTitle;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Customer.getFax() {
        return this.fax;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param fax
     */
    public void Customer.setFax(String fax) {
        this.fax = fax;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String Customer.getEmail() {
        return this.email;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param email
     */
    public void Customer.setEmail(String email) {
        this.email = email;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Set
     */
    public Set<CustomerOrder> Customer.getCustomerOrders() {
        return this.customerOrders;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerOrders
     */
    public void Customer.setCustomerOrders(Set<CustomerOrder> customerOrders) {
        this.customerOrders = customerOrders;
    }
    
}
