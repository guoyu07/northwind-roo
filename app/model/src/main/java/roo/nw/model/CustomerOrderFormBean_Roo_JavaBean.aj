// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.model;

import java.math.BigDecimal;
import java.util.Calendar;
import roo.nw.model.CustomerOrderFormBean;
import roo.nw.model.Status;

privileged aspect CustomerOrderFormBean_Roo_JavaBean {
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long CustomerOrderFormBean.getOrderId() {
        return this.orderId;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderId
     */
    public void CustomerOrderFormBean.setOrderId(Long orderId) {
        this.orderId = orderId;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long CustomerOrderFormBean.getEmployeeId() {
        return this.employeeId;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employeeId
     */
    public void CustomerOrderFormBean.setEmployeeId(Long employeeId) {
        this.employeeId = employeeId;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Long
     */
    public Long CustomerOrderFormBean.getCustomerId() {
        return this.customerId;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerId
     */
    public void CustomerOrderFormBean.setCustomerId(Long customerId) {
        this.customerId = customerId;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar CustomerOrderFormBean.getOrderDate() {
        return this.orderDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param orderDate
     */
    public void CustomerOrderFormBean.setOrderDate(Calendar orderDate) {
        this.orderDate = orderDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String CustomerOrderFormBean.getEmployeeName() {
        return this.employeeName;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param employeeName
     */
    public void CustomerOrderFormBean.setEmployeeName(String employeeName) {
        this.employeeName = employeeName;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return String
     */
    public String CustomerOrderFormBean.getCustomerCompanyName() {
        return this.customerCompanyName;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param customerCompanyName
     */
    public void CustomerOrderFormBean.setCustomerCompanyName(String customerCompanyName) {
        this.customerCompanyName = customerCompanyName;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Status
     */
    public Status CustomerOrderFormBean.getStatus() {
        return this.status;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param status
     */
    public void CustomerOrderFormBean.setStatus(Status status) {
        this.status = status;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return Calendar
     */
    public Calendar CustomerOrderFormBean.getShippedDate() {
        return this.shippedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param shippedDate
     */
    public void CustomerOrderFormBean.setShippedDate(Calendar shippedDate) {
        this.shippedDate = shippedDate;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @return BigDecimal
     */
    public BigDecimal CustomerOrderFormBean.getFreight() {
        return this.freight;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param freight
     */
    public void CustomerOrderFormBean.setFreight(BigDecimal freight) {
        this.freight = freight;
    }
    
}
