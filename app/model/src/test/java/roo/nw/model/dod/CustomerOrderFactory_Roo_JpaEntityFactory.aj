// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package roo.nw.model.dod;

import java.math.BigDecimal;
import java.util.Calendar;
import java.util.GregorianCalendar;
import roo.nw.model.City;
import roo.nw.model.Country;
import roo.nw.model.Customer;
import roo.nw.model.CustomerOrder;
import roo.nw.model.Employee;
import roo.nw.model.Region;
import roo.nw.model.Shipper;
import roo.nw.model.Status;
import roo.nw.model.dod.CustomerOrderFactory;

privileged aspect CustomerOrderFactory_Roo_JpaEntityFactory {
    
    /**
     * Creates a new {@link CustomerOrder} with the given index.
     * 
     * @param index position of the CustomerOrder
     * @return a new transient CustomerOrder
     */
    public CustomerOrder CustomerOrderFactory.create(int index) {
        CustomerOrder obj = new CustomerOrder();
        setCity(obj, index);
        setCloseDate(obj, index);
        setCountry(obj, index);
        setCustomer(obj, index);
        setEmployee(obj, index);
        setFreight(obj, index);
        setInvoiceDate(obj, index);
        setOrderDate(obj, index);
        setRegion(obj, index);
        setRequiredDate(obj, index);
        setShipAddress(obj, index);
        setShipName(obj, index);
        setShipPhone(obj, index);
        setShipPostalCode(obj, index);
        setShippedDate(obj, index);
        setShipper(obj, index);
        setStatus(obj, index);
        return obj;
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setCity(CustomerOrder obj, int index) {
        City city = null;
        obj.setCity(city);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setCloseDate(CustomerOrder obj, int index) {
        Calendar closeDate = Calendar.getInstance();
        obj.setCloseDate(closeDate);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setCountry(CustomerOrder obj, int index) {
        Country country = null;
        obj.setCountry(country);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setCustomer(CustomerOrder obj, int index) {
        Customer customer = null;
        obj.setCustomer(customer);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setEmployee(CustomerOrder obj, int index) {
        Employee employee = null;
        obj.setEmployee(employee);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setFreight(CustomerOrder obj, int index) {
        BigDecimal freight = BigDecimal.valueOf(index);
        obj.setFreight(freight);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setInvoiceDate(CustomerOrder obj, int index) {
        Calendar invoiceDate = Calendar.getInstance();
        obj.setInvoiceDate(invoiceDate);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setOrderDate(CustomerOrder obj, int index) {
        Calendar orderDate = Calendar.getInstance();
        obj.setOrderDate(orderDate);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setRegion(CustomerOrder obj, int index) {
        Region region = null;
        obj.setRegion(region);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setRequiredDate(CustomerOrder obj, int index) {
        Calendar requiredDate = Calendar.getInstance();
        obj.setRequiredDate(requiredDate);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setShipAddress(CustomerOrder obj, int index) {
        String shipAddress = "shipAddress_" + index;
        obj.setShipAddress(shipAddress);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setShipName(CustomerOrder obj, int index) {
        String shipName = "shipName_" + index;
        obj.setShipName(shipName);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setShipPhone(CustomerOrder obj, int index) {
        String shipPhone = "shipPhone_" + index;
        obj.setShipPhone(shipPhone);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setShipPostalCode(CustomerOrder obj, int index) {
        String shipPostalCode = "shipPostalCode_" + index;
        obj.setShipPostalCode(shipPostalCode);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setShippedDate(CustomerOrder obj, int index) {
        Calendar shippedDate = Calendar.getInstance();
        obj.setShippedDate(shippedDate);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setShipper(CustomerOrder obj, int index) {
        Shipper shipper = null;
        obj.setShipper(shipper);
    }
    
    /**
     * TODO Auto-generated method documentation
     * 
     * @param obj
     * @param index
     */
    public void CustomerOrderFactory.setStatus(CustomerOrder obj, int index) {
        Status status = Status.class.getEnumConstants()[0];
        obj.setStatus(status);
    }
    
}
